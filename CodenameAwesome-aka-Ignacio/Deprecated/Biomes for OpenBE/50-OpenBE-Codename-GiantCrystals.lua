--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

MIN_SCALE_MULTIPLIER = 1
MAX_SCALE_MULTIPLIER = 5

COVERAGE_MULTIPLIER = (MIN_SCALE_MULTIPLIER+MAX_SCALE_MULTIPLIER)/2
DENSITY_MULTIPLIER = 1/((MIN_SCALE_MULTIPLIER+MAX_SCALE_MULTIPLIER)/2)

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds the chance for planets with bigger resource crystals to spawn, while still allowing some planets to have normal sized crystals",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/OBJECTS/CRYSTALS/FULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/GIANTFULL.MBIN"}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/GIANTFULL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinScale",MIN_SCALE_MULTIPLIER},
								{"MaxScale",MAX_SCALE_MULTIPLIER},
								{"Coverage",COVERAGE_MULTIPLIER},
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
							}
						}
					}
				},
				{--Add this file to the game
					["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALS_OBJ"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/GIANTFULL.MBIN" />
        </Property>]]
						},
					}
				}
			},
		}
	},
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE