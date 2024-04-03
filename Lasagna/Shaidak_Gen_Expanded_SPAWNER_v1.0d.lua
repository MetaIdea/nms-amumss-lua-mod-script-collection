--[[

LUA script created using PLUMGEN
Script may include unused identifiers
Import EXML back into PLUMGEN for swift and easy editing

--]]

--## 1_header
local addHeader =
[[
  <Property name="BiomeFiles">
  </Property>
]]

function addPlanetType(planetType)
return [[
    <Property name="]] .. planetType .. [[" value="GcBiomeFileListOptions.xml">
      <Property name="FileOptions">
      </Property>
    </Property>
]]
end

function addFileListOption(subType, filename, weight)
return [[
        <Property value="GcBiomeFileListOption.xml">
          <Property name="SubType" value="GcBiomeSubType.xml">
            <Property name="BiomeSubType" value="]] .. subType .. [[" />
          </Property>
          <Property name="Filename" value="]] .. filename .. [[" />
          <Property name="Weight" value="]] .. weight .. [[" />
        </Property>
]]
end

--## BFN Valid Start Planets ##-----------------------------------------------
local addStartHeader =
[[
  <Property name="ValidStartPlanetBiome">
  </Property>
]]


function addStartBody(biomeType)
return [[
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="]] .. biomeType .. [[" />
    </Property>
]]
end

--## BFN Tiletypes ##---------------------------------------------------------
local addCommonExternalHeader = 
[[
  <Property name="CommonExternalObjectLists">
  </Property>
]]

function addCommonExternalBody(weight, tileType)
return [[
    <Property value="GcExternalObjectListOptions.xml">
      <Property name="Name" value="PLUMGEN_STUFF" />
      <Property name="ResourceHint" value="" />
      <Property name="ResourceHintIcon" value="" />
      <Property name="Probability" value="]] .. weight .. [[" />
      <Property name="SeasonalProbabilityOverride" value="1" />
      <Property name="TileType" value="GcTerrainTileType.xml">
        <Property name="TileType" value="]] .. tileType .. [[" />
      </Property>
      <Property name="AllowLimiting" value="False" />
      <Property name="ChooseUsingLifeLevel" value="False" />
      <Property name="Options">
      </Property>
    </Property>
]]
end

function addBiomeOptions(biomeObjectsName)
return [[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="]] .. biomeObjectsName .. [[" />
        </Property>
]]
end

--##Each biome file ##------------------------------------------------------
local addEachBiomeHeader =
[[
  <Property name="ExternalObjectLists">
  </Property>
]]

--Reuses above 2 functions


NMS_MOD_DEFINITION_CONTAINER =  --## 2_bfn_start
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "Shaidak_Gen_Expanded_SPAWNER_v1.0d.pak",
["MOD_AUTHOR"]				= "Expanded by FjordFish, original mod by Shaidak",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN"
					},
					["EXML_CHANGE_TABLE"] 	= 
					{
						--### BiomeFilles + Weights ### ----------------------------------
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BiomeFiles",},
							["REMOVE"] = "SECTION",
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("All"),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Waterworld"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADWATERBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Lava"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVABIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Swamp"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Test"),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Blue"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRing", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugePlant", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Green"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRing", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugePlant", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Red"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRing", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugePlant", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Weird"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HydroGarden", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("WireCell", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("BoneSpire", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIREBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Shell", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Contour", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOURBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Shards", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Bubble", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("FractCube", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Hexagon", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Beam", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Structure", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Dead"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIGPROPSBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADFROZENWEIRDBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADFROZENBIOME.MXML", 0.6),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Barren"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSBIOME.MXML", 0.1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENINFESTEDBIOME.MXML", 0.12),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_D", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALBIOME.MXML", 0.35),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYBIOME.MXML", 0.65),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESBIOME.MXML", 0.5),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HighQuality", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Frozen"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENINFESTEDBIOME.MXML", 0.12),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSBIOME.MXML", 0.15),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYBIOME.MXML", 0.5),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLARBIOME.MXML", 0.4),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HighQuality", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Radioactive"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOINFESTEDBIOME.MXML", 0.15),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSBIOME.MXML", 0.7),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVERUINSBIOME.MXML", 0),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWBIOME.MXML", 0.4),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Scorched"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Lava", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVABIOME.MXML", 0.5),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHINFESTEDBIOME.MXML", 0.12),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSBIOME.MXML", 0.3),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALBIOME.MXML", 0.3),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEBIOME.MXML", 0.3),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Toxic"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICINFESTEDBIOME.MXML", 0.15),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_D", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESBIOME.MXML", 0.15),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICROCKYBIOME.MXML", 0.25),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSBIOME.MXML", 0.35),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESBIOME.MXML", 0.35),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIOME.MXML", 1),
						},
						--## 3_each_planet_type
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Lush"),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Swamp", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML", 0.8),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDBIOME.MXML", 0.22),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Bubble", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLESBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_D", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDBIOME.MXML", 0.2),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYBIOME.MXML", 0.4),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBBIOME.MXML", 0.35),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMABIOME.MXML", 0.35),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HighQuality", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQBIOME.MXML", 1),
						},
						--## 4_each_filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIOME.MXML", 1),
						},

						--## 5_valid_start
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addStartHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome",},
							["REMOVE"] = "SECTION",
						},
						--## 6_each_valid_start_planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Frozen"),
						},
						--## 6_each_valid_start_planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Radioactive"),
						},
						--## 6_each_valid_start_planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Scorched"),
						},
						--## 6_each_valid_start_planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Toxic"),
						},

						--## 7_common_ext_objs
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addCommonExternalHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CommonExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 8_each_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Cave"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/CAVEFULL.MBIN"),
						},
						--## 8_each_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Mountain"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN"),
						},
						--## 8_each_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Underwater"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERFULL.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERMONOLITHS.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERCURVECORAL.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERCUCUMBERLIGHTS.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERCRYSTALS.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERGASBAGS.MBIN"),
						},
						--## 8_each_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Cave"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVEBIOMESPARSETOXIC.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVEBIOMEGRASSBUSHES.MBIN"),
						},
						--## 9_each_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/CAVE/CAVEBIOMEFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/WIRECELLS/WIRECELLSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/WIRECELLS/WIRECELLSOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/SHARDS/SHARDSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/IRRISHELLS/IRRISHELLSOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/HOUDINIPROPS/HOUDINIPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/HOUDINIPROPS/HOUDINIPROPSOBJECTS.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/HEXAGON/HEXAGONBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/ELBUBBLE/ELBUBBLEBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/CONTOUR/CONTOURBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/CONTOUR/CONTOUROBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/BONESPIRE/BONESPIREBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/BONESPIRE/BONESPIREOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/WEIRD/BEAMSTONE/BEAMSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/TOXIC/TOXICTENTACLESBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSUPDATED.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/TOXIC/TOXICSPORESBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSUPDATED.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/TOXIC/TOXICROCKYBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/TOXIC/TOXICINFESTEDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSUPDATED.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/TOXIC/TOXICEGGSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSUPDATED.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/TOXIC/TOXICBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/TOXIC/TOXICBIGPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSUPDATED.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/SWAMP/SWAMPBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SWAMP/SWAMPOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SWAMP/SWAMPOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/SCORCHED/SCORCHINFESTEDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/SCORCHED/SCORCHEDSHIELDTREEBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/SCORCHED/SCORCHEDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/SCORCHED/SCORCHCORALBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/SCORCHED/SCORCHBIGPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Air"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/RADIOACTIVE/RADIOINFESTEDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/RADIOACTIVE/RADIOBIGPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/RADIOACTIVE/RADIOACTIVERUINSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/RADIOACTIVE/RADIOACTIVEGLOWBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/RADIOACTIVE/RADIOACTIVEBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHULTRABIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/ULTRAEXTERNALOBJECTS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHROOMBBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSINGGLOW.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMIDGLOW.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHROOMABIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSINGGLOW.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMIDGLOW.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHROCKYWEIRDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMIDPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHROCKYBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHINFESTEDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMIDPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHHQTENTACLEBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMIDPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHHQBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHBUBBLESBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSINGGLOW.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMIDPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LUSH/LUSHBIGPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/HUGEPROPS/LUSHOBJECTSHUGE.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/LAVA/LAVABIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LAVA/LAVAOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/LAVA/LAVAOBJECTSWEIRD.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/HUGEPROPS/LUSHOBJECTSHUGE.MBIN"),
						},
						
						
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSUPDATED.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/TOXIC/TOXICOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/SCORCHED/SCORCHEDOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/HUGEPROPS/HUGERING/HUGERINGBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/HUGEPROPS/LUSHOBJECTSHUGE.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/HUGEPROPS/LUSHOBJECTSHUGE.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/FROZEN/FROZENROCKYWEIRDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENHQOBJECTSWEIRD.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSALT.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/FROZEN/FROZENROCKYBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/FROZEN/FROZENPILLARBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENHQOBJECTSWEIRD.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSALT.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/FROZEN/FROZENINFESTEDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENHQOBJECTSWEIRD.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSALT.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/FROZEN/FROZENHQBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/FROZEN/FROZENBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/FROZEN/FROZENBIGPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENHQOBJECTSWEIRD.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/FROZEN/FROZENOBJECTSALT.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/DEAD/DEADWATERBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/DEAD/DEADFROZENWEIRDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/DEAD/DEADFROZENBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/DEAD/DEADBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/DEAD/DEADBIGPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSPREHISTORIC.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/DEAD/DEADOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENROCKYWEIRDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENROCKYBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/SCORCHEDOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENINFESTEDBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENHQBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/SCORCHEDOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENHIVESBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENCORALBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSWEIRD.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/SCORCHEDOBJECTSFULL.MBIN"),
						},
					} --## 10_each_biome_start
				},
				
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA/SIMULATION/SOLARSYSTEM//BIOMES/BARREN/BARRENBIGPROPSBIOME.EXML",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addEachBiomeHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--## 11_each_biome_tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSALT.MBIN"),
						},
						--## 12_biome_tiletype_options
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/SGR_BIOMES/BARREN/BARRENOBJECTSWEIRD.MBIN"),
						},
					} --## 13_close_each_biome
				},
			} --## 14_footer
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE