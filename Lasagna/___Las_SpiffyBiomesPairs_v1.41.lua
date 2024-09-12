--[[

LUA script created using PLUMGEN
Script may include unused identifiers
Import EXML back into PLUMGEN for swift and easy editing

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
--Section above originally written by InsaneRuffles, modified by FjordFish ---------------------------------------------
------------------------------------------------------------------------------------------------------------------------

--This adds the exml "context" for each model, i.e. the max scale.
function AddLandmarkProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
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
          <Property name="MaxRegionRadius" value="3" />
          <Property name="MaxImposterRadius" value="10" />
          <Property name="FadeOutStartDistance" value="9999" />
          <Property name="FadeOutEndDistance" value="9999" />
          <Property name="FadeOutOffsetDistance" value="0" />NEWHQTREES
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


function AddObjectProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
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
            <Property name="MaxRegionRadius" value="5" />
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

function AddRockProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)

maxRaise = 0
maxLower = 0
isFloatingIsland = "FALSE"

return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
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
              <Property value="TkProceduralTextureChosenOptionSampler.xml">
                <Property name="Options">
                  <Property value="TkProceduralTextureChosenOption.xml">
                    <Property name="Layer" value="BASE" />
                    <Property name="Group" value="" />
                    <Property name="Palette" value="TkPaletteTexture.xml">
                      <Property name="Palette" value="Plant" />
                      <Property name="ColourAlt" value="Primary" />
                    </Property>
                    <Property name="OverrideColour" value="True" />
                    <Property name="Colour" value="Colour.xml">
                      <Property name="R" value="0.42" />
                      <Property name="G" value="0.53" />
                      <Property name="B" value="0.239" />
                      <Property name="A" value="1" />
                    </Property>
                    <Property name="OptionName" value="3" />
                  </Property>
                </Property>
              </Property>
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
        <Property name="PlacementPriority" value="Low" />
        <Property name="LargeObjectCoverage" value="AlwaysPlace" />
        <Property name="OverlapStyle" value="All" />
        <Property name="MinHeight" value="]] .. minHeight .. [[" />
        <Property name="MaxHeight" value="]] .. maxHeight .. [[" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="]] .. minAngle .. [[" />
        <Property name="MaxAngle" value="]] .. maxAngle .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="True" />
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
        <Property name="CollideWithPlayer" value="False" />
        <Property name="CollideWithPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="]] .. destroyableByShip .. [[" />
        <Property name="DestroyedByTerrainEdit" value="]] .. destroyableByTerrEdit .. [[" />
        <Property name="IsFloatingIsland" value="]] .. isFloatingIsland .. [[" />
        <Property name="InvisibleToCamera" value="True" />
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
          <Property name="MaxRegionRadius" value="17998" />
          <Property name="MaxImposterRadius" value="30" />
          <Property name="FadeOutStartDistance" value="17998" />
          <Property name="FadeOutEndDistance" value="17998" />
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
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="9" />
            <Property name="MaxImposterRadius" value="30" />
            <Property name="FadeOutStartDistance" value="110" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="5" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity .. [[" />
            <Property name="SlopeDensity" value="]] .. slopeDensity .. [[" />
            <Property name="SlopeMultiplier" value="]] .. slopeMultiplier .. [[" />
            <Property name="MaxRegionRadius" value="5" />
            <Property name="MaxImposterRadius" value="30" />
            <Property name="FadeOutStartDistance" value="140" />
            <Property name="FadeOutEndDistance" value="150" />
            <Property name="FadeOutOffsetDistance" value="10" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="16" />
              <Property value="30" />
              <Property value="50" />
              <Property value="1000" />
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
["MOD_FILENAME"] 			= "___Las_SpiffyBiomesPairs_v1.41.pak",
["MOD_AUTHOR"]				= "goosetehmoose",
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
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_1.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_1.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_2.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.5, 1, 1, 0, 0, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPSNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_2.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREEBIG.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.019, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.074, 0.14, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_4.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_4.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_5.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_5.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_6.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_6.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_7.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH2.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.025, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_7.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_8.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 45, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_8.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_9.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_9.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_10.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.025, 0.025, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF2.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.75, 1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_10.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_11.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 45, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_11.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_12.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/ICEBURG/GLACIER5.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/ICEBURG/GLACIER6.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_12.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_13.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_ROSE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_DAISY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_13.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_14.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK5WIDE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_14.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_15.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 10, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_15.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_16.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK2.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.75, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.002, 0.003, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK4TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_16.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_17.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.5, 1, 1, 0, 0, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_17.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_18.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES\HQTREE_MULTI3_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.055, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES\HQTREE_MULTI1_SHORT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_18.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_19.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_19.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_20.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_20.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_21.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONESNOW.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_21.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_22.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_22.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_23.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEPINE/STYLEPINERED.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEPINE/STYLEPINEGREEN.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 3.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_23.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_24.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF2.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.75, 1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_24.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_26.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK5WIDE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 11, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_26.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_27.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_27.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_28.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENSWAMP/ALIENSWAMP2_MANGROVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 200, 300, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.007, 0.007, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENSWAMP/ALIENSWAMP3_BIGFLOWERTHING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 170, 750, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_28.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_31.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK5WIDE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_31.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_32.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENSWAMP/ALIENSWAMP2_MANGROVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 200, 300, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.007, 0.007, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENSWAMP/ALIENSWAMP1_EGGTREETHING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 170, 1400, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_32.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_33.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\BIGTRIANGLETREE\BIGTRIANGLETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.025, 0.035, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_33.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_34.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_34.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_35.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES\HQTREE_MULTI3_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.055, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES\HQTREE_MULTI1_SHORT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_35.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_36.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHYELLOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_36.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_37.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_DAISY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_ROSE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 2, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_37.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_38.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_38.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_40.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_40.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_41.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_41.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_42.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/ICEBURG/GLACIER6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 1, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.01, 0.01, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/ICEBURG/GLACIER4.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_42.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_43.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWSHROOMS/MUSHROOM2_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 6, 12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWSHROOMS/MUSHROOM1_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_43.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_44.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.5, 1, 1, 0, 0, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_44.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_45.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 45, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_45.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_46.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 21, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_46.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_47.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_47.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_48.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_48.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_49.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONEGREEN.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONESTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_49.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_50.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK5WIDE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_50.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_51.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0025, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 150, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.006, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_51.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_52.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_52.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_53.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWSHROOMS/MUSHROOM1_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWSHROOMS/MUSHROOM2_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_53.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_54.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_54.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_55.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI6.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_55.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_56.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCHDEAD/STYLEDEADBIRCH1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_56.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_57.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 11, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK4TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_57.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_58.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONEGREEN.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONESNOW.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.002, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_58.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_60.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.025, 0.025, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_60.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_61.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_61.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_62.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_62.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_64.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWSHROOMS/MUSHROOM1_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWSHROOMS/MUSHROOM2_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 6, 12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_64.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_65.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK1.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 180, 1, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.001, 0.001, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK2.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.75, 1, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.001, 0.003, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_65.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_66.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHYELLOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_66.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_67.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_DAISY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 30, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_ROSE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_67.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_68.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREEBIG.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.019, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.044, 0.14, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_68.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_69.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 10, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_69.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_70.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STRANGETREE_FLOATLEAF/STRANGETREE_FLOATLEAF2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.014, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_70.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_71.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_ROSE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 30, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_DAISY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_71.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_73.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK3.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 11, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK5WIDE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 1.3, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.05, 0.05, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_73.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_74.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 10, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 10, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_74.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_75.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 0.6, 1, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.001, 0.001, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_75.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_76.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHYELLOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_76.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_77.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPGREEN.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.04, 0.04, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_77.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_78.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_DAISY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_ROSE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.064, 0.064, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_78.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_79.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEPINE/STYLEPINEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.13, 0.13, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEPINE/STYLEPINELIGHT.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.4, 3.8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_79.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_81.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 0, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_81.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_82.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 3, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_82.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_83.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_ROSE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 10, 30, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.015, 0.015, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQPLANTS/HQFLOWER_DAISY.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.3, 1.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_83.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_84.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI5.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_84.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_85.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI8.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_85.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_86.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHYELLOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_86.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_87.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEPINE/STYLEPINERED.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEPINE/STYLEPINEGREEN.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 3.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0, 2), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_87.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_88.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPSNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_88.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_89.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHYELLOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEBIRCH/STYLEBIRCHGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_89.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_90.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS1/ISLAND1CUPGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.8, 1.5, 1, 1, 0, 0, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_90.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_91.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEDEAD/STYLEDEADTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0, 2), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEDEAD/STYLEDEADTREE2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_91.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_92.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK5WIDE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 38, 1.3, 2, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.05, 0.05, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/GIANTROCKS/GIANTROCK1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 1, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.032, 0.032, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_92.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_93.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 10, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS6/ISLAND6SMALLCONESNOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 10, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_93.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_94.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_94.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_95.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI9.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.0035, 0.0035, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/BUILDINGSCIFI/BUILDINGSCIFI4.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 10, 14, 20, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.009, 0.009, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_95.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_96.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\BIGTRIANGLETREE\BIGTRIANGLETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.025, 0.035, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_96.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_97.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/ICEBURG/GLACIER4.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/ICEBURG/GLACIER5.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.0001, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_97.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_98.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 20, 0.5, 5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.022, 0.022, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENFOLIAGE/ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 21, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_98.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_99.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEDEAD/STYLEDEADTREE2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/STYLIZEDTREEDEAD/STYLEDEADTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.084, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_99.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_100.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENSWAMP/ALIENSWAMP1_EGGTREETHING.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 170, 1400, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/ALIENSWAMP/ALIENSWAMP2_MANGROVE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 40, 170, 950, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.007, 0.007, 0.0001), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_DIST/BIOME_100.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_1.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 30, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), }, --## 3b_biome_dist
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS/FLOATINGISLANDS4/ISLAND4HUGESNOW.SCENE.MBIN", "BLANKETCLUMP", -1, 200, 0, 180, 1, 2, 1, 1, 0, 0, 180, 150, 0, "FALSE", "FALSE", "TRUE", "FALSE", 0.003, 0.05, 0.01, 1), }, --## 3b_biome_dist
					}, }, --## 3f_biome_end
					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_1.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_2.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_PURPLE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_2.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_3.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_3.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_4.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 6.5, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_4.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_5.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 6.5, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_5.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_6.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_ORANGE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.015, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_6.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_7.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_GREENISH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 22, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 19, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_7.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_8.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_8.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_9.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.13, 0.13, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\REFLECTSHROOM\REFLECTSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_9.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_10.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE3_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.05, 0.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_10.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_11.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_GREENISH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 22, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_11.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_12.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_12.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_13.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_ORANGE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2, 10, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_13.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_14.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_1_BIG.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 1.25, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI3_TALL.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_14.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_15.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_15.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_16.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI1_SHORT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.034, 0.074, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_16.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_17.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_1_BIG.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.06, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_17.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_18.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_BLUE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.015, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 6.5, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_18.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_19.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_19.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_20.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.13, 0.13, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\REFLECTSHROOM\REFLECTSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_20.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_21.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_21.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_22.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_22.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_23.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\ROCKDOOR\ROCKDOOR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_23.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_24.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE3_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.05, 0.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE2_PINK.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.11, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_24.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_26.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_GREENISH.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 3, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.085, 0.085, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_26.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_27.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE5_BLUE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 0.075, 0.12, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.012, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_27.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_28.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO2_WIDE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI3_TALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 4, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.055, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_28.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_31.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_PINK.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_31.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_32.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 6.5, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_YELLOW.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 9, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.015, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_32.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_33.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_33.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_34.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\BIGTRIANGLETREE\BIGTRIANGLETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.035, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_34.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_35.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE4_UV.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.03, 0.08, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_35.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_36.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 18, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_36.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_37.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE3_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.05, 0.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.08, 0.08, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_37.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_38.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE2_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.11, 0.13, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.055, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_38.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_40.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE2_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.04, 0.06, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.04, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE4_UV.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.03, 0.08, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_40.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_41.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_41.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_42.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_PURPLE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.4, 1.8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.019, 0.019, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_42.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_43.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_43.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_44.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_GREEN.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_44.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_45.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_ORANGE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.012, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_45.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_46.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.07, 0.12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.07, 0.07, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE2_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.075, 0.12, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_46.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_47.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_1_BIG.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO2_WIDE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.75, 1.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.005, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_47.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_48.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_GREENISH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 22, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_48.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_49.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_GREENISH.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 22, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_49.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_50.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 1.3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.012, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_50.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_51.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\BIGTRIANGLETREE\BIGTRIANGLETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.035, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_51.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_52.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.105, 0.13, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.012, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE2_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.05, 0.1, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.08, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_52.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_53.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_GREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_53.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_54.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.17, 0.17, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_GREENISH.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.02, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_54.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_55.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_ORANGE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 1.3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.012, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 10, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_55.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_56.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO2_WIDE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.04, 0.05, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_56.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_57.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_57.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_58.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE4_UV.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.045, 0.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE2_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.06, 0.09, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.06, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_58.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_60.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_PURPLE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.008, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_60.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_61.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.01, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_YELLOW.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.06, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_61.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_62.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_GREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 12, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_62.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_64.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\ROCKDOOR\ROCKDOOR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_64.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_65.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE4_UV.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.03, 0.08, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE5_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.1, 0.13, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.003, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_65.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_66.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_2.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1, 1.25, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.004, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_1_BIG.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_66.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_67.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI1_SHORT.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.25, 1.5, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.01, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.06, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_67.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_68.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\ROCKDOOR\ROCKDOOR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_68.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_69.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE4_UV.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.12, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE1_ORANGE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.105, 0.12, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.012, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_69.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_70.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_PURPLE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.015, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_70.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_71.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.074, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.015, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_71.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_73.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.08, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREEBIG.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.019, 0.019, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_73.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_74.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_BLUE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 2, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.005, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_RED.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_74.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_75.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\BIGTRIANGLETREE\BIGTRIANGLETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.035, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_75.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_76.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 18, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_76.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_77.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI1_SHORT.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 2, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.054, 0.074, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_77.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_78.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWTREESCOL/COLTREE3_RED.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.075, 0.1, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.012, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","DetailObjects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWTREESCOL/COLTREE2_PINK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.12, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_78.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_79.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_PURPLE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.2, 1.8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.01, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 2, 1, 1, 0, 13, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_79.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_81.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI4_MED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI1_SHORT.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.01, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_81.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_82.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO1.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_MULTI4_MED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.035, 0.035, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_82.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_83.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_PURPLE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.014, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_GREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.055, 0.055, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_83.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_84.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREEBIG.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.019, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TALLPINETREES/TALLPINETREESMALL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.084, 0.14, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_84.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_85.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 11, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 3.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.003, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_85.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_86.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddRockProp("CUSTOMMODELS/NEWHQTREES/HQTREE_BAMBOO1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.06, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/NEWHQTREES/HQTREE_GREEN_2.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.044, 0.074, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_86.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_87.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_ORANGE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.3, 0.01, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 15, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.045, 0.045, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_87.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_88.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_88.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_89.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("MODELS\PLANETS\BIOMES\COMMON\TREES\MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.13, 0.13, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\REFLECTSHROOM\REFLECTSHROOM.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.5, 0.75, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.09, 0.09, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_89.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_90.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_YELLOW.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.015, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_90.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_91.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_RED.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.5, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.015, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.06, 0.12, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_91.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_92.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 0.8, 1.5, 1, 1, 0, 5, 180, 20, -10, "TRUE", "TRUE", "TRUE", "FALSE", 0.18, 0.008, 0.008, 0.0001), },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS\ROCKDOOR\ROCKDOOR.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 0, 180, 0, 0, "FALSE", "FALSE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 0.0001), },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_92.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_93.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_GREEN.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 2, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.007, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_93.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_94.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 7, 1, 1, 0, 14, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.095, 0.095, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 16, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_94.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_95.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.01, 0.01, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESNORMAL/NORMALTREE_ORANGE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_95.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_96.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.006, 0, 2), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPINE/PINETREE_RED.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.0075, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_96.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_97.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.006, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_BLUE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.9, 3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.02, 0, 3), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_97.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_98.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 14, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.1, 0.1, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_YELLOW.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.4, 0.015, 0, 2), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_98.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_99.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.008, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESBIRCH/BIRCHTREE_RED.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 17, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.065, 0.065, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_99.MBIN","METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_100.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_GREEN.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.011, 0.011, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESMAPLE/MAPLETREE_NORMAL.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1, 9, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.012, 0.012, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CUSTOMBIOMES_LANDM/BIOME_100.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_NORMAL.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.009, 0, 3), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Objects",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddObjectProp("CUSTOMMODELS/TREESPALM/PALMTREE_PURPLE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 30, 1, 8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.075, 0.075, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE