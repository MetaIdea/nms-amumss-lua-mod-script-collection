--[[
for the latest mod updates, visit: https://github.com/SunnySummit/LasagnaBiomeGeneration2

feel free to make your own changes. in order to distribute (paks or lua scripts) you must:
    1. provide full credits in a readme file included with the archive.
    2. use open (GPLv3) licensing and/or open nexus mods permissions (include these 5 points in the readme/description page).
    3. you cannot sell or profit from this mod.
    4. you cannot distribute this mod for other games or media besides No Man's Sky.
    5. don't re-upload these lua scripts verbatim, instead, link to this repo (or create a fork).
	
thank.
--]]

--[[
LUA script created using PLUMGEN: https://github.com/SunnySummit/PLUMGEN
script may include unused identifiers.
import EXML back into PLUMGEN for swift and easy editing.
--]]

--## 1a_header_reg_draw

--GCGRAPHICSGLOBALS.GLOBAL
local ForceUncachedTerrain = "True"	--fix slow terrain textures loading (default = false)
local ShadowLengthMultiplier = 3	--shadows draw distance multiplier --***needed to work

--GCENVIRONMENTGLOBALS.GLOBAL
local LODAdjustMultiplier = 2		--inconsistent results
local RegionLODRadiusAdd = 3			--increases draw distance hard-limit, value above '3' caused crash
local PlanetLODMultiplier = 3		--planet lod distance multiplier
------------------------------------------------------------------------------------------------------------------------
--Section above originally written by InsaneRuffles, modified by goosetehmoose -----------------------------------------
------------------------------------------------------------------------------------------------------------------------

local propType = ""

--This adds the exml "context" for each model, i.e. the max scale.
function AddDistantProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

propType = "Instanced"
maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

if flatDensity <= 0.08 and maxScale < 8 then
	minScale = minScale * 1.5
	maxScale = maxScale * 1.5
end

--check if 'tree' in modelPath
if string.find(string.lower(modelPath), "tree") then
	maxRotation = 5
	maxYRotation = 180
end

-- if flatDensity < 0.02 and maxScale > 8 and not string.find(string.lower(placem), "forest") then --it's a big prop, make it so it won't disappear
	-- propType = "Single"
	-- isFloatingIsland = "TRUE"
	-- maxRaise = -3
	-- maxLower = -4
	-- --flatDensity = flatDensity * 0.5 --flatDensity 2x less
-- end

local modelPathLower = string.lower(modelPath)

if ((string.find(modelPathLower, "huge") and flatDensity < 0.02) or (maxScale > 14 and flatDensity < 0.02)) and not string.find(modelPathLower, "cactus") then
	propType = "Single"
	if maxRaise < 1 then
		maxRaise = 0
		maxLower = 0
		isFloatingIsland = "FALSE"
	end
	--isFloatingIsland = "TRUE"
	--flatDensity = flatDensity * 0.5 --flatDensity 2x less
end


return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="]] .. propType .. [[" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale .. [[" />
        <Property name="MaxScale" value="]] .. maxScale .. [[" />
        <Property name="MinScaleY" value="]] .. minScaleY .. [[" />
        <Property name="MaxScaleY" value="]] .. maxScaleY .. [[" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="]] .. patchEdgeSc .. [[" />
        <Property name="MaxXZRotation" value="]] .. maxRotation .. [[" />
        <Property name="MaxYRotation" value="]] .. maxYRotation .. [[" />
        <Property name="MaxRaise" value="]] .. maxRaise .. [[" />
        <Property name="MaxLower" value="]] .. maxLower .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="]] .. creatureCanEat .. [[" />
        <Property name="ShearWindStrength" value="0" />
		<Property name="SupportsScanToReveal" value="False" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
          <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
          <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
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
        </Property>
      </Property>
]]
end


function AddLandmarkProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

propType = "Instanced"
maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

if flatDensity <= 0.08 and maxScale < 8 then
	minScale = minScale * 3
	maxScale = maxScale * 3
end

--check if 'tree' in modelPath
if string.find(string.lower(modelPath), "tree") then
	maxRotation = 5
	maxYRotation = 180
end

-- if flatDensity < 0.02 and maxScale > 8 and not string.find(string.lower(placem), "forest") then --it's a big prop, make it so it won't disappear
	-- propType = "Single"
	-- isFloatingIsland = "TRUE"
	-- maxRaise = -3
	-- maxLower = -4
	-- --flatDensity = flatDensity * 0.5 --flatDensity 2x less
-- end

-- local modelPathLower = string.lower(modelPath)

-- if ((string.find(modelPathLower, "huge") and flatDensity < 0.02) or (maxScale > 14 and flatDensity < 0.02)) and not string.find(modelPathLower, "cactus") then
	-- propType = "Single"
	-- if maxRaise < 1 then
		-- maxRaise = 0
		-- maxLower = 0
		-- isFloatingIsland = "FALSE"
	-- end
	-- --isFloatingIsland = "TRUE"
	-- --flatDensity = flatDensity * 0.5 --flatDensity 2x less
-- end


return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="]] .. propType .. [[" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath .. [[" />
          <Property name="ResHandle" value="GcResource.xml">
            <Property name="ResourceID" value="0" />
          </Property>
          <Property name="Seed" value="GcSeed.xml">
            <Property name="Seed" value="0" />
            <Property name="UseSeedValue" value="False" />
          </Property>
          <Property name="AltId" value="" />
          <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
            <Property name="Samplers">
            </Property>
          </Property>
        </Property>
        <Property name="AltResources" />
        <Property name="ExtraTileTypes" />
        <Property name="Placement" value="]] .. placem .. [[" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale .. [[" />
        <Property name="MaxScale" value="]] .. maxScale .. [[" />
        <Property name="MinScaleY" value="]] .. minScaleY .. [[" />
        <Property name="MaxScaleY" value="]] .. maxScaleY .. [[" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="]] .. patchEdgeSc .. [[" />
        <Property name="MaxXZRotation" value="]] .. maxRotation .. [[" />
        <Property name="MaxYRotation" value="]] .. maxYRotation .. [[" />
        <Property name="MaxRaise" value="]] .. maxRaise .. [[" />
        <Property name="MaxLower" value="]] .. maxLower .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="]] .. creatureCanEat .. [[" />
        <Property name="ShearWindStrength" value="0" />
		<Property name="SupportsScanToReveal" value="False" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
          <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
          <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
          <Property name="MaxRegionRadius" value="9999" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />
          <Property name="LodDistances">
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
            <Property value="0" />
          </Property>
        </Property>
        <Property name="QualityVariants">
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="STANDARD" />
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
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
        </Property>
      </Property>
]]
end

local replaceObjects =
[[
  <Property name="Objects" value="GcEnvironmentSpawnData.xml">
    <Property name="Creatures" />
    <Property name="DistantObjects">
    </Property>
    <Property name="Landmarks">
    </Property>
    <Property name="Objects">
    </Property>
    <Property name="DetailObjects">
	</Property>
    <Property name="SelectableObjects" />
  </Property>
]]


NMS_MOD_DEFINITION_CONTAINER = --## 2_body
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "___Las_Shaidak_Expanded_XL_v1.41.pak",
["MOD_AUTHOR"]				= "goosetehmoose_with_Shaidak_biomes",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				
				--Copy vanilla files to custombiomes folder
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_1_SWAMP_WEIRD.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_1_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_2_SCORCHED_HUGE_DEAD_SWAMP_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 2, 6, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.29, 0.02, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_2_SCORCHED_HUGE_DEAD_SWAMP_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_3_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2, 3, 1, 1.75, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.017, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_3_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_4_SCORCHED_HUGE_TOXIC_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.065, 0.13, 0.065, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_4_SCORCHED_HUGE_TOXIC_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_5_HUGE_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_5_HUGE_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_6_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 2, 4, 1, 1, 0.1, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01875, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_6_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_7_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.8, 4, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.15, 0.01, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_7_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_8_HUGE_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.017, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_8_HUGE_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_9_SCORCHED_HUGE_WEIRD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.014, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_9_SCORCHED_HUGE_WEIRD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_10_SWAMP_LUSH_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 5, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.0375, 0.005, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_10_SWAMP_LUSH_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_11_HUGE_DEAD_LAVA_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 3.5, 4.5, 0.9, 1.1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0375, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_11_HUGE_DEAD_LAVA_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_12_HUGE_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.08, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_12_HUGE_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_13_HUGE_SCORCHED_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.24, 0.04, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_13_HUGE_SCORCHED_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_14_HUGE_BARREN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREESINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.5, 5, 0.9, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_14_HUGE_BARREN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_15_HUGE_FROZEN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVESINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 25, 1.7, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.009, 0.002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_15_HUGE_FROZEN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_16_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_16_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_17_SCORCHED_HUGE_TOXIC_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.6, 1.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_17_SCORCHED_HUGE_TOXIC_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_18_SWAMP_TOXIC_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 1, 2.6, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.01, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_18_SWAMP_TOXIC_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_19_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0015, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_19_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_20_HUGE_LUSH_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1.5, 3.5, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0075, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_20_HUGE_LUSH_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_21_LUSH_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/SMALLGLOWINGTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 4, 9, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.015, 0.012, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_21_LUSH_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_22_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4.5, 6, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0375, 0.01, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_22_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_23_SWAMP_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_23_SWAMP_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_24_HUGE_WEIRD_DEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 2, 5, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.045, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_24_HUGE_WEIRD_DEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_25_HUGE_FROZEN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_25_HUGE_FROZEN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_26_HUGE_LAVA_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_26_HUGE_LAVA_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_27_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 0.8, 2, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.003, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_27_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_28_HUGE_SWAMP_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_28_HUGE_SWAMP_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_29_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 2, 6, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.29, 0.02, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_29_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_30_HUGE_SWAMP_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.065, 0.13, 0.065, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_30_HUGE_SWAMP_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_31_HUGE_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 2, 6, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.29, 0.018, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_31_HUGE_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_32_SWAMP_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/SMALLCOMET01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 0.3, 0.7, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.009, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_32_SWAMP_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_33_SWAMP_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 25, 30, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.02, 0.004, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_33_SWAMP_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_34_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_34_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_35_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_35_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_36_HUGE_FROZEN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_36_HUGE_FROZEN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_37_SWAMP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_37_SWAMP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_38_FROZEN_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.01, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_38_FROZEN_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_39_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 1, 2.1, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.02, 0.02, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_39_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_40_HUGE_FROZEN_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/SMALLGLOWINGTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 4, 9, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.015, 0.012, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_40_HUGE_FROZEN_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_41_SCORCHED_HUGE_WEIRD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.007, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_41_SCORCHED_HUGE_WEIRD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_42_HUGE_FROZEN_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.12, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_42_HUGE_FROZEN_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_43_HUGE_SCORCHED_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 4, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_43_HUGE_SCORCHED_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_44_SCORCHED_HUGE_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_44_SCORCHED_HUGE_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_45_SCORCHED_HUGE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 2, 5, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.045, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_45_SCORCHED_HUGE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_46_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/SMALLGLOWINGTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 4, 9, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.015, 0.012, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_46_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_47_HUGE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.22, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.036, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_47_HUGE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_48_SCORCHED_HUGE_FROZEN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.007, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_48_SCORCHED_HUGE_FROZEN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_49_HUGE_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_49_HUGE_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_50_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.012, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_50_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_51_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_51_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_52_FROZEN_LUSH_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.045, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_52_FROZEN_LUSH_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_53_FROZEN_INDUSTRIAL_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4.5, 6, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0375, 0.01, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_53_FROZEN_INDUSTRIAL_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_54_HUGE_LUSH_DEAD_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.002, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_54_HUGE_LUSH_DEAD_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_55_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.024, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_55_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_56_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 6, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_56_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_57_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_57_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_58_HUGE_DEAD_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_58_HUGE_DEAD_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_59_HUGE_LAVA_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_59_HUGE_LAVA_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_60_LUSH_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/SMALLCOMET01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 0.3, 0.7, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.009, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_60_LUSH_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_61_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGETREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.009, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RAINFOREST/MEDIUMPLANT/MEDIUMFALLENTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 25, 0.9, 1.2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.006, 0.002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_61_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_62_HUGE_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 5, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0375, 0.01, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_62_HUGE_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_63_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/GROUNDREVEALROCK01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 0.6, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.015, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_63_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_64_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 4, 6, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_64_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_65_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.09, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_65_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_66_HUGE_RADIOACTIVE_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 20, 30, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_66_HUGE_RADIOACTIVE_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_67_LUSH_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 2, 4, 1, 1, 0.1, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01875, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_67_LUSH_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_68_SCORCHED_HUGE_BARREN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 3, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.015, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_68_SCORCHED_HUGE_BARREN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_69_HUGE_DEAD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.1, 3, 1, 1, 0.3, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.06, 0.02, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_69_HUGE_DEAD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_70_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMDEADTREE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.3, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.08, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_70_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_71_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 4, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_71_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_72_HUGE_WEIRD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.06, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_72_HUGE_WEIRD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_73_HUGE_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.2, 1.6, 1, 1, 0.2, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.034, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_73_HUGE_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_74_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 0.8, 2, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.003, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_74_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_75_HUGE_RADIOACTIVE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 0.6, 1.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_75_HUGE_RADIOACTIVE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_76_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.012, 0.012, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_76_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_77_HUGE_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_77_HUGE_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_78_FROZEN_LUSH_DEAD_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.016, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_78_FROZEN_LUSH_DEAD_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_79_HUGE_LIVINGSHIP_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.04, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_79_HUGE_LIVINGSHIP_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_80_HUGE_FROZEN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 3, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.015, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_80_HUGE_FROZEN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_81_HUGE_FROZEN_DEAD_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.6, 1.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_81_HUGE_FROZEN_DEAD_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_82_HUGE_LAVA_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.56, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.56, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_82_HUGE_LAVA_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_83_HUGE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.0002, 0.0002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_83_HUGE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_84_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_84_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_85_HUGE_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.12, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_85_HUGE_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_86_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.0002, 0.0002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_86_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_87_SCORCHED_HUGE_FROZEN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 3.5, 5, 1, 1, 0.5, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.0375, 0.005, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_87_SCORCHED_HUGE_FROZEN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_88_SCORCHED_HUGE_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.5, 1.7, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.001, 0.001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_88_SCORCHED_HUGE_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_89_SCORCHED_HUGE_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.09, 0.04, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_89_SCORCHED_HUGE_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_90_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 1.2, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.48, 0.08, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_90_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_91_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 2.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_91_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_92_FROZEN_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.032, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_92_FROZEN_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_93_HUGE_DEAD_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RAINFOREST/MEDIUMPLANT/MEDIUMFALLENTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 1.2, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RAINFOREST/MEDIUMPLANT/MEDIUMFALLENTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 0.9, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.03, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_93_HUGE_DEAD_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_94_LUSH_SCORCHED_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/MEDIUMSPRUCE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.3, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.08, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_94_LUSH_SCORCHED_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_95_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.32, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.32, 0.025, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_95_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_96_HUGE_TOXIC_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 5, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.012, 0.003, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_96_HUGE_TOXIC_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_97_HUGE_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.038, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_97_HUGE_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_98_HUGE_FROZEN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.0225, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_98_HUGE_FROZEN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_99_HUGE_TOXIC_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1, 2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.015, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_99_HUGE_TOXIC_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_100_HUGE_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.0225, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_100_HUGE_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_101_SWAMP_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.03, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_101_SWAMP_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_102_FROZEN_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.6, 1.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.015, 0.006, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_102_FROZEN_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_103_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.03, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_103_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_104_HUGE_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.07, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_104_HUGE_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_105_SCORCHED_HUGE_DEAD_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/SMALLCOMET01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 0.3, 0.7, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.009, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_105_SCORCHED_HUGE_DEAD_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_106_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/ALPINE/LARGEPLANT/SMALLSPRUCE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.5, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.08, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_106_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_107_HUGE_LAVA_DEAD_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.09, 0.04, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_107_HUGE_LAVA_DEAD_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_108_SWAMP_WEIRD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/SMALLPROPS/SMALLCOMET01.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 30, 0.3, 0.7, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.009, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_108_SWAMP_WEIRD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_109_HUGE_WEIRD_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 20, 0.25, 0.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.075, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_109_HUGE_WEIRD_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_110_LUSH_DEAD_LAVA_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 2.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_110_LUSH_DEAD_LAVA_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_111_SWAMP_SCORCHED_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 6, 10, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 4, 1, 1.3, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_111_SWAMP_SCORCHED_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_112_HUGE_FROZEN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/LARGE/LARGESHIELDTREESINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 60, 1.5, 5, 0.9, 1.1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.0045, 0.002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_112_HUGE_FROZEN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_113_HUGE_FROZEN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEROCKSTACK_1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 0.6, 1.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_113_HUGE_FROZEN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_114_HUGE_LUSH_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_114_HUGE_LUSH_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_115_LUSH_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_115_LUSH_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_116_HUGE_WEIRD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 7, 10, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 0.8, 2, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0045, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_116_HUGE_WEIRD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_117_HUGE_TOXIC_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 2.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_117_HUGE_TOXIC_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_118_HUGE_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.2, 0.5, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.05, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_118_HUGE_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_119_LUSH_TOXIC_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/MEDIUM/HOTTENDRILS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.045, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_119_LUSH_TOXIC_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_120_HUGE_DEAD_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.036, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_120_HUGE_DEAD_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_121_HUGE_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.6, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.14, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_121_HUGE_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_122_HUGE_INDUSTRIAL_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 2, 6, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.29, 0.017, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_122_HUGE_INDUSTRIAL_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_123_LUSH_FROZEN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.002, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_123_LUSH_FROZEN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_124_LUSH_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 4, 6, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_124_LUSH_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_125_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_125_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_126_SWAMP_BARREN_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 20, 30, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_126_SWAMP_BARREN_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_127_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 3.5, 6, 1, 1, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01875, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_127_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_128_FROZEN_WEIRD_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_128_FROZEN_WEIRD_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_129_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 20, 0.5, 1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.07, 0.016, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_129_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_130_HUGE_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.275, 0.045, 0.012, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_130_HUGE_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_131_SWAMP_RADIOACTIVE_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.015, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_131_SWAMP_RADIOACTIVE_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_132_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_132_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_133_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_133_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_134_HUGE_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.02, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_134_HUGE_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_135_FROZEN_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.024, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_135_FROZEN_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_136_SWAMP_DEAD_LAVA_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 1, 1.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_136_SWAMP_DEAD_LAVA_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_137_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/FOLIAGE/LARGETREEBARE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1, 1.4, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.08, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_137_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_138_HUGE_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.12, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_138_HUGE_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_139_HUGE_BARREN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.0008, 0.0008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_139_HUGE_BARREN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_140_HUGE_INDUSTRIAL_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.045, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_140_HUGE_INDUSTRIAL_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_141_HUGE_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.002, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_141_HUGE_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_142_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.021, 0, 5), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_142_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_143_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 3, 5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.36, 0.06, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_143_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_144_HUGE_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOMSINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 8, 10, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01, 0.01, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_144_HUGE_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_145_HUGE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_145_HUGE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_146_SWAMP_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.011, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_146_SWAMP_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_147_SCORCHED_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.0002, 0.0002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_147_SCORCHED_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_148_SWAMP_SCORCHED_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_148_SWAMP_SCORCHED_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_149_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.6, 1.4, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_149_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_150_HUGE_FROZEN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.05, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.014, 0.004, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_150_HUGE_FROZEN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_151_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 4, 9, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.012, 0.012, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_151_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_152_HUGE_WEIRD_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSHARD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 55, 0.8, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.09, 0.04, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_152_HUGE_WEIRD_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_153_HUGE_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURPOD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 25, 30, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.02, 0.004, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_153_HUGE_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_154_HUGE_WEIRD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.9, 1.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.057, 0.019, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_154_HUGE_WEIRD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_155_HUGE_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 1.2, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.48, 0.08, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_155_HUGE_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_156_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.016, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_156_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_157_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.5, 1.7, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.001, 0.001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_157_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_158_FROZEN_TOXIC_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/COLOURFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 3, 4.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0375, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_158_FROZEN_TOXIC_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_159_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0015, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_159_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_160_HUGE_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 10, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.5, 0.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.66, 0.22, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_160_HUGE_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_161_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 3, 0.8, 1.2, 0, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.065, 0.04, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_161_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_162_SWAMP_DEAD_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEBIGGLOW.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.06, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_162_SWAMP_DEAD_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_163_LUSH_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RAINFOREST/LARGEPLANT/SMALLTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 0.75, 1.2, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.08, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_163_LUSH_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_164_HUGE_RADIOACTIVE_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 3.5, 4.5, 0.9, 1.1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0375, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_164_HUGE_RADIOACTIVE_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_165_SCORCHED_HUGE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 3, 5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01125, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_165_SCORCHED_HUGE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_166_SCORCHED_HUGE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_166_SCORCHED_HUGE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_167_HUGE_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_167_HUGE_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_168_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 3, 0.8, 1.2, 0, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.065, 0.04, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_168_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_169_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.016, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_169_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_170_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQFROZEN/LARGEPROPS/LARGEICEROCK_1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_170_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_171_LUSH_WEIRD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.032, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_171_LUSH_WEIRD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_172_FROZEN_DEAD_LAVA_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/VORONOITREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 3, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.00125, 0.005, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_172_FROZEN_DEAD_LAVA_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_173_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 2, 1, 1, 0.62, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.62, 0.02, 0.03, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_173_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_174_LUSH_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 4, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_174_LUSH_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_175_HUGE_FROZEN_DEAD_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_175_HUGE_FROZEN_DEAD_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_176_LUSH_WEIRD_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_176_LUSH_WEIRD_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_177_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 5, 7, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 5, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.012, 0.003, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_177_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_178_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 2.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_178_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_179_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.07, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_179_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_180_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREEDAMAGED.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.12, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_180_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_181_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.015, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_181_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_182_HUGE_BARREN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 20, 0.25, 0.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.075, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_182_HUGE_BARREN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_183_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/TREES/DRACAENA.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.03, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_183_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_184_HUGE_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 5, 8, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.017, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_184_HUGE_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_185_LUSH_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HOUDINIPROPS/SPIKYPOTATO.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.025, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_185_LUSH_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_186_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 5, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.0375, 0.005, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_186_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_187_SCORCHED_HUGE_BARREN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/LARGESNOWBLENDROCK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 1.5, 3, 0.8, 1.2, 0, 45, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.065, 0.04, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_187_SCORCHED_HUGE_BARREN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_188_LUSH_DEAD_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.6, 1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_188_LUSH_DEAD_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_189_HUGE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 1.5, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.017, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_189_HUGE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_190_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/SMALLGLOWINGTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_190_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_191_HUGE_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.065, 0.065, 0.065, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_191_HUGE_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_192_HUGE_WEIRD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LIVINGSHIP/LARGE/BIOTANK.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 3, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.015, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_192_HUGE_WEIRD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_193_HUGE_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 2.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_193_HUGE_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_194_HUGE_WEIRD_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.22, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_194_HUGE_WEIRD_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_195_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOM.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 5, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.012, 0.003, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_195_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_196_HUGE_BARREN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 100, 0.5, 0.9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.75, 0.18, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_196_HUGE_BARREN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_197_HUGE_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.03, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_197_HUGE_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_198_HUGE_LUSH_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CACTUS/HQFLOWERCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.6, 1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.01, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_198_HUGE_LUSH_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_199_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/MEDGLOWINGTREE1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.22, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.03, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_199_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_200_SCORCHED_HUGE_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 100, 0.5, 0.9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.75, 0.18, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_200_SCORCHED_HUGE_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_201_HUGE_BARREN_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 2, 6, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.29, 0.02, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_201_HUGE_BARREN_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_202_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/LARGEHIVESINGLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 25, 1.7, 2.8, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.009, 0.002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_202_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_203_HUGE_WEIRD_DEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.017, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_203_HUGE_WEIRD_DEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_204_HUGE_RADIOACTIVE_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/WIRECELLS/WIRECELLMEGATREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 20, 0.25, 0.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.075, 0.01, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_204_HUGE_RADIOACTIVE_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_205_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.6, 1.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0225, 0.006, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_205_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_206_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_206_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_207_SWAMP_DEAD_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.04, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_207_SWAMP_DEAD_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_208_SCORCHED_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2, 3, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.017, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_208_SCORCHED_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_209_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_209_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_210_SWAMP_WEIRD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.06375, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_210_SWAMP_WEIRD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_211_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.5, 0.8, 1, 1, 0, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.11, 0.8, 0.22, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_211_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_212_FROZEN_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BEAMSTONE/HUGEBEAM.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.06, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_212_FROZEN_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_213_HUGE_TOXIC_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.32, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.32, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_213_HUGE_TOXIC_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_214_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0.8, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.08, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_214_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_215_HUGE_SCORCHED_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.032, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_215_HUGE_SCORCHED_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_216_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.6, 1.4, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_216_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_217_HUGE_LAVA_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.032, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_217_HUGE_LAVA_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_218_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.0008, 0.0008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_218_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_219_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_219_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_220_HUGE_DEAD_SWAMP_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/FRACTALCUBE/SHAPE1.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 3, 5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.36, 0.06, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_220_HUGE_DEAD_SWAMP_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_221_HUGE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 2, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.017, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_221_HUGE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_222_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 1.2, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.004, 0.001, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_222_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_223_HUGE_FROZEN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/IRRISHELLS/SHELLSAIL.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 1.2, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.48, 0.08, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_223_HUGE_FROZEN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_224_HUGE_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FOREST", -1, 128, 0, 45, 5, 8, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.019, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_224_HUGE_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_225_HUGE_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_225_HUGE_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_226_HUGE_LUSH_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_226_HUGE_LUSH_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_227_HUGE_DEAD_SWAMP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 2, 3, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_227_HUGE_DEAD_SWAMP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_228_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.5, 2, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_228_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_229_SWAMP_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/SMALLGLOWINGTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_229_SWAMP_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_230_FROZEN_DEAD_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/ELBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 100, 4, 9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.032, 0.008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_230_FROZEN_DEAD_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_231_LUSH_FROZEN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.102, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_231_LUSH_FROZEN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_232_FROZEN_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_232_FROZEN_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_233_SWAMP_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.9, 5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.1, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.03, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_233_SWAMP_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_234_HUGE_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEBLUESHROOMSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4.5, 6, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0375, 0.01, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_234_HUGE_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_235_SCORCHED_HUGE_DEAD_WEIRD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 3, 5, 1, 1, 0.44, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_235_SCORCHED_HUGE_DEAD_WEIRD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_236_SCORCHED_HUGE_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOMDEAD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 5, 8, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.016, 0.004, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_236_SCORCHED_HUGE_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_237_SWAMP_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTURE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.09, 0, 5), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_237_SWAMP_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_238_LUSH_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/SMALLGLOWINGTREE1.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_238_LUSH_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_239_SCORCHED_HUGE_BARREN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_239_SCORCHED_HUGE_BARREN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_240_HUGE_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.1, 3, 1, 1, 0.3, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.06, 0.02, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_240_HUGE_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_241_SWAMP_FROZEN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.04, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_241_SWAMP_FROZEN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_242_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_242_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_243_HUGE_WEIRD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 4, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_243_HUGE_WEIRD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_244_LUSH_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4, 5, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.0375, 0.005, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_244_LUSH_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_245_FROZEN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.002, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_245_FROZEN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_246_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/LARGEGLOWPLANTSINGLE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 3, 5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01125, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_246_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_247_HUGE_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARDALT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 180, 0.5, 0.8, 1, 1, 0, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.11, 0.8, 0.22, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_247_HUGE_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_248_SWAMP_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.9, 1.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.057, 0.019, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_248_SWAMP_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_249_FROZEN_LAVA_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LUSHROOM/LARGEFANSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 0.9, 1.1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.275, 0.045, 0.012, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_249_FROZEN_LAVA_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_250_HUGE_TOXIC_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 0.8, 2, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.0045, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_250_HUGE_TOXIC_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_251_HUGE_LUSH_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.35, 0.0015, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_251_HUGE_LUSH_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_252_HUGE_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/LARGEPLANT/MEDGLOWINGTREE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.0375, 0.03, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_252_HUGE_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_253_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.7, 2.1, 1, 1, 0.3, 2, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.012, 0.012, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_253_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_254_SWAMP_LAVA_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_254_SWAMP_LAVA_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_255_HUGE_DEAD_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 0.8, 2, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.003, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_255_HUGE_DEAD_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_256_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HYDROGARDEN/LARGEMUSHROOMDEAD.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 5, 8, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.016, 0.004, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_256_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_257_LUSH_WEIRD_HUGE_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.065, 0.13, 0.065, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_257_LUSH_WEIRD_HUGE_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_258_HUGE_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/HEXAGON/HUGEOBJECT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 0.8, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.07, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_258_HUGE_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_259_FROZEN_INDUSTRIAL_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 2, 3, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_259_FROZEN_INDUSTRIAL_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_260_HUGE_LAVA_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 2.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.002, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_260_HUGE_LAVA_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_261_FROZEN_WEIRD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.0002, 0.0002, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_261_FROZEN_WEIRD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_262_HUGE_LIVINGSHIP_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.25, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/SHARD.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 100, 0.5, 0.9, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.75, 0.18, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_262_HUGE_LIVINGSHIP_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_263_HUGE_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 1, 1.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_263_HUGE_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_264_LUSH_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 2, 3, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.013, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_264_LUSH_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_265_FROZEN_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.03, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_265_FROZEN_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_266_SCORCHED_HUGE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 4, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.009, 0.009, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_266_SCORCHED_HUGE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_267_HUGE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 1.4, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_267_HUGE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_268_FROZEN_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/PLANTS/FERNLIGHT.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 37, 1.2, 1.6, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.14, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_268_FROZEN_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_269_FROZEN_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 35, 0.4, 1.8, 1, 1, 0, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.03, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_269_FROZEN_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_270_HUGE_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZENPILLARS/LARGEPILLAR.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_270_HUGE_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_271_FROZEN_INDUSTRIAL_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 35, 1, 1.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01125, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_271_FROZEN_INDUSTRIAL_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_272_HUGE_LIVINGSHIP_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1.6, 3.2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.015, 0.015, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.002, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_272_HUGE_LIVINGSHIP_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_273_LUSH_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 3, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.015, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_273_LUSH_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_274_SCORCHED_HUGE_TOXIC_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.024, 0.024, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_274_SCORCHED_HUGE_TOXIC_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_275_SWAMP_LIVINGSHIP_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 45, 0.2, 0.5, 1, 1, 0.1, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.05, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_275_SWAMP_LIVINGSHIP_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_276_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.03, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_276_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_277_HUGE_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.018, 0, 5), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_277_HUGE_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_278_SCORCHED_HUGE_FROZEN_LIVINGSHIP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/BONESPIRE/BONETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 50, 2, 3.5, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.12, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_278_SCORCHED_HUGE_FROZEN_LIVINGSHIP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_279_HUGE_FROZEN_LIVINGSHIP_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_279_HUGE_FROZEN_LIVINGSHIP_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_280_SCORCHED_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 45, 1, 2, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.015, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_280_SCORCHED_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_281_HUGE_DEAD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/CONTOUR/CONTOURTOWER.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 20, 30, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.1, 0.02, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_281_HUGE_DEAD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_282_SCORCHED_HUGE_WEIRD_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/LARGEPROPS/DEADTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_282_SCORCHED_HUGE_WEIRD_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_283_HUGE_LUSH_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/ELBUBBLE/SMALLBUBBLE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.065, 0.065, 0.065, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_283_HUGE_LUSH_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_284_HUGE_DEAD_SWAMP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0.18, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.028, 0.028, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_284_HUGE_DEAD_SWAMP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_285_SWAMP_FROZEN_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 1.5, 2, 1, 1.75, 0.52, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.015, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_285_SWAMP_FROZEN_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_286_FROZEN_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1, 0.9, 1.1, 0.5, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0.015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_286_FROZEN_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_287_LUSH_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.4, 1.5, 1, 1, 0, 3, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 55, 2, 3, 1, 1, 0.48, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.48, 0.014, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_287_LUSH_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_288_HUGE_RADIOACTIVE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 30, 0.7, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.17, 0.002, 0, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_288_HUGE_RADIOACTIVE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_289_HUGE_LAVA_LIVINGSHIP.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_289_HUGE_LAVA_LIVINGSHIP.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_290_HUGE_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDSHARDINACTIVE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 30, 0.8, 2, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.003, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_290_HUGE_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_291_SWAMP_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/GLOWING/MEDIUMPLANT/MEDGLOWINGBUSH1.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 60, 2, 3, 1, 1, 0.26, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.26, 0.02375, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_291_SWAMP_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_292_HUGE_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 3, 5, 1, 1, 0.14, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.019, 0.019, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_292_HUGE_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_293_HUGE_DEAD_LAVA.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/WEIRD/SHARDS/TALLSHARD.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 2.6, 4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.03, 0.01, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_293_HUGE_DEAD_LAVA.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_294_LUSH_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/LAVA/MEDIUMPROPS/MEDIUMDEADTREE01.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.102, 0.034, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_294_LUSH_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_295_HUGE_WEIRD_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddDistantProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/BARREN/HQ/CORAL/LARGECORALSAND.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 3.5, 6, 1, 1, 0.8, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01875, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_295_HUGE_WEIRD_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_296_SCORCHED_HUGE_SWAMP_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "JAMESPATCH", -1, 128, 0, 40, 4.5, 6.5, 1, 1, 0.5, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 1.1, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_296_SCORCHED_HUGE_SWAMP_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_297_SWAMP_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 180, 2, 6, 1, 1, 1, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.29, 0.02, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_297_SWAMP_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_298_HUGE_LAVA_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.06375, 0.017, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_298_HUGE_LAVA_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_299_HUGE_FROZEN_WEIRD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN", "FOREST", -1, 128, 0, 25, 0.75, 1.5, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.4, 0.0008, 0.0008, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_299_HUGE_FROZEN_WEIRD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_300_SWAMP_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/FROZEN/LARGEPROPS/SNOWCOVEREDWEIRDPROP.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 1, 1, 1, 0, 15, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005, 0.001, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SHAIDAK_EXP/BIOME_300_SWAMP_SCORCHED.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/BIOMES/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2, 3, 1, 1, 0.32, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.32, 0.02, 0.02, 0), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE