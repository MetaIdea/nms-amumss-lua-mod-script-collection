--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak AND _FROZEN_WORLDS.pak into your ModScript folder when you run this script

BIOMES_TO_ADD = {"Lush","Toxic","Radioactive"}

function get_object_sections(BIOMES_TO_ADD)
	string_table = {}
	for _, biome in pairs(BIOMES_TO_ADD) do
		table.insert(string_table,[[    <Property value="GcExternalObjectFileList.xml">
      <Property name="Id" value="DRIP_FX" />
      <Property name="OnlyOnExtremeWeather" value="False" />
      <Property name="OnlyOnExtremeSentinels" value="False" />
      <Property name="OnlyOnDeepWater" value="False" />
      <Property name="NotOnExtremePlanets" value="False" />
      <Property name="NotOnStartPlanets" value="False" />
      <Property name="NotOnWeirdPlanets" value="False" />
      <Property name="NotOnDeadPlanets" value="False" />
      <Property name="OnlyOnBiome" value="GcBiomeType.xml">
        <Property name="Biome" value="]]..biome..[[" />
      </Property>
      <Property name="ProbabilityOfBeingActive" value="1" />
      <Property name="MinFilesToChoose" value="1" />
      <Property name="MaxFilesToChoose" value="1" />
      <Property name="ExternalObjectFiles">
        <Property value="GcExternalObjectListOptions.xml">
          <Property name="Name" value="DRIPS" />
          <Property name="ResourceHint" value="" />
          <Property name="ResourceHintIcon" value="" />
          <Property name="Probability" value="1" />
          <Property name="TileType" value="GcTerrainTileType.xml">
            <Property name="TileType" value="Mountain" />
          </Property>
          <Property name="AllowLimiting" value="True" />
          <Property name="ChooseUsingLifeLevel" value="False" />
          <Property name="Options">
            <Property value="NMSString0x80.xml">
              <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/DRIPVFX.MBIN" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]])
	end
	return table.concat(string_table)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds a water dripping effect to overhangs on extreme humid worlds (Lush, Toxic, Radioactive)",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["ADD_FILES"] = {
	{
		["FILE_DESTINATION"] 		= "OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/DRIPVFX.EXML",
		["FILE_CONTENT"] 	= [[<?xml version="1.0" encoding="utf-8"?>
<!--File created using MBINCompiler version (3.51.0)-->
<Data template="GcExternalObjectList">
  <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    <Property name="Creatures" />
    <Property name="DistantObjects" />
    <Property name="Landmarks" />
    <Property name="Objects">
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Single" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/CAVEDRIPVFX.SCENE.MBIN" />
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers" />
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="CAVEGRASSCLUMP" />
        <Property name="PlacementSeed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="120" />
        <Property name="MaxAngle" value="360" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="1" />
        <Property name="MaxScale" value="1" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="0" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="True" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="0.2" />
          <Property name="FlatDensity" value="0.5" />
          <Property name="SlopeDensity" value="0" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="20" />
            <Property value="60" />
            <Property value="150" />
            <Property value="500" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="0.2" />
            <Property name="FlatDensity" value="0.03" />
            <Property name="SlopeDensity" value="0.03" />
            <Property name="SlopeMultiplier" value="1" />
            <Property name="MaxRegionRadius" value="2" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="60" />
            <Property name="FadeOutEndDistance" value="70" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="20" />
              <Property value="60" />
              <Property value="150" />
              <Property value="500" />
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
    <Property name="DetailObjects" />
    <Property name="SelectableObjects" />
  </Property>
</Data>]]
	}
  },
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = {
				{--For testing, force the Barren infested biome to spawn
					["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"},
					["EXML_CHANGE_TABLE"]  ={
						{
							["PRECEDING_KEY_WORDS"] = {"OptionalExternalObjectLists"},
							["ADD"] = get_object_sections(BIOMES_TO_ADD)
						}
					}
				},
			}
		}
	},
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE