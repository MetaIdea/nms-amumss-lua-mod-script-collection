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
function AddDistantProp(modelPath, placem, minHeight, maxHeight, minAngle, maxAngle, minScale, maxScale, minScaleY, maxScaleY, patchEdgeSc, maxRotation, maxYRotation, maxRaise, maxLower, destroyableByShip, destroyableByTerrEdit, isFloatingIsland, creatureCanEat, coverage, flatDensity, slopeDensity, slopeMultiplier)
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
["MOD_FILENAME"] 			= "___Las_FoundPath_v1.41.pak",
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
						{"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\UNDERWATERSPHERES.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSDEAD_BARREN.MBIN"},
					},
				},

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSDEAD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSFULL_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.07, 0.07, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSFULL_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSLOW_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 2.6, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.23, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.9, 1.4, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.21, 0.019, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.4, 1.4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.086, 0.086, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSLOW_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSMID_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 80, 1, 1.3, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.1, 3, 1, 1, 0.3, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1, 1.8, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1.6, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.6, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.035, 0.02, 0.02, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSMID_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 1.4, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.6, 2.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.185, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.7, 1, 1, 0, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.09, 0.007, 0.007, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/DEAD/DEADOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/DEAD/DEADOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSDEAD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSDEAD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSFULL_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSFULL_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSLOW_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3.4, 4, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.52, 0.002, 0.0001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.52, 0.058, 0.0001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.505, 0.019, 0.0001, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSLOW_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSMID_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.8, 2.5, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.13, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.16, 0.16, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSMID_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.25, 0.001, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.12, 0.029, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.175, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.13, 0.13, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.008, 0.008, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.007, 0.007, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSFULL_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSFULL_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSLOW_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.4, 2.8, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.21, 0.008, 0.008, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.44, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.43, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 2.2, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.265, 0.003, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSLOW_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSMID_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.7, 2.3, 1, 1, 0, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.15, 0.11, 0.11, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSMID_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.13, 0.019, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.006, 0.006, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.19, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.12, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 55, 1.8, 3.2, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.12, 0.023, 0.023, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSLOW_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.006, 0.006, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.19, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.12, 0.012, 0.012, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSLOW_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSMID_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.005, 0.005, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.0005, 0.0005, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.6, 2.6, 1, 1, 0.1, 4, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.08, 0.05, 0.05, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 2.4, 3, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.09, 0.03, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSMID_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSDEAD_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.25, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.6, 1.2, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.175, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0.3, 0, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.12, 0.005, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSDEAD_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSFULL_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1.5, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.1, 0.1, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSFULL_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSLOW_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.2, 0.034, 0.034, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.5, 2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.07, 0.07, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.16, 0.029, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.05, 0.017, 0.017, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSLOW_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSMID_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.5, 2.3, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.15, 0.15, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.13, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.08, 0.05, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSMID_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSDEAD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.12, 0.015, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.015, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.175, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.07, 0.07, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSDEAD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSFULL_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSFULL_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSLOW_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.05, 0.05, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.4, 1.43, 1, 1, 0.1, 4, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.185, 0.05, 0.05, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 3, 4, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.21, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.6, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.17, 0.028, 0.028, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSLOW_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSMID_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.7, 1.4, 1, 1, 0.3, 5, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.13, 0.08, 0.08, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2.4, 3.4, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.14, 0.015, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.1, 0.016, 0.016, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.1, 1, 1, 0, 6, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.11, 0.018, 0.018, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSMID_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.25, 0.001, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.12, 0.029, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 3.5, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.195, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "FALSE", "TRUE", "FALSE", "FALSE", 0.165, 0.07, 0.07, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSDEAD_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSDEAD_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSFULL_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 0.7, 0.9, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.07, 0.07, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSFULL_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSLOW_BARREN_INDUSTRIAL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 2, 2.6, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.9, 1.4, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.019, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 40, 0.4, 1.4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.086, 0.086, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSLOW_BARREN_INDUSTRIAL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSMID_BARREN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/LARGEPROPS/LARGEFLAG.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 80, 1, 1.3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 2.1, 3, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/MEDIUMCACTUS.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 35, 1, 1.8, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1.6, 2.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 40, 0.8, 1.6, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.035, 0.02, 0.02, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/BARREN/BARRENOBJECTSMID_BARREN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 35, 1.4, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 40, 1.6, 2.4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.185, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/ROCKS/LARGEROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 35, 1.6, 2, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/BARREN/PLANTS/LARGECACTUS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 35, 1, 1.7, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.007, 0.007, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/CAVE/CAVEBIOMEMID.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/DEAD/DEADOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/DEAD/DEADOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSDEAD_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSDEAD_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSFULL_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSFULL_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSLOW_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 3.4, 4, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.002, 0.0001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.52, 0.058, 0.0001, 0.0001), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "FOREST", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.505, 0.019, 0.0001, 0.0001), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSLOW_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSMID_FROZEN.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.8, 2.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.6, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.16, 0.16, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/FROZEN/FROZENOBJECTSMID_FROZEN.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.001, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.029, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.175, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGETREEBARE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.13, 0.13, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.5, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.008, 0.008, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/FROZEN/LARGEPROPS/LARGEROCKS.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 1, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.007, 0.007, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSFULL_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 45, 0.7, 1, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/LARGEROCK.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 30, 1.2, 1.5, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.24, 0.0015, 0.0015, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSFULL_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSLOW_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 2.4, 2.8, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.008, 0.008, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.44, 0.02, 0.02, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FOREST", -1, 128, 0, 50, 1.6, 2.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.43, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1, 2.2, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.265, 0.003, 0.003, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSLOW_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSMID_LUSH.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.7, 2.3, 1, 1, 0, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.15, 0.11, 0.11, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/LUSH/LUSHOBJECTSMID_LUSH.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.019, 0.019, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/TREES/MEDIUMTREE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.05, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMX", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.006, 0.006, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMX", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMX", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMX", -1, 128, 0, 55, 1.8, 3.2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.023, 0.023, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSFULL_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSLOW_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.006, 0.006, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.3, 1.5, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.19, 0.06, 0.06, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 1.7, 2.7, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 1.5, 2.1, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.012, 0.012, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSLOW_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSMID_RADIOACTIVE.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 40, 0.7, 1.2, 1, 1, 0, 8, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.005, 0.005, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.06, 0.0005, 0.0005, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 50, 1.6, 2.6, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05, 0.05, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 2.4, 3, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.09, 0.03, 0.03, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/RADIOACTIVE/RADIOACTIVEOBJECTSMID_RADIOACTIVE.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSDEAD_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 0.6, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.6, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.01, 0.01, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.175, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/RADIOACTIVE/LARGE/CURVEDROCK.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/COMMON/ROCKS/LARGE/PROCSHAPE1.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 45, 0.8, 1.4, 1, 1, 0.3, 0, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.005, 0.005, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSDEAD_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSFULL_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 45, 0.5, 1.5, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.075, 0.1, 0.1, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSFULL_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSLOW_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 50, 1.9, 2.3, 1, 1, 0.1, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.2, 0.034, 0.034, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 45, 0.5, 2, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.22, 0.07, 0.07, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.16, 0.029, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.05, 0.017, 0.017, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSLOW_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSMID_SCORCHED.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 0.5, 2.3, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.15, 0.15, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.7, 4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.003, 0.003, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 3, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.08, 0.05, 0.05, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/SCORCHED/SCORCHEDOBJECTSMID_SCORCHED.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSDEAD_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.015, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "BLANKETCLUMP", -1, 128, 0, 60, 0.7, 1.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.18, 0.015, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/LARGE/LARGESPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1.5, 2.7, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.175, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/SCORCHED/MEDIUM/MEDIUMSPIRE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 0.7, 1.8, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.115, 0.07, 0.07, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSDEAD_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSFULL_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSFULL_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSLOW_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.5, 1.7, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.23, 0.05, 0.05, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.4, 1.43, 1, 1, 0.1, 4, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.185, 0.05, 0.05, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 3, 4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.21, 0.012, 0.012, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.04, 0.04, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.6, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.17, 0.028, 0.028, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSLOW_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSMID_TOXIC.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 0.7, 1.4, 1, 1, 0.3, 5, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.13, 0.08, 0.08, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "BARRENROCKCLUMP", -1, 128, 0, 55, 2.4, 3.4, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.14, 0.015, 0.015, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "GRASSCLUMP", -1, 128, 0, 55, 0.6, 2.1, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.1, 0.016, 0.016, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "ROCKCLUMP", -1, 128, 0, 55, 1, 2.1, 1, 1, 0, 6, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.11, 0.018, 0.018, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/TOXIC/TOXICOBJECTSMID_TOXIC.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERDEAD.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 50, 2.5, 3, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.25, 0.001, 0.002, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "FLORACLUMP", -1, 128, 0, 60, 1.5, 2.2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.12, 0.029, 0.029, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/FUNGALTREE.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 2, 3.5, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.195, 0.03, 0.03, 1), }, --## 3c_biome_landm
						{ ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",}, ["ADD_OPTION"] 	= "ADDafterLINE", ["ADD"] = AddLandmarkProp("MODELS/PLANETS/FOUNDPATH/TOXIC/LARGE/TENDRIL.SCENE.MBIN", "SPARSECLUMP", -1, 128, 0, 60, 1, 2, 1, 1, 0, 10, 180, 0, 0, "TRUE", "TRUE", "FALSE", "FALSE", 0.165, 0.07, 0.07, 1), }, --## 3c_biome_landm
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERDEAD.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERFULL.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { {"METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERFULL.MBIN","METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERMID.MBIN"}, }, --## 3a1_biome
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end

					{ ["MBIN_FILE_SOURCE"] 	=  { "METADATA/SIMULATION/SOLARSYSTEM/FOUNDPATH/UNDERWATER/UNDERWATERMID.MBIN", }, --## 3a2_biome_last
					["EXML_CHANGE_TABLE"] 	= {
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["ADD"] = replaceObjects, ["ADD_OPTION"]  = "ADDafterSECTION", },
						{ ["PRECEDING_KEY_WORDS"] = {"Objects",}, ["REMOVE"] = "SECTION" },
					}, }, --## 3f_biome_end
			} --## 4b_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE