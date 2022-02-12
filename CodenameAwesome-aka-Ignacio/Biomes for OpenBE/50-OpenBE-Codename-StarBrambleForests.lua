--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

SCALE_MULTIPLIER = 5
DENSITY_MULTIPLIER = 0.75
LOD_MULTIPLIER = 2

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds a chance for Star Brambles to spawn instead of trees on Lush worlds.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHBUBBLEOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHBUBBLEOBJECTS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHHQTENTACLEOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHHQTENTACLEOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHOBJECTSLOW.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSLOW.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHOBJECTSMID.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSMID.MBIN"},
					}
				},
				{--Replace the tree model path
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHBUBBLEOBJECTS.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHHQTENTACLEOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSLOW.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSMID.MBIN",

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
								{"FlatDensity",DENSITY_MULTIPLIER},
								{"SlopeDensity",DENSITY_MULTIPLIER},
							}
						},
						{-- Increase the LOD values of the trees
							["PRECEDING_KEY_WORDS"] = {"LodDistances"},
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"IGNORE",LOD_MULTIPLIER},
							}
						},
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[MODELS/PLANETS/BIOMES/HQLUSH/HQTREES/HQTREEREF.SCENE.MBIN]],[[MODELS/PLANETS/BIOMES/COMMON/INTERACTIVEFLORA/BIOMESPECPLANTS/LUSHPLANT.SCENE.MBIN]]}
							}
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSLOW.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSMID.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHOBJECTSFULL.MBIN" />
        </Property>]]
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
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHHQTENTACLEOBJECTSFULL.MBIN" />
        </Property>]]
						}
					}
				},
				{--Add these new object lists to the appropriate biomes
					["MBIN_FILE_SOURCE"] 	= {"OPENBE/BIOMEFILES/VANILLA/LUSH/LUSHBUBBLESBIOME.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Name","LANDMARKS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/LANDMARKS/LUSH/STARBRAMBLELUSHBUBBLEOBJECTS.MBIN" />
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