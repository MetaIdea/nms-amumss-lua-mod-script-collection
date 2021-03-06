--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

DENSITY_MULTIPLIER = 0.75
COVERAGE_MULTIPLIER = 0.75
RENDER_DISTANCE_MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds cave DetailObjects to mountains",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{
				{--Create the object lists
					["MBIN_FILE_SOURCE"] = {
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/CAVE/CAVEBIOMEFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/CAVE/CAVEBIOMEGRASSBUSHES.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/CAVE/CAVEBIOMESPARSETOXIC.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"}
					}
				},
				{--Remove stalagtites
					["MBIN_FILE_SOURCE"] = {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						},
					}
				},
				{--Remove ceiling plant
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						},
					}
				},
				{--Remove stalagmites
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN"},
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION"
						}
					}
				},
				{--Remove stalagmites
					["MBIN_FILE_SOURCE"] = {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{--Optimize and increase render distance
							["INTEGER_TO_FLOAT"] = "FORCE",
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Coverage",COVERAGE_MULTIPLIER},
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
								{"FadeOutStartDistance",RENDER_DISTANCE_MULTIPLIER},
								{"FadeOutEndDistance",RENDER_DISTANCE_MULTIPLIER},
							}
						}
					}
				},
				{--Add the object list to relevant biomes. This object list doesn't have plants so we're just going to add it everywhere.
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENINFESTEDBIOME.MBIN",
						--"OPENBE/BIOMEFILES/VANILLA/DEAD/DEADBIOME.MBIN", --Plants spawning here is weird so not adding them
						--"OPENBE/BIOMEFILES/VANILLA/DEAD/DEADFROZENBIOME.MBIN", --Plants spawning here is weird so not adding them
						"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LAVA/LAVABIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBUBBLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHROOMABIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHROOMBBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/RADIOACTIVE/RADIOACTIVEBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/RADIOACTIVE/RADIOINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/SCORCHED/SCORCHINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/SWAMP/SWAMPBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICEGGSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICINFESTEDBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICSPORESBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/TOXIC/TOXICTENTACLESBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/BEAMSTONE/BEAMSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/BONESPIRE/BONESPIREBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/CONTOUR/CONTOURBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/ELBUBBLE/ELBUBBLEBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/FRACTALCUBE/FRACTCUBEBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/SHARDS/SHARDSBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","MOUNTAIN"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEFULL.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMEGRASSBUSHES.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/MOUNTAIN/CAVEBIOMESPARSETOXIC.MBIN" />
        </Property>]],
						},
					}
				}
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE