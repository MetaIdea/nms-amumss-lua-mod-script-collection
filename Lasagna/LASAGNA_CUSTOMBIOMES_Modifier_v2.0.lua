--[[

*In order for this LUA script to work, you must move the included CUSTOMBIOMES folder to AMUMSS's "ModExtraFilesToInclude" folder
(this script modifies those custom EXML files, which are then spawned in-game via. multi-biome.pak)

(*you can pretty much ignore everything up to section 3)

There are 4 sections in this script:

1. Global variables		  			 	  	- i.e. quick adjustments
2. Unused function							- i.e. modified from Shaidak's generation LUA, but I never ended up using this
3. Used function							- i.e. to add exml to custom biomes
4. Testing									- i.e. if you want to spawn a specific custom biome in-game to test
5. Custom biomes							- i.e. all biomes with function calls

]]


--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = 1. GLOBAL VARIABLES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


ReplaceWithDistantObjectsRaw = 
[[
    <Property name="DistantObjects">
    </Property>
]]



ReplaceWithLandmarksRaw = 
[[
    <Property name="Landmarks">
    </Property>
]]


--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------- v The below section is from Shaidak's Generation (*** = Ghostly comment) v -------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


-- Density = {
	-- HighE				= 0.048,
	-- HighD				= 0.042,
	-- HighC				= 0.038,
	-- HighB				= 0.032,
	-- HighA				= 0.028,
	-- Mid					= 0.024,
	-- LowA				= 0.020,
	-- LowB				= 0.018,
	-- LowC				= 0.012,
	-- LowD				= 0.009,
	-- LowE				= 0.006,
	-- LowF				= 0.003,
	-- LowG				= 0.0015,
-- }

-- MaxAngle = {
	-- Inv					= 180,
	-- AvA					= 60,
	-- AvB					= 55,
	-- AvC					= 50,
	-- AvD					= 45,
	-- AvE					= 40,
	-- AvF					= 35,
-- }

-- Scale = {
	-- LargeE				= { 6, 9, },
	-- LargeD				= { 5, 8, },
	-- LargeCE				= { 4, 9, },
	-- LargeC				= { 4, 6, },
	-- LargeB				= { 3, 5, },
	-- LargeA				= { 2, 3, },
	-- NormalA				= { 1, 3, },
	-- Normal				= { 1, 2, },
	-- SmallA				= { 0.6, 1.4, },
-- }

-- Mod = {
	-- -----------------------------------------------------------------------------------------------------------------------------------------
	-- Template	= "Highest", --***Type in your preference here. Five options: Highest, High, Medium, Low, or Lowest. Capitalization matters
							 -- --the above changes FlatDensity, which AFAIK is how many props spawn on flat terrain (highest = highest density)
	-- -----------------------------------------------------------------------------------------------------------------------------------------
	-- DensityThreshold = {
		-- High			= Density.HighB,
		-- Mid				= Density.LowA,
		-- Low				= Density.LowC,
	-- },

	-- DensityModifier = {
		-- High			= 0.008,
		-- Mid				= 0.004,
		-- Low				= 0.001,
	-- },

	-- Preset = {
		-- Lowest			= 4,
		-- Low				= 3,
		-- Medium			= 2,
		-- High			= 1,
		-- Highest			= 0,
	-- },
-- }
--------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------- ^ The above section is from Shaidak's Generation ^ ------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = 2. UNUSED FUNCTION = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------




-- --Function calls appear next to EXML_CHANGE_TABLE for all biomes. UNUSED.

-- local function BiomeModification(modelPath2,
					-- placement2, priority2, coverage2, flatDensity2, maxRotation2, minScale2, maxScale2) --minScale1
	
	-- ----------------------------------------------------------------------------------------------------------------------------------------------
	-- --The below section is from Shaidak's Generation (modified)-----------------------------------------------------------------------------------
	-- ----------------------------------------------------------------------------------------------------------------------------------------------
	-- local presetValue = Mod.Preset[Mod.Template]
	-- local densityModifier = 0
	-- local maxAngle2 = 50

	-- if flatDensity2 > Mod.DensityThreshold.High then
		-- densityModifier = Mod.DensityModifier.High * presetValue
	-- elseif flatDensity2 > Mod.DensityThreshold.Mid then
		-- densityModifier = Mod.DensityModifier.Mid * presetValue
	-- elseif flatDensity2 > Mod.DensityThreshold.Low then
		-- densityModifier = Mod.DensityModifier.Low * presetValue
	-- end

	-- flatDensity2 = flatDensity2 - densityModifier
	
	
	-- if maxScale2 <= Scale.Normal[2] then
		-- maxAngle2 = MaxAngle.AvA
	-- elseif maxScale2 <= Scale.LargeA[2] then
		-- maxAngle2 = MaxAngle.AvB
	-- elseif maxScale2 <= Scale.LargeC[2] then
		-- maxAngle2 = MaxAngle.AvC
	-- else
		-- maxAngle2 = MaxAngle.AvD
	-- end
	

	
	-- biomeModifier =
	-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["VALUE_MATCH"] 		= "", 
							-- ["INTEGER_TO_FLOAT"] = "FORCE",
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"SlopeMultiplier",	0.0001}, --will affect lowest planet quality setting
								-- {"SlopeDensity",	flatDensity2},			--i.e. 0
							-- }	
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["VALUE_MATCH"] 		= "", 
							-- --["INTEGER_TO_FLOAT"] = "FORCE",
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"Seed",	0},
								-- {"AltId",	""},
								-- {"ProceduralTexture",	"TkProceduralTextureChosenOptionList.xml"},
								-- {"UseSeedValue",	"False"},
								-- {"LargeObjectCoverage",	"DoNotPlaceClose"},
								-- {"OverlapStyle",	"None"},
								-- {"MinHeight",	-1},
								-- {"MaxHeight",	128},
								-- {"RelativeToSeaLevel",	"True"},
								-- {"MinAngle",	0},
								-- {"MinRegionRadius",	0},
								-- {"MaxRegionRadius",	3},
								-- {"MaxImposterRadius",	99}, --will affect lowest planet quality setting
								-- {"FadeInStartDistance",		0},
								-- {"FadeInEndDistance",		0},
								-- {"FadeInOffsetDistance",	0},
								-- {"FadeOutOffsetDistance",	0},
								-- {"MatchGroundColour",	"False"},
								-- {"GroundColourIndex",	"Auto"},
								-- {"AlignToNormal",	"False"},
								-- {"MinScaleY",	1},
								-- {"MaxScaleY",	1},
								-- {"SlopeScaling",	1},
								-- {"AutoCollision",	"False"},
								-- {"CollideWithPlayer",	"True"},
								-- {"CollideWithPlayerVehicle",	"True"},
								-- {"DestroyedByPlayerVehicle",	"True"},
								-- {"DestroyedByPlayerShip",	"True"},
								-- {"DestroyedByTerrainEdit",	"True"},
								-- {"InvisibleToCamera",	"True"},
								-- {"CreaturesCanEat",	"False"},
								-- {"ShearWindStrength",	0},
								-- {"DestroyedByVehicleEffect",	"VEHICLECRASH"},
								-- {"Filename",						modelPath2}, 			--i.e. "MODELS/PLANETS/BIOMES/FROZEN/SMALLPROPS/SMALLROCKS.SCENE.MBIN"
								-- {"Placement",						placement2}, 			--i.e. "FLORACLUMP"
								-- {"PlacementPriority",				priority2}, 			--i.e. "Normal"
								-- {"Coverage",						coverage2}, 			--i.e. 0.2
								-- {"FlatDensity",						flatDensity2}, 			--i.e. 0.5
								-- {"MaxAngle",						maxAngle2}, 			--i.e. 60
								-- {"MaxXZRotation",					maxRotation2}, 					--i.e. 0
								-- {"PatchEdgeScaling",				0}, 		--i.e. 0.1
								-- {"MinScale",						minScale2}, 			--i.e. 0.4
								-- {"MaxScale",						maxScale2}, 			--i.e. 0.6
							-- }	
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["VALUE_MATCH"] 		= "", 
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+1",     --one line down
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	0}
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+2",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	20} --All these = *2
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+3",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	60}
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+4",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	150} 
							-- }
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"Objects","Landmarks"},
							-- ["SPECIAL_KEY_WORDS"] 	= {"ID","STANDARD",},
							-- ["PRECEDING_FIRST"] = "TRUE",
							-- ["INTEGER_TO_FLOAT"]    = "FORCE",
							-- ["REPLACE_TYPE"] 		= "ALL",
							-- ["LINE_OFFSET"] 		= "+5",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"LodDistances",	500}
							-- }
						-- },
						
						
						
						-- --{
							-- --["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks","GcObjectSpawnData.xml"},
							-- --["REMOVE"] 				= "SECTION",
						-- --},
	-- }
-- return biomeModifier
-- end


--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = 3. USED FUNCTIONS = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--This adds the exml "context" for each model, i.e. the max scale.


function BiomeExtension(modelPath1, maxAngle1, minScale1, maxScale1, maxRotation1, coverage1, flatDensity1)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath1 .. [[" />
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
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="]] .. maxAngle1 .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale1 .. [[" />
        <Property name="MaxScale" value="]] .. maxScale1 .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="]] .. maxRotation1 .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerShip" value="True" />
        <Property name="DestroyedByTerrainEdit" value="True" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage1 .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
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
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
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

--Just buildings
function BiomeExtensionBuildings(modelPath1, maxAngle1, minScale1, maxScale1, maxRotation1, coverage1, flatDensity1)
return [[
      <Property value="GcObjectSpawnData.xml">
        <Property name="DebugName" value="" />
        <Property name="Type" value="Instanced" />
        <Property name="Resource" value="GcResourceElement.xml">
          <Property name="Filename" value="]] .. modelPath1 .. [[" />
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
        <Property name="Placement" value="FLORACLUMP" />
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="PlacementPriority" value="Normal" />
        <Property name="LargeObjectCoverage" value="DoNotPlaceClose" />
        <Property name="OverlapStyle" value="None" />
        <Property name="MinHeight" value="-1" />
        <Property name="MaxHeight" value="128" />
        <Property name="RelativeToSeaLevel" value="True" />
        <Property name="MinAngle" value="0" />
        <Property name="MaxAngle" value="]] .. maxAngle1 .. [[" />
        <Property name="MatchGroundColour" value="False" />
        <Property name="GroundColourIndex" value="Auto" />
        <Property name="SwapPrimaryForSecondaryColour" value="False" />
        <Property name="SwapPrimaryForRandomColour" value="False" />
        <Property name="AlignToNormal" value="False" />
        <Property name="MinScale" value="]] .. minScale1 .. [[" />
        <Property name="MaxScale" value="]] .. maxScale1 .. [[" />
        <Property name="MinScaleY" value="1" />
        <Property name="MaxScaleY" value="1" />
        <Property name="SlopeScaling" value="1" />
        <Property name="PatchEdgeScaling" value="0" />
        <Property name="MaxXZRotation" value="]] .. maxRotation1 .. [[" />
        <Property name="AutoCollision" value="False" />
        <Property name="CollideWithPlayer" value="True" />
        <Property name="CollideWithPlayerVehicle" value="True" />
        <Property name="DestroyedByPlayerVehicle" value="False" />
        <Property name="DestroyedByPlayerShip" value="False" />
        <Property name="DestroyedByTerrainEdit" value="False" />
        <Property name="InvisibleToCamera" value="False" />
        <Property name="CreaturesCanEat" value="False" />
        <Property name="ShearWindStrength" value="0" />
        <Property name="DestroyedByVehicleEffect" value="VEHICLECRASH" />
        <Property name="QualityVariantData" value="GcObjectSpawnDataVariant.xml">
          <Property name="ID" value="STANDARD" />
          <Property name="Coverage" value="]] .. coverage1 .. [[" />
          <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
          <Property name="SlopeMultiplier" value="3" />
          <Property name="MaxRegionRadius" value="3" />
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
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
            <Property name="MaxRegionRadius" value="3" />
            <Property name="MaxImposterRadius" value="99" />
            <Property name="FadeOutStartDistance" value="9999" />
            <Property name="FadeOutEndDistance" value="9999" />
            <Property name="FadeOutOffsetDistance" value="0" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="40" />
              <Property value="120" />
              <Property value="300" />
              <Property value="1000" />
            </Property>
          </Property>
          <Property value="GcObjectSpawnDataVariant.xml">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="]] .. coverage1 .. [[" />
            <Property name="FlatDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeDensity" value="]] .. flatDensity1 .. [[" />
            <Property name="SlopeMultiplier" value="0.0001" />
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



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LASAGNA_CUSTOMBIOMES_Modifier_v2.0.pak",
["MOD_AUTHOR"]				= "AGhostlyPepper (aka Lasagna) - with unused Shaidak's Generation code",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
			
			
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 4. TESTING = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--To use this: 1. uncomment this whole section, notice you have to be on a frozen biome for this to work (FROZENWILD.MBIN),
--2. Comment out all biome "sections" except the one you want to test, i.e. the 7 lines following "--GHOSTLY0CITY"
--3. Feel free to make your own combination, but pls test before adding them to actual custom files in step 5
--(obviously, you'll need to copy & paste an EXML file & rename it accordingly to add a new biome)

				-- {
					-- ["MBIN_FILE_SOURCE"] 	= 
					-- {
						-- "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\PLANT\FROZENWILD.MBIN",
					-- },
					-- ["EXML_CHANGE_TABLE"] 	=
					-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",}, --This is to add DistantObjects section and to add custom models to it
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="DistantObjects" />]], ReplaceWithDistantObjectsRaw },
							-- }	
						-- },
						-- {		--replaces the added line above --ADDafterSECTION --REPLACEatLINE --ADDafterLINE
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							

							
							
							-- --X
							-- --GHOSTLY0CITY
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.0035).. --tall top collision
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0075).. --VERY wide
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.012),
							
							-- --X
							-- --GHOSTLY1CITYFLOATINGISLANDS
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.003).. --tall top collision
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.007).. --VERY wide
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.02),
							
							-- --X
							-- --GHOSTLY2GIANTFLOWERSFLOATINGISLANDS
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.02),
							
							-- --X
							-- --GHOSTLY3GIANTFLOWERS
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.14)..
							-- BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.14),
							
							-- --X
							-- --GHOSTLY4STYLIZEDTREEBIRCH
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHGREEN.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.08)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHYELLOW.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK3.SCENE.MBIN", 40, 1, 6, 5, 0.18, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK1.SCENE.MBIN", 40, 1, 6, 5, 0.18, 0.032),
							
							-- --X
							-- --GHOSTLY5STYLIZEDTREEBIRCHDEAD
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK2.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK4TALL.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032),
							
							-- --X
							-- --GHOSTLY6STYLIZEDTREEDEAD
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							-- BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK5WIDE.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 2, 7, 10, 0.18, 0.025),
							
							-- --OK
							-- --GHOSTLY7STYLIZEDTREENORM1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPINK.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.17)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEDARKRED.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.17),
							
							-- --OK
							-- --GHOSTLY8STYLIZEDTREENORM2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEGREEN.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.1)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREECYAN.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREERED.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13),
							
							-- --OK
							-- --GHOSTLY9STYLIZEDTREENORM3
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEBLUE.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.14)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPURPLE.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.17),
							
							
							-- --OK
							-- --GHOSTLY10ASTYLIZEDTREEPINE
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.17)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER1HUGE.SCENE.MBIN", 10, 0.6, 1.2, 0, 0.15, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER4.SCENE.MBIN", 10, 1, 1.5, 0, 0.15, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER5.SCENE.MBIN", 10, 1, 1.5, 0, 0.15, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER6.SCENE.MBIN", 10, 1, 1.5, 0, 0.15, 0.02),

							
							-- --OK
							-- --GHOSTLY10BSTYLIZEDTREEPINE
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.1)..
							-- BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINERED.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.13)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", 10, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", 10, 0.8, 1.5, 0, 0.18, 0.02)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", 10, 0.8, 1.5, 0, 0.18, 0.02),

							
							
							
							
							
							
							-- --~~~```11 cont'd in landmarks below```~~~--
							
							
							
							
							
							
							
							-- --OK
							-- --GHOSTLY21ALIENFOLIAGE
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", 20, 0.5, 5, 10, 0.18, 0.022)..
							-- BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", 60, 4, 21, 10, 0.18, 0.08)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER1HUGE.SCENE.MBIN", 10, 0.6, 1.2, 10, 0.15, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER4.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER5.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.032)..
							-- BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER6.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.032),
							
							-- --OK
							-- --GHOSTLY22ALIENSWAMP1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP1_EGGTREETHING.SCENE.MBIN", 60, 70, 450, 10, 0.18, 0.1)..
							-- BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP2_MANGROVE.SCENE.MBIN", 40, 70, 650, 10, 0.18, 0.011)..
							-- BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP3_BIGFLOWERTHING.SCENE.MBIN", 60, 70, 450, 10, 0.18, 0.14),
							
							-- --
							-- --GHOSTLY23ALIENSWAMP2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.045),
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects",}, --This is to add DistantObjects section and to add custom models to it
							-- ["REPLACE_TYPE"] 		= "RAW",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- { [[    <Property name="Landmarks" />]], ReplaceWithLandmarksRaw },
							-- }	
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							
							-- --OK
							-- --GHOSTLY11TREESBIRCH1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_GREEN.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_NORMAL.SCENE.MBIN", 30, 1, 9, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_PURPLE.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.045),
							
							-- --OK
							-- --GHOSTLY12TREESBIRCH2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_BLUE.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.095)..
							-- BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_RED.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.065),
							
							-- --OK
							-- --GHOSTLY13TREESMAPLE1.EXML
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_PINK.SCENE.MBIN", 30, 1, 9, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_BLUE.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_GREEN.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.055),
							
							-- --OK
							-- --GHOSTLYLY14TREESMAPLE2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_ORANGE.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.065)..
							-- BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_NORMAL.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.095),
							
							-- --OK
							-- --GHOSTLYLY15TREESNORMAL1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.045)..
							-- BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_BLUE.SCENE.MBIN", 30, 1, 8, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_RED.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.045),
							
							-- --OK
							-- --GHOSTLYLY16TREESNORMAL2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_PURPLE.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.065)..
							-- BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_ORANGE.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.095),
							
							-- --OK
							-- --GHOSTLYLY17TREESPALM1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_BLUE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_NORMAL.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.055)..
							-- BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_PURPLE.SCENE.MBIN", 30, 1, 8, 10, 0.18, 0.065),
							
							-- --OK
							-- --GHOSTLYLY18TREESPALM2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_YELLOW.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.11)..
							-- BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_RED.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.09),
							
							-- --OK
							-- --GHOSTLYLY19TREESPINE1
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_PURPLE.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.085)..
							-- BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_BLUE.SCENE.MBIN", 60, 1, 16, 10, 0.18, 0.075)..
							-- BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_NORMAL.SCENE.MBIN", 45, 1, 15, 10, 0.18, 0.075),
							
							-- --OK
							-- --GHOSTLYLY20TREESPINE2
							-- ["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_GREENISH.SCENE.MBIN", 60, 1, 18, 10, 0.18, 0.095)..
							-- BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_RED.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.17),
							
						-- },
					-- },
				-- },
				
				
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------
--= = = = = = = = = = = = = = = = = = = = = = = = = = = = 5. CUSTOM BIOMES = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
--------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------		
--This modifies the actual files in CUSTOMBIOMES
				
				--Custom biome 1
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY1CITY.MBIN", --.MBIN
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.003).. --tall top collision
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.007).. --VERY wide
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018),
						},
					},
				},
				--Custom biome 2
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY2GIANTFLOWERSFLOATINGISLANDS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 60, 0.8, 1.5, 0, 0.18, 0.01),
						},
					},
				},
				--Custom biome 3
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY3GIANTFLOWERS.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER1.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTFLOWERS\GIANTFLOWER2.SCENE.MBIN", 60, 3, 5, 15, 0.18, 0.042)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_SHORT.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28)..
							BiomeExtension("CUSTOMMODELS\GIANTGRASS\GIANTGRASS_TALL.SCENE.MBIN", 60, 3, 5, 5, 0.18, 0.28),
						},
					},
				},
				--Custom biome 4
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY4STYLIZEDTREEBIRCH.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHGREEN.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCH\STYLEBIRCHYELLOW.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.084)..
							BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.04)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK3.SCENE.MBIN", 40, 1, 11, 5, 0.18, 0.032)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK1.SCENE.MBIN", 40, 1, 8, 5, 0.18, 0.032),
						},
					},
				},
				--Custom biome 5
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY5STYLIZEDTREEBIRCHDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEBIRCHDEAD\STYLEDEADBIRCH2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK2.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK4TALL.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032),
						},
					},
				},
				--Custom biome 6
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY6STYLIZEDTREEDEAD.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE1.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEDEAD\STYLEDEADTREE2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.084)..
							BiomeExtension("CUSTOMMODELS\GIANTROCKS\GIANTROCK5WIDE.SCENE.MBIN", 40, 1, 5, 5, 0.18, 0.032)..
							BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 2, 7, 10, 0.18, 0.025),
						},
					},
				},
				--Custom biome 7
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY7STYLIZEDTREENORM1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPINK.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEDARKRED.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.13)..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.02),
						},
					},
				},
				--Custom biome 8
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY8STYLIZEDTREENORM2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEGREEN.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.08)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREECYAN.SCENE.MBIN", 60, 1, 7, 12, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.06)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREERED.SCENE.MBIN", 60, 1, 8, 12, 0.18, 0.1),
						},
					},
				},
				--Custom biome 9
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY9STYLIZEDTREENORM3.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEBLUE.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.1)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREENORMAL\STYLETREEPURPLE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.12)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01)..
							BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.01),
						},
					},
				},
				--Custom biome 10A
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY10ASTYLIZEDTREEPINE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.17)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.01),
						},
					},
				},
				--Custom biome 10B
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY10BSTYLIZEDTREEPINE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINEGREEN.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINELIGHT.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.1)..
							BiomeExtension("CUSTOMMODELS\STYLIZEDTREEPINE\STYLEPINERED.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.13)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", 50, 0.8, 1.5, 0, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", 50, 0.8, 1.5, 0, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", 50, 0.8, 1.5, 0, 0.18, 0.01),
						},
					},
				},
				--Custom biome 11
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY11TREESBIRCH1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_GREEN.SCENE.MBIN", 60, 1, 17, 10, 0.18, 0.055)..
							BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_NORMAL.SCENE.MBIN", 30, 1, 2, 13, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_PURPLE.SCENE.MBIN", 60, 1, 18, 10, 0.18, 0.045),
						},
					},
				},
				--Custom biome 12
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY12TREESBIRCH2.EXML.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_BLUE.SCENE.MBIN", 60, 1, 15, 10, 0.18, 0.095)..
							BiomeExtension("CUSTOMMODELS\TREESBIRCH\BIRCHTREE_RED.SCENE.MBIN", 60, 1, 17, 10, 0.18, 0.065),
						},
					},
				},
				--Custom biome 13
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY13TREESMAPLE1.EXML.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_PINK.SCENE.MBIN", 30, 1, 13, 10, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_BLUE.SCENE.MBIN", 60, 1, 15, 10, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_GREEN.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.055),
						},
					},
				},
				--Custom biome 14
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY14TREESMAPLE2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_ORANGE.SCENE.MBIN", 60, 1, 16, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_NORMAL.SCENE.MBIN", 60, 1, 7, 14, 0.18, 0.095),
						},
					},
				},
				--Custom biome 15
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY15TREESNORMAL1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.045)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_BLUE.SCENE.MBIN", 30, 1, 2, 10, 0.18, 0.055)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_RED.SCENE.MBIN", 60, 1, 15, 10, 0.18, 0.045),
						},
					},
				},
				--Custom biome 16
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY16TREESNORMAL2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_PURPLE.SCENE.MBIN", 60, 1, 17, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_ORANGE.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.095),
						},
					},
				},
				--Custom biome 17
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY17TREESPALM1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_BLUE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_NORMAL.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.065)..
							BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_PURPLE.SCENE.MBIN", 30, 1, 8, 10, 0.18, 0.075),
						},
					},
				},
				--Custom biome 18
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY18TREESPALM2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_YELLOW.SCENE.MBIN", 60, 1, 7, 10, 0.18, 0.12)..
							BiomeExtension("CUSTOMMODELS\TREESPALM\PALMTREE_RED.SCENE.MBIN", 60, 1, 14, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 19
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY19TREESPINE1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_PURPLE.SCENE.MBIN", 60, 1, 12, 10, 0.18, 0.085)..
							BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_BLUE.SCENE.MBIN", 60, 1, 20, 10, 0.18, 0.075)..
							BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_NORMAL.SCENE.MBIN", 45, 1, 19, 10, 0.18, 0.075),
						},
					},
				},
				--Custom biome 20
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY20TREESPINE2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_GREENISH.SCENE.MBIN", 60, 1, 22, 10, 0.18, 0.095)..
							BiomeExtension("CUSTOMMODELS\TREESPINE\PINETREE_RED.SCENE.MBIN", 60, 1, 16, 10, 0.18, 0.17),
						},
					},
				},
				--Custom biome 21
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY21ALIENFOLIAGE.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_FLATTENT.SCENE.MBIN", 20, 0.5, 5, 10, 0.18, 0.022)..
							BiomeExtension("CUSTOMMODELS\ALIENFOLIAGE\ALIENFOLIAGE1_TREEGREEN.SCENE.MBIN", 60, 4, 21, 10, 0.18, 0.05)..
							BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER4.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.01)..
							BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER5.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.01)..
							BiomeExtension("CUSTOMMODELS\ICEBURG\GLACIER6.SCENE.MBIN", 10, 1, 1.5, 10, 0.15, 0.01),
						},
					},
				},
				--Custom biome 22
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY22ALIENSWAMP1.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP1_EGGTREETHING.SCENE.MBIN", 60, 70, 450, 10, 0.18, 0.1)..
							BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP2_MANGROVE.SCENE.MBIN", 40, 70, 650, 10, 0.18, 0.011)..
							BiomeExtension("CUSTOMMODELS\ALIENSWAMP\ALIENSWAMP3_BIGFLOWERTHING.SCENE.MBIN", 60, 70, 450, 10, 0.18, 0.14),
						},
					},
				},
				--Custom biome 23
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY23ALIENSWAMP2.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.035)..
							BiomeExtension("CUSTOMMODELS\STRANGETREE_FLOATLEAF\STRANGETREE_FLOATLEAF2.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.035),
						},
					},
				},
				--Custom biome 24
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY24CITYFLOATINGISLANDS3.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.003).. --tall top collision
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.007).. --VERY wide
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONEGREEN.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018),
						},
					},
				},
				--Custom biome 25
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY25CITYFLOATINGISLANDS4.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.003).. --tall top collision
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.007).. --VERY wide
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPSNOW.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGESNOW.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018)..
							BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESNOW.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018),
						},
					},
				},
				
				
				
				--MOSTLY HIDDEN VANILLA ASSETS:
				--(added in v2.0)
				
				

				--Custom biome 26
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY26.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG02.SCENE.MBIN", 40, 1, 4, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG01.SCENE.MBIN", 40, 1, 3, 0, 0.18, 0.02),
						},
					},
				},
				--Custom biome 27
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY27.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("", 60, 1, 9, 10, 0.18, 0.06)..
							BiomeExtension("MODELS\PLANETS\COMMON\FLAGS\MARTIANFLAG03.SCENE.MBIN", 40, 1, 3, 0, 0.18, 0.02)..
							BiomeExtensionBuildings("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.006)..
							BiomeExtensionBuildings("MODELS\PLANETS\SNOW\WRECKS\GIANTWRECKEDSHIP.SCENE.MBIN", 10, 1, 1.1, 0, 0.18, 0.006),
						},
					},
				},
				--Custom biome 29
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY29.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\BARREN\LARGEPROPS\LARGEFLAG.SCENE.MBIN", 40, 1, 3, 10, 0.18, 0.03)..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\MONOLITH\MONOLITH.SCENE.MBIN", 10, 1, 9, 0, 0.18, 0.005)..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\GRAVEINCAVE\GRAVEINCAVE.SCENE.MBIN", 10, 1, 9, 0, 0.18, 0.005),
						},
					},
				},
				--Custom biome 30
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY30.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\SNOW\CONSTRUCTS\CONSTRUCT01.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.006)..
							BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\RELIC\RELIC.SCENE.MBIN", 10, 1, 1.2, 0, 0.18, 0.05)..
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE01.SCENE.MBIN	", 60, 1, 5, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 31
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY31.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT02.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEBUSH1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUS.SCENE.MBIN", 10, 0.8, 2, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE02.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 32
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY32.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT03.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\DEADTREE03.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\NEVADA\LARGEPLANTS\LARGEPLANT01.SCENE.MBIN", 60, 1, 1.2, 10, 0.18, 0.02),
						},
					},
				},
				--Custom biome 33
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY33.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtensionBuildings("MODELS\PLANETS\BIOMES\NEVADA\LARGEPROP\LARGEPYRAMID.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\BENDYTREE01.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.06),
						},
					},
				},
				--Custom biome 34
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY34.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALIEN\LARGEPLANT\LARGETREE02.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLODOCUSALIEN.SCENE.MBIN", 10, 0.8, 2, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALIEN\MEDIUMPROP\MEDIUMPROP01.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 35
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY35.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.07)..
							BiomeExtensionBuildings("MODELS\PLANETS\SNOW\WRECKS\GIANTWRECKEDSHIP.SCENE.MBIN", 10, 1, 1.1, 0, 0.18, 0.006),
						},
					},
				},
				--Custom biome 36
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY36.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGESPRUCE01.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMDEADTREE01.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 37
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY37.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 2.5, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMSPRUCE01.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 38
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY38.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\MEDIUMUMBRELLA01.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLCEDAR01.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\DIPLODOCUS\DIPLOPOSE.SCENE.MBIN", 10, 0.5, 2, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\SMALLSPRUCE01.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 39
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY39.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\ALPINE\LARGEPLANT\LARGEFIR01.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\SPACE\WRECKS\DEBRIS\PANEL.SCENE.MBIN", 60, 1, 2, 90, 0.18, 0.06)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN", 10, 1, 1.5, 90, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.06),
						},
					},
				},
				--Custom biome 40
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY40.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTSPIKE.SCENE.MBIN", 10, 1, 4, 10, 0.18, 0.05)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\PILLAR1.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\SQUATPILLAR1.SCENE.MBIN", 20, 1, 6, 10, 0.18, 0.05),
						},
					},
				},
				--Custom biome 43
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY43.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\TRICERATOPS\QUADREPTILE.SCENE.MBIN", 10, 0.8, 3, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\MEDIUMCREATURE\ANTELOPE\ANTELOPE.SCENE.MBIN", 10, 0.6, 1.1, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\COMMON\CHARACTERS\ASTRONAUT\ASTRONAUT01.SCENE.MBIN", 10, 1, 4, 0, 0.18, 0.03)..
							BiomeExtension("MODELS\COMMON\ROBOTS\WALKER.SCENE.MBIN", 10, 1, 8, 0, 0.18, 0.03),
							--EXPERIMENTAL
						},
					},
				},
				--Custom biome 44
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY44.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEMANGROVE.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.09)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.095)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO.SCENE.MBIN", 10, 0.8, 2, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE2.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.11),
						},
					},
				},
				--Custom biome 45
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY45.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGEPLANT1.SCENE.MBIN", 60, 1, 4, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINOSTANDARD.SCENE.MBIN", 10, 0.5, 2, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\MEDIUMTREE3.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.9)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1.SCENE.MBIN", 60, 1, 5, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 46
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY46.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\LARGETREE1.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE1BENT.SCENE.MBIN", 60, 1, 2, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGECREATURE\RHINO\RHINO02.SCENE.MBIN", 10, 0.8, 2, 0, 0.18, 0.02)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE2.SCENE.MBIN", 60, 1, 2.5, 10, 0.18, 0.09),
						},
					},
				},
				--Custom biome 47
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY47.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE3.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.07)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\SMALLTREE4.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\RAINFOREST\LARGEPLANT\TREEVARIANTS.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.09),
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\LARGEPROP\GIANTCUBE.SCENE.MBIN", 10, 1, 1.5, 90, 0.18, 0.03)..
							BiomeExtension("MODELS\PLANETS\BIOMES\CRYSTAL\SMALLPROP\TINYCUBES.SCENE.MBIN", 60, 1, 3, 10, 0.18, 0.06),
						},
					},
				},
				--Custom biome 48
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY48.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\STRAIGHTTREELARGE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.08)..
							BiomeExtension("MODELS\PLANETS\BIOMES\SWAMP\LARGEPLANT\VINETREELARGE.SCENE.MBIN", 60, 1, 1.3, 10, 0.18, 0.08),
						},
					},
				},
				--Custom biome 49
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY49.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPROP\LARGEPROP.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.09)..
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPROP\MEDIUMGROWTHS.SCENE.MBIN", 60, 1, 8, 10, 0.18, 0.1)..
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\MEDIUMPROP\MEDIUMLUMPS.SCENE.MBIN", 60, 1, 10, 10, 0.18, 0.09),
						},
					},
				},
				--Custom biome 50
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY50.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\LARGEPLANTS\UNDERWATERTREE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.11)..
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\CUCUMBERSHAPE.SCENE.MBIN", 10, 1, 1.2, 10, 0.18, 0.05).. --HUGE PINEAPPLES
							BiomeExtension("MODELS\PLANETS\BIOMES\UNDERWATER\UPDATEPROPS\ANENOMESHAPE.SCENE.MBIN", 60, 1, 6, 10, 0.18, 0.1),
						},
					},
				},
				--Custom biome 51
				-- {
					-- ["MBIN_FILE_SOURCE"] 	= 
					-- {
						-- "CUSTOMBIOMES\GHOSTLY51CITYFLOATINGISLANDS.MBIN",
					-- },
					-- ["EXML_CHANGE_TABLE"] 	=
					-- {
						-- {
							-- ["PRECEDING_KEY_WORDS"]	= {"Objects","DistantObjects",},
							-- ["ADD_OPTION"] 	= "ADDafterLINE",
							-- ["ADD"] = BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI1.SCENE.MBIN", 10, 0.6, 1, 0, 0.18, 0.003).. --tall top collision
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI2.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI4.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI5.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI6.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.007).. --VERY wide
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI8.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							-- BiomeExtensionBuildings("CUSTOMMODELS\BUILDINGSCIFI\BUILDINGSCIFI9.SCENE.MBIN", 10, 14, 20, 0, 0.18, 0.0018)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS1\ISLAND1CUPROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS4\ISLAND4HUGEROCK.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018)..
							-- BiomeExtension("CUSTOMMODELS\FLOATINGISLANDS6\ISLAND6SMALLCONESTONE.SCENE.MBIN", 50, 0.8, 1.5, 5, 0.18, 0.0018),
						-- },
					-- },
				-- },
				
				
				
				--Custom biome 52
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY52ALLMAPLETREES.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_PINK.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_BLUE.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_GREEN.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.011)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_ORANGE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.012)..
							BiomeExtension("CUSTOMMODELS\TREESMAPLE\MAPLETREE_NORMAL.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.012),
						},
					},
				},
				--Custom biome 53
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"CUSTOMBIOMES\GHOSTLY53ALLNORMALTREES.MBIN",
					},
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"]	= {"Objects","Landmarks",},
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_.SCENE.MBIN", 60, 1, 11, 10, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_BLUE.SCENE.MBIN", 60, 1, 10, 10, 0.18, 0.012)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_RED.SCENE.MBIN", 60, 1, 9, 8, 0.18, 0.01)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_PURPLE.SCENE.MBIN", 60, 1, 13, 10, 0.18, 0.008)..
							BiomeExtension("CUSTOMMODELS\TREESNORMAL\NORMALTREE_ORANGE.SCENE.MBIN", 60, 1, 9, 10, 0.18, 0.011),
						},
					},
				},

						
						
			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE