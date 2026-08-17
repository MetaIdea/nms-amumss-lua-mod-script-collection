-- Corvette Planter Harvest All
-- Adds a "Harvest All Plants" interaction to the corvette wall planter modules.
--
-- ============================================================
--  TUNING
-- ============================================================

local POS_X = -0.00   -- side to side across the module
local POS_Y =  0.32   -- height (lowering this drops it toward the floor)
local POS_Z =  2.00   -- depth (out from / back toward the wall)

-- HARVEST_RADIUS is NOT used by this script -- the value actually lives in
-- PLANTER_HARVEST.INTERACTION.ENTITY.MXML, in the GcHarvestPlantAction block:
--     <Property name="Radius" value="3.750000" />
-- This constant is kept here as the documented source of truth. If you change
-- it, change that line to match.
local HARVEST_RADIUS = 3.075

-- Why 3.75, and why the position above:
-- The sphere is centred on the interaction locator, and the prompt renders at
-- that same point -- they cannot be separated (tested: an INTERACT locator with
-- its own transform, as a child and as a sibling, is ignored for positioning).
-- So POS_* sets both. Pushing it slightly off the wall lets a small radius
-- reach the module opposite while dropping the ones to either side.
--
-- Measured in game: 8 plants consistently on the main test ship, 8-10 across
-- other builds and themes. That is in the same range as the vanilla biodome
-- harvest-all, which uses radius 6 on a smaller structure. There is no vanilla
-- precedent for a whole-ship or whole-base sweep, so this stays local.
--
-- Raising it widens the catch quickly. Note that GcHarvestPlantAction has no
-- scoping beyond the radius, so a large value parked at a base will also pull
-- up ground crops, and on the Anomaly it will reach into other players' ships.
--
-- AXES: TransX = side to side, TransY = HEIGHT, TransZ = depth.
-- Confirmed in game: lowering POS_Y drops the prompt toward the floor.
-- Module centre on X is 0.

-- ============================================================
--  STRUCTURE (do not change without testing)
-- ============================================================
--
-- The injected node needs BOTH children to work:
--   COLLISION sphere  -- gives the interaction a volume
--   INTERACT locator  -- required for the prompt to track the attachment
--                        locator at all. NameHash 3698755080 is the real hash
--                        of the string "INTERACT" and the engine matches on it.
--                        Its own transform is IGNORED -- it acts as an enable
--                        flag, not a position. Without it the prompt renders at
--                        a fixed anchor and no transform change moves it.
--
-- Targets the three EW planter variants. The NS_A/B/C planter scenes carry
-- hull materials only, no soil or plant geometry, so they are not targeted.
--
-- Pairs with PLANTER_HARVEST.INTERACTION.ENTITY.MXML in GlobalMEFTI\CUSTOM\

local function HarvestNode(hashLocator, hashCollision)
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
          <Property name="Value" value="CUSTOM\PLANTER_HARVEST.INTERACTION.ENTITY.MBIN" />
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
              <Property name="Value" value="0.226539" />
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
]], hashLocator, POS_X, POS_Y, POS_Z, hashCollision)
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

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Jank7.Corvette_Harvest_All_3.1u_v1.0",
["MOD_DESCRIPTION"]         = "Adds a harvest all interaction to the corvette wall planter modules.",
["MOD_AUTHOR"]              = "Jank7s",
["NMS_VERSION"]             = "6.45",
["AMUMSS_SUPPRESS_MSG"]     = "MULTIPLE_STATEMENTS,MIXED_TABLE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                PlanterTarget("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_A_PLANTER0.SCENE.MBIN", HarvestNode(3701234598, 3801234598)),
                PlanterTarget("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_B_PLANTER0.SCENE.MBIN", HarvestNode(3701234599, 3801234599)),
                PlanterTarget("MODELS\COMMON\SPACECRAFT\BIGGS\MODULES\PARTS\WALL_EW_C_PLANTER0.SCENE.MBIN", HarvestNode(3701234600, 3801234600)),
            }
        }
    }
}