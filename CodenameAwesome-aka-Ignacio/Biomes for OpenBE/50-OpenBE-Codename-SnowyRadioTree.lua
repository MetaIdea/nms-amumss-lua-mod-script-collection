--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

SCALE_MULTIPLIER = 2

--THIS MOD REQUIRES THE ASSET FILES
NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds a chance for a snowy version of Radioactive trees to spawn in the Frozen biome.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] =  {
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/RADIOACTIVE/RADIOACTIVEOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/FROZEN/SNOWYRADIOTREESOBJECTSMID.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/RADIOACTIVE/RADIOACTIVEOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/FROZEN/SNOWYRADIOTREESOBJECTSFULL.MBIN"},
					}
				},
				{--Replace the tree model path
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/FROZEN/SNOWYRADIOTREESOBJECTSMID.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/FROZEN/SNOWYRADIOTREESOBJECTSFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{-- Scale up the trees
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/RADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"Filename","CUSTOMMODELS/CODENAMEAWESOME/BIOMES/SNOWYRADIOACTIVE/LARGE/RADIOACTIVETREE.SCENE.MBIN"}
							}
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/FROZEN/SNOWYRADIOTREESOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/FROZEN/SNOWYRADIOTREESOBJECTSFULL.MBIN" />
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