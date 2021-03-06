--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

DENSITY_MULTIPLIER = 0.5

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds a chance for volcanoes to spawn in all biomes, although at a lower density than in the Lava biome.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Copy the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/DISTANTOBJECTS/LAVA/LAVAOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SPARSEVOLCANOESOBJECTS.MBIN"},
					}
				},
				{--Reduce the density of the new object list
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SPARSEVOLCANOESOBJECTS.MBIN"
					},
					["EXML_CHANGE_TABLE"] = {
						{--Set volcano density
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER}
							}
						},
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
					"OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/BARREN/BARRENINFESTEDBIOME.MBIN",
					--"OPENBE/BIOMEFILES/VANILLA/DEAD/DEADBIOME.MBIN",
					--"OPENBE/BIOMEFILES/VANILLA/DEAD/DEADFROZENBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENINFESTEDBIOME.MBIN",
					--Not adding it to the HugeProps because these biomes need the HugeProps to spawn and adding this to the DISTANTOBJECTS would clash with that.
					--"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGELUSH/HUGELUSHBIOME.MBIN",
					--"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGEROCK/HUGEROCKBIOME.MBIN",
					--"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGESCORCHED/HUGESCORCHBIOME.MBIN",
					--"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGETOXIC/HUGETOXICBIOME.MBIN",
					--"OPENBE/BIOMEFILES/VANILLA/HUGEPROPS/HUGEUWPLANT/HUGEUVWPLANTBIOME.MBIN",
					--"OPENBE/BIOMEFILES/VANILLA/LAVA/LAVABIOME.MBIN",
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
					--Not including volcanoes in the Hexagon worlds cause it's weird to me to have volcanoes coming out of metallic hexagon floor.
					--"OPENBE/BIOMEFILES/VANILLA/WEIRD/HEXAGON/HEXAGONBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/WEIRD/HYDROGARDEN/HYDROGARDENBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/WEIRD/IRRISHELLS/IRRISHELLSBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/WEIRD/MSTRUCTURES/MSTRUCTBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/WEIRD/SHARDS/SHARDSBIOME.MBIN",
					"OPENBE/BIOMEFILES/VANILLA/WEIRD/WIRECELLS/WIRECELLSBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/SPARSEVOLCANOESOBJECTS.MBIN" />
        </Property>]]
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE