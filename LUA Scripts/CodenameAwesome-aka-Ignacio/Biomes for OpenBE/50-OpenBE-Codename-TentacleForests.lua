--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

SCALE_MULTIPLIER = 0.25

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds a chance for HoudiniProps LargeTentacle to spawn instead of trees on Infested Lush worlds.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSMID.MBIN"},
					}
				},
				{--Replace the tree model path
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSMID.MBIN",

					},
					["EXML_CHANGE_TABLE"] = {
						{-- Scale up the trees
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN"},
							["REPLACE_TYPE"] = "ALL",
							["SECTION_UP"] = 1,
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/TOXIC/HOUDINIPROPS/LARGETENTACLE.SCENE.MBIN]]}
							}
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHINFESTEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/HOUDINITFORESTOBJECTSFULL.MBIN" />
        </Property>]]
						}
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE