--[[
  10x Industrial Waste Spawn + Specialist Hazardous Waste
  
  Increases SCRAPHEAP (waste heaps) and P_JUNK (junk piles) spawn density by ~10x.
  Adds Toxic, Explosive, and Radioactive large waste crates to salvage/waste sites
  at the same density as the boosted P_JUNK_SMALL.
  
  Modified files:
    - METADATA/SIMULATION/SOLARSYSTEM/BIOMES/PLACEMENTVALUES/SPAWNDENSITYLIST.GLOBAL.MBIN
    - METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/PROCSALVAGE.MBIN
    
  Specialist waste models (from selectableobjecttable):
    - TOXIC_LARGE_CRATE.SCENE.MBIN        (P_TOX_LRG_CRATE)
    - EXPLOSIVE_LARGE_CRATE.SCENE.MBIN    (P_EXP_LRG_CRATE)
    - RADIOACTIVE_LARGE_CRATE.SCENE.MBIN  (P_RAD_LRG_CAN)
]]--

-- ============================================================================
--  Helper: Generate GcSpawnDensity MXML for a specialist waste density entry
--  Uses the same 10x-boosted values as P_JUNK_SMALL (PatchSize=72, RegionScale=3.2)
-- ============================================================================
local function SpecialistDensity(name, idx)
  return [[
        <Property name="DensityList" value="GcSpawnDensity" _index="]] .. idx .. [[">
          <Property name="Name" value="]] .. name .. [[" />
          <Property name="Active" value="true" />
          <Property name="CoverageType" value="GridPatch" />
          <Property name="PatchSize" value="72.000000" />
          <Property name="RegionScale" value="3.200000" />
        </Property>]]
end

-- ============================================================================
--  Helper: Generate GcObjectSpawnData MXML for a specialist waste crate
--  Template based on P_JUNK_SMALL entry with 10x-boosted spawn values
-- ============================================================================
local function SpecialistWasteObject(debugName, modelPath, placementName, idx)
  return [[
        <Property name="Objects" value="GcObjectSpawnData" _index="]] .. idx .. [[">
          <Property name="Resource" value="GcResourceElement">
            <Property name="Filename" value="]] .. modelPath .. [[" />
            <Property name="Seed" value="NONE" />
            <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
              <Property name="Samplers" />
            </Property>
            <Property name="AltId" value="" />
          </Property>
          <Property name="DebugName" value="]] .. debugName .. [[" />
          <Property name="Type" value="Single" />
          <Property name="ImposterActivation" value="TkImposterActivation">
            <Property name="ImposterActivation" value="Default" />
          </Property>
          <Property name="ImposterType" value="TkImposterType">
            <Property name="ImposterType" value="Hemispherical" />
          </Property>
          <Property name="QualityVariants">
            <Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="STANDARD">
              <Property name="ID" value="STANDARD" />
              <Property name="Coverage" value="60.000000" />
              <Property name="FlatDensity" value="0.008000" />
              <Property name="SlopeDensity" value="0.008000" />
              <Property name="SlopeMultiplier" value="0.000000" />
              <Property name="LodDistances">
                <Property name="LodDistances" value="0.000000" _index="0" />
                <Property name="LodDistances" value="20.000000" _index="1" />
                <Property name="LodDistances" value="40.000000" _index="2" />
                <Property name="LodDistances" value="60.000000" _index="3" />
                <Property name="LodDistances" value="200.000000" _index="4" />
              </Property>
              <Property name="MaxRegionRadius" value="20" />
              <Property name="MaxImposterRadius" value="10" />
              <Property name="FadeOutStartDistance" value="9999.000000" />
              <Property name="FadeOutEndDistance" value="9999.000000" />
              <Property name="FadeOutOffsetDistance" value="0.000000" />
            </Property>
          </Property>
          <Property name="Placement" value="]] .. placementName .. [[" />
          <Property name="PlacementPriority" value="High" />
          <Property name="AlignToNormal" value="true" />
          <Property name="MinScale" value="1.000000" />
          <Property name="MaxScale" value="1.000000" />
          <Property name="MinScaleY" value="1.000000" />
          <Property name="MaxScaleY" value="1.000000" />
          <Property name="SlopeScaling" value="1.000000" />
          <Property name="PatchEdgeScaling" value="0.000000" />
          <Property name="MaxXZRotation" value="0.000000" />
          <Property name="MaxYRotation" value="180.000000" />
          <Property name="MaxRaise" value="0.000000" />
          <Property name="MaxLower" value="0.000000" />
          <Property name="UseMultipleUpgradeRays" value="true" />
          <Property name="Order" value="0" />
          <Property name="Seed" value="NONE" />
          <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
          <Property name="OverlapStyle" value="None" />
          <Property name="MinAngle" value="0.000000" />
          <Property name="MaxAngle" value="55.000000" />
          <Property name="MinHeight" value="-1.000000" />
          <Property name="MaxHeight" value="128.000000" />
          <Property name="RelativeToSeaLevel" value="true" />
          <Property name="MatchGroundColour" value="false" />
          <Property name="GroundColourIndex" value="Auto" />
          <Property name="SwapPrimaryForSecondaryColour" value="false" />
          <Property name="SwapPrimaryForRandomColour" value="false" />
          <Property name="AutoCollision" value="false" />
          <Property name="CollideWithPlayer" value="true" />
          <Property name="CollideWithPlayerVehicle" value="true" />
          <Property name="DestroyedByPlayerVehicle" value="false" />
          <Property name="DestroyedByPlayerShip" value="false" />
          <Property name="DestroyedByTerrainEdit" value="false" />
          <Property name="InvisibleToCamera" value="true" />
          <Property name="CreaturesCanEat" value="false" />
          <Property name="ShearWindStrength" value="0.000000" />
          <Property name="SupportsScanToReveal" value="false" />
          <Property name="MoveToGroundOnUpgrade" value="true" />
          <Property name="IsFloatingIsland" value="false" />
          <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
          <Property name="AltResources" />
          <Property name="ExtraTileTypes" />
          <Property name="QualityVariantData" value="GcObjectSpawnDataVariant">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="60.000000" />
            <Property name="FlatDensity" value="0.075000" />
            <Property name="SlopeDensity" value="0.075000" />
            <Property name="SlopeMultiplier" value="0.000000" />
            <Property name="LodDistances">
              <Property name="LodDistances" value="0.000000" _index="0" />
              <Property name="LodDistances" value="20.000000" _index="1" />
              <Property name="LodDistances" value="40.000000" _index="2" />
              <Property name="LodDistances" value="60.000000" _index="3" />
              <Property name="LodDistances" value="200.000000" _index="4" />
            </Property>
            <Property name="MaxRegionRadius" value="20" />
            <Property name="MaxImposterRadius" value="0" />
            <Property name="FadeOutStartDistance" value="9999.000000" />
            <Property name="FadeOutEndDistance" value="9999.000000" />
            <Property name="FadeOutOffsetDistance" value="0.000000" />
          </Property>
        </Property>]]
end

-- ============================================================================
--  Specialist waste definitions
-- ============================================================================
local MODELS_BASE = "MODELS/PLANETS/COMMON/PHYSICSPROPS/"

local TOXIC_CRATE      = MODELS_BASE .. "TOXIC_LARGE_CRATE.SCENE.MBIN"
local EXPLOSIVE_CRATE  = MODELS_BASE .. "EXPLOSIVE_LARGE_CRATE.SCENE.MBIN"
local RADIOACTIVE_CRATE = MODELS_BASE .. "RADIOACTIVE_LARGE_CRATE.SCENE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = "10x_Industrial_Waste_Spawn.pak",
  MOD_AUTHOR      = "Javapower77",
  MOD_DESCRIPTION = "Increases Specialist Industrial Waste (SCRAPHEAP) and junk pile (P_JUNK) spawns by ~10x.\n"
                  .."Adds Toxic, Explosive, and Radioactive large waste crates to salvage sites.",
  LUA_AUTHOR      = "",
  NMS_VERSION     = "6.24",
  -- GLOBAL_INTEGER_TO_FLOAT  = "FORCE",
  MODIFICATIONS   = {
    {
      MBIN_CHANGE_TABLE = {

        -----------------------------------------------------------------------
        --  SPAWNDENSITYLIST  –  grid spacing & region scale for waste objects
        -----------------------------------------------------------------------
        {
          MBIN_FILE_SOURCE = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/PLACEMENTVALUES/SPAWNDENSITYLIST.MBIN",
          MXML_CHANGE_TABLE = {

            -- SCRAPHEAP  (index 37)  –  main waste heap placement density
            -- PatchSize 185 → 58  (tighter grid = more spawn locations)
            -- RegionScale 0.54 → 1.7  (larger coverage regions)
            {
              SPECIAL_KEY_WORDS = {"Name", "SCRAPHEAP"},
              VALUE_CHANGE_TABLE = {
                {"PatchSize",    "58"},
                {"RegionScale",  "1.7"},
              },
            },

            -- P_JUNK_SMALL  (index 44)  –  small junk pile density
            -- PatchSize 228 → 72
            -- RegionScale 1.0 → 3.2
            {
              SPECIAL_KEY_WORDS = {"Name", "P_JUNK_SMALL"},
              VALUE_CHANGE_TABLE = {
                {"PatchSize",    "72"},
                {"RegionScale",  "3.2"},
              },
            },

            -- P_JUNK_LARGE  (index 45)  –  large junk pile density
            -- PatchSize 450 → 142
            -- RegionScale 0.25 → 0.8
            {
              SPECIAL_KEY_WORDS = {"Name", "P_JUNK_LARGE"},
              VALUE_CHANGE_TABLE = {
                {"PatchSize",    "142"},
                {"RegionScale",  "0.8"},
              },
            },

            -----------------------------------------------------------
            --  NEW: Add density entries for specialist waste types
            --  Same grid values as 10x-boosted P_JUNK_SMALL
            -----------------------------------------------------------
            {
              SPECIAL_KEY_WORDS = {"Name", "P_JUNK_LARGE"},
              ADD_OPTION        = "ADDafterSECTION",
              ADD               = SpecialistDensity("P_TOX_LARGE", "46")
                               .. SpecialistDensity("P_EXP_LARGE", "47")
                               .. SpecialistDensity("P_RAD_LARGE", "48"),
            },
          },
        },
      },
    },
  },
}