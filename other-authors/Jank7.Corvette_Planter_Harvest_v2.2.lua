-- ============================================================================
--  Corvette Planter Harvest All  --  v2.2
--  Author: Jank7s
--
--  Adds a "Harvest All Plants" control to the corvette wall planter modules.
--
--  v2 design: the button and the harvest sweep are TWO SEPARATE ENTITIES on
--  two separate locators. Pressing the button fires a broadcast that runs the
--  harvest on the other entity, so the prompt position and the harvest centre
--  are completely independent. Move one without moving the other.
--
--  How it works (confirmed in game):
--    Entity A (button)  -- interaction only, no harvest logic.
--                          Fires GcGoToStateAction, Broadcast = true,
--                          BroadcastLevel = "LocalModel".
--    Entity B (core)    -- no interaction component, so no second prompt.
--                          Holds GcHarvestPlantAction. Sits idle in BOOT
--                          until the broadcast arrives.
--
--  BroadcastLevel matters:
--    "Scene"      = the ENTIRE corvette. Every planter fires at once. Wrong.
--    "LocalModel" = this one planter module. Correct.
--    "Local"      = the firing entity only. Used for the button's own reset.
--
--  REQUIRES two files in ModScript\GlobalMEFTI\CUSTOM\ :
--      PLANTER_BUTTON.INTERACTION.ENTITY.MXML
--      PLANTER_HARVEST_CORE.INTERACTION.ENTITY.MXML
--
--  v2.2 note: this script deliberately contains NO file I/O and no helper
--  functions beyond v1's, because v2.0/v2.1 failed to load in AMUMSS. See the
--  HARVEST RADIUS section below for the one value that is not yet driven from
--  this file.
-- ============================================================================


-- ============================================================================
--  TUNING
-- ============================================================================

-- ---- BUTTON POSITION (where the player sees and presses the prompt) --------
-- Purely cosmetic. Has NO effect on which plants get harvested.
-- AXES: X = side to side (module centre is 0), Y = height, Z = depth out from
--       the wall. The planter body ends at Z = 1.841, so a button below about
--       Z = 1.85 near centre-X ends up buried inside solid geometry.
local BTN_X   =  0.00
local BTN_Y   =  0.75
local BTN_Z   =  1.60

-- How close the player must be for the prompt to appear.
-- Nothing to do with the harvest sweep.
local BTN_COLLISION_RADIUS = 0.70

-- ---- HARVEST CORE POSITION (centre of the harvest sphere) -----------------
-- This is what decides which plants get picked. Nothing renders here.
-- This module's pods sit at (+/-1.0, 1.5 .. 2.27, 1.272), so keeping the core
-- level with them keeps the required radius small and the spill low.
local CORE_X  =  0.00
local CORE_Y  =  0.50
local CORE_Z  =  3.00

-- ---- HARVEST RADIUS -------------------------------------------------------
--
--   >>> THIS VALUE IS NOT READ FROM THIS FILE. <<<
--
-- It lives in PLANTER_HARVEST_CORE.INTERACTION.ENTITY.MXML, in the
-- GcHarvestPlantAction block:
--
--     <Property name="Radius" value="2.000000" />
--
-- Change it there and mirror it here. (v2.0/v2.1 generated that file from
-- this constant, but those builds would not load -- see header.)
--
-- Measured distances from the core position above:
--     to this module's pods ......... 1.07
--     to the opposite wall's pods ... 3.62   (assumes a 6-deep hab)
-- So anything from roughly 1.2 to 3.0 harvests this module only.
--
-- GcHarvestPlantAction has NO scoping other than this radius: a large value
-- parked at a base will also pull up ground crops, and on the Anomaly it can
-- reach into other players' ships. Keep it local.
local HARVEST_RADIUS = 2.50

-- ---- NAMEHASH -------------------------------------------------------------
-- Placeholder values, as in v1. Each scene gets its own derived set.
-- NameHash 3698755080 below is the REAL hash of "INTERACT" -- the engine
-- matches on it and the child INTERACT locator acts as an enable flag for
-- prompt tracking. Its own transform is ignored. Do not change that one.
local NAMEHASH_BASE = 3701234598

-- ============================================================================
--  END OF TUNING
-- ============================================================================


-- Both locators are emitted in ONE string so that a second ADD cannot target
-- a section the first ADD just inserted.
local function HarvestNodes(idx)
    return string.format([[
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="HarvestInteract" />
      <Property name="NameHash" value="%d" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="%.6f" />
        <Property name="TransY" value="%.6f" />
        <Property name="TransZ" value="%.6f" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="CUSTOM\PLANTER_BUTTON.INTERACTION.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children">
        <Property name="Children" value="TkSceneNodeData" _index="0">
          <Property name="Name" value="HarvestInteractCollision" />
          <Property name="NameHash" value="%d" />
          <Property name="Type" value="COLLISION" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes">
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
              <Property name="Name" value="NAVIGATION" />
              <Property name="Value" value="FALSE" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="1">
              <Property name="Name" value="TYPE" />
              <Property name="Value" value="Sphere" />
            </Property>
            <Property name="Attributes" value="TkSceneNodeAttributeData" _index="2">
              <Property name="Name" value="RADIUS" />
              <Property name="Value" value="%.6f" />
            </Property>
          </Property>
          <Property name="Children" />
        </Property>
        <Property name="Children" value="TkSceneNodeData" _index="1">
          <Property name="Name" value="INTERACT" />
          <Property name="NameHash" value="3698755080" />
          <Property name="Type" value="LOCATOR" />
          <Property name="Transform" value="TkTransformData">
            <Property name="TransX" value="0.000000" />
            <Property name="TransY" value="0.000000" />
            <Property name="TransZ" value="0.000000" />
            <Property name="RotX" value="0.000000" />
            <Property name="RotY" value="0.000000" />
            <Property name="RotZ" value="0.000000" />
            <Property name="ScaleX" value="1.000000" />
            <Property name="ScaleY" value="1.000000" />
            <Property name="ScaleZ" value="1.000000" />
          </Property>
          <Property name="PlatformExclusion" value="0" />
          <Property name="Attributes" />
          <Property name="Children" />
        </Property>
      </Property>
    </Property>
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="HarvestCore" />
      <Property name="NameHash" value="%d" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="%.6f" />
        <Property name="TransY" value="%.6f" />
        <Property name="TransZ" value="%.6f" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData" _index="0">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="CUSTOM\PLANTER_HARVEST_CORE.INTERACTION.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
]], NAMEHASH_BASE + idx,
    BTN_X, BTN_Y, BTN_Z,
    NAMEHASH_BASE + 100 + idx,
    BTN_COLLISION_RADIUS,
    NAMEHASH_BASE + 200 + idx,
    CORE_X, CORE_Y, CORE_Z)
end


local function PlanterTarget(path, node)
    return {
        ["MBIN_FILE_SOURCE"]    = path,
        ["MXML_CHANGE_TABLE"]   =
        {
            {
                ["PRECEDING_KEY_WORDS"] = "Children",
                ["ADD"] = node,
            },
        }
    }
end


-- Targets the three EW planter variants. The NS_A/B/C planter scenes carry
-- hull materials only, no soil or plant geometry, so they are not targeted.
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Jank7.Corvette_Planter_Harvest_v2.2",
["MOD_DESCRIPTION"]         = "Adds a harvest all control to the corvette wall planter modules. Button position and harvest centre are independently adjustable.",
["MOD_AUTHOR"]              = "Jank7s",
["LUA_AUTHOR"]              = "Jank7s",
["NMS_VERSION"]             = "6.45",
["AMUMSS_SUPPRESS_MSG"]     = "MULTIPLE_STATEMENTS,MIXED_TABLE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                PlanterTarget([[MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_PLANTER0.SCENE.MBIN]], HarvestNodes(1)),
                PlanterTarget([[MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_PLANTER0.SCENE.MBIN]], HarvestNodes(2)),
                PlanterTarget([[MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_PLANTER0.SCENE.MBIN]], HarvestNodes(3)),
            }
        }
    }
}