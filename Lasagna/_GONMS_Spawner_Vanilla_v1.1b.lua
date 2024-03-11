--[[

LUA script created using PLUMGEN
Script may include unused identifiers
Import EXML back into PLUMGEN for swift and easy editing

--]]

--## BFN Biome + Weights ##----------------------------------------------------
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

function addFileListOption(subType, filename, weight) --NEED proper subtype
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


NMS_MOD_DEFINITION_CONTAINER = 
{
["AMUMSS_SUPPRESS_MSG"] = "UNUSED_VARIABLE", --remove notices that a variable was not used
["MOD_FILENAME"] 			= "_GONMS_Spawner_Vanilla_v1.1b.pak",
["MOD_AUTHOR"]				= "FjordFish",
["NMS_VERSION"]				= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
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
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("All"),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Waterworld"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADWATERBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Lava"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVABIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Swamp"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Test"),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Blue"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRing", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugePlant", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Green"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRing", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugePlant", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Red"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRing", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGERING/HUGERINGBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugePlant", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Weird"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HydroGarden", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("WireCell", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/WIRECELLS/WIRECELLSBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("BoneSpire", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BONESPIRE/BONESPIREBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Shell", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Contour", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/CONTOUR/CONTOURBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Shards", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/SHARDS/SHARDSBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Bubble", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("FractCube", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Hexagon", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/HEXAGON/HEXAGONBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Beam", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/BEAMSTONE/BEAMSBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Structure", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Dead"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIGPROPSBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADFROZENWEIRDBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADFROZENBIOME.MXML", 0.6),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/DEAD/DEADBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Barren"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIGPROPSBIOME.MXML", 0.1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENINFESTEDBIOME.MXML", 0.12),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_D", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENCORALBIOME.MXML", 0.35),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYWEIRDBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENROCKYBIOME.MXML", 0.65),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHIVESBIOME.MXML", 0.5),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HighQuality", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENHQBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BARREN/BARRENBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Frozen"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENINFESTEDBIOME.MXML", 0.12),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIGPROPSBIOME.MXML", 0.15),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYWEIRDBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENROCKYBIOME.MXML", 0.5),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENPILLARBIOME.MXML", 0.4),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HighQuality", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENHQBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/FROZEN/FROZENBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Radioactive"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeRock", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOBIGPROPSBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOINFESTEDBIOME.MXML", 0.15),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOSPIKECRYSTALSBIOME.MXML", 0.7),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVERUINSBIOME.MXML", 0),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEGLOWBIOME.MXML", 0.4),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RADIOACTIVE/RADIOACTIVEBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Scorched"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Lava", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LAVA/LAVABIOME.MXML", 0.5),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHINFESTEDBIOME.MXML", 0.12),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeScorch", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHBIGPROPSBIOME.MXML", 0.3),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHCORALBIOME.MXML", 0.3),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDSHIELDTREEBIOME.MXML", 0.3),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SCORCHED/SCORCHEDBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Toxic"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIGPROPSBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICINFESTEDBIOME.MXML", 0.15),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_D", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICTENTACLESBIOME.MXML", 0.15),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICROCKYBIOME.MXML", 0.25),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICEGGSBIOME.MXML", 0.35),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICSPORESBIOME.MXML", 0.35),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/TOXIC/TOXICBIOME.MXML", 1),
						},
						--For each planet type, i.e. Lush
						{
							["PRECEDING_KEY_WORDS"] = { "BiomeFiles", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addPlanetType("Lush"),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Swamp", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML", 0.8),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeLush", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIGPROPSBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Infested", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHINFESTEDBIOME.MXML", 0.22),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Bubble", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBUBBLESBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HugeToxic", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQTENTACLEBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_D", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYWEIRDBIOME.MXML", 0.2),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_C", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROCKYBIOME.MXML", 0.4),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_B", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMBBIOME.MXML", 0.35),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Variant_A", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHROOMABIOME.MXML", 0.35),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("HighQuality", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHHQBIOME.MXML", 1),
						},
						--For each filename_weight
						{
							["PRECEDING_KEY_WORDS"] = { "FileOptions", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addFileListOption("Standard", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/LUSHBIOME.MXML", 1),
						},

						--### ValidStartPlanet ### ---------------------------------------
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addStartHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome",},
							["REMOVE"] = "SECTION",
						},
						--Add 1 for each valid start planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Lush"),
						},
						--Add 1 for each valid start planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Frozen"),
						},
						--Add 1 for each valid start planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Radioactive"),
						},
						--Add 1 for each valid start planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Scorched"),
						},
						--Add 1 for each valid start planet
						{
							["PRECEDING_KEY_WORDS"] = { "ValidStartPlanetBiome", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addStartBody("Toxic"),
						},

						--### CommonExternalObjects ### ----------------------------------
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterSECTION",
							["ADD"] = addCommonExternalHeader,
						},
						{
							["PRECEDING_KEY_WORDS"] = {"CommonExternalObjectLists",},
							["REMOVE"] = "SECTION",
						},
						--Each tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Cave"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/CAVEFULL.MBIN"),
						},
						--Each tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Mountain"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKSCRUB.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/MOUNTAIN/MOUNTAINROCKS.MBIN"),
						},
						--Each tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Underwater"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERMID.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERMID.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERMID.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERFULL.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/UNDERWATER/UNDERWATERDEAD.MBIN"),
						},
						--Each tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "CommonExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Cave"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEMID.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEFULL.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEMID.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEFULL.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEMID.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEFULL.MBIN"),
						},
						--For each tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/CAVE/CAVEBIOMEDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Air"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/LUSH/ULTRAEXTERNALOBJECTS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSINGGLOW.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSINGGLOW.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSINGGLOW.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/RADIOACTIVE/RADIOACTIVEOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/TOXIC/TOXICOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/SCORCHED/SCORCHEDOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/LUSH/LUSHHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/SHARDS/SHARDSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/MSTRUCTURES/MSTRUCTOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/HEXAGON/HEXAGONOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/FRACTALCUBE/FRACTCUBEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/ELBUBBLE/ELBUBBLEOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/WEIRD/BEAMSTONE/BEAMSOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/FROZEN/FROZENHQOBJECTSMID.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/DEADPLANETS.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/ROCK/BUILDINGDRESSING.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/RARE/INFESTATION.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
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
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FLYTRAPPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/SPOREVENTPLANT.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/TENTACLEPLANT.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/CRYSTALS/FULL.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/LEVELONEOBJECTS/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/BIOMES/OBJECTS/PLANT/FULLSAFE.MBIN"),
						},
						--Each biome tiletype
						{
							["PRECEDING_KEY_WORDS"] = { "ExternalObjectLists", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addCommonExternalBody(1, "Base"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/PATHFINDER_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/FOUNDATION_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/DEAD/DEADOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSMID.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSLOW.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSFULL.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENOBJECTSDEAD.MBIN"),
						},
						--For biome tiletype options, add multiple:
						{
							["PRECEDING_KEY_WORDS"] = { "Options", },
							["ADD_OPTION"] 	= "ADDafterLINE",
							["ADD"] = addBiomeOptions("METADATA/SIMULATION/SOLARSYSTEM/ATLAS_RISES_BIOMES/BARREN/BARRENHQOBJECTSFULL.MBIN"),
						},
					}
				},
			}
		},
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PAST THIS POINT HERE