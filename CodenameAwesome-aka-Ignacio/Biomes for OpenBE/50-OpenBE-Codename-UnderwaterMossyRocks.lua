--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds big sandy rocks to oceans.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/LANDMARKS/LUSH/LUSHROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/UNDERWATER/LUSHROCKYLANDMARKS.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/BARREN/BARRENROCKYOBJECTS.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/UNDERWATER/LUSHROCKYOBJECTS.MBIN"},--The lush rocky biome has more than just rocks so I'm using the barren file as a base and swapping out the model, as they are identical other than the top texture.
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/UNDERWATER/LUSHROCKYLANDMARKS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[<Property name="Landmarks">]],[[<Property name="Objects">]]},
								{[[    <Property name="Objects" />]],[[]]},
							}
						},
						{--Changing the layer type from Landmarks to Objects affects the density so I'll try to adjust for that.
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "/",
							["VALUE_CHANGE_TABLE"] = {
								{"SlopeDensity", 1.5},
								{"FlatDensity", 1.5},
              }
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"MinHeight",-128},
								{"MaxHeight",-15},
								{"SwapPrimaryForRandomColour","True"},
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/UNDERWATER/LUSHROCKYOBJECTS.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{"MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMSANDBLENDROCK.SCENE.MBIN","MODELS/PLANETS/BIOMES/COMMON/ROCKS/SURFACEBLEND/MEDIUMMOSSBLENDROCK.SCENE.MBIN"},
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = {
								{"MinHeight",-128},
								{"MaxHeight",-15},
							}
						}
					}
				},
				{--Add the object lists to BIOMEFILENAMES
					["MBIN_FILE_SOURCE"] 	= {"METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","UNDERWATER_OBJ","Value","IGNORE"},["REPLACE_TYPE"] = "ALL",["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","UNDERWATER_OBJ"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/UNDERWATER/LUSHROCKYLANDMARKS.MBIN" />
        </Property>
        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/UNDERWATER/LUSHROCKYOBJECTS.MBIN" />
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