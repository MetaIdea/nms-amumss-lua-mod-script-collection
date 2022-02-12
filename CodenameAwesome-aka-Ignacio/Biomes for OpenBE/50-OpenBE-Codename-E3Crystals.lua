--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

SCALE_MULTIPLIER = 1.5

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds crystal models in the style of the ones scene in the pre-release trailers",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object lists
					["MBIN_FILE_SOURCE"] 	= {
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/OBJECTS/CRYSTALS/FULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/E3FULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/CRYSTALS/FULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/CRYSTALS/E3FULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/OBJECTS/OBJECTS/CRYSTALS/CAVEFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/E3CAVEFULL.MBIN"},
						{"OPENBE/OBJECTFILES/VANILLA/DETAILOBJECTS/OBJECTS/CRYSTALS/CAVEFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/CRYSTALS/E3CAVEFULL.MBIN"},
					}
				},
				{--Replace the model paths
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/E3FULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/CRYSTALS/E3FULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/E3CAVEFULL.MBIN",
						"OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/CRYSTALS/E3CAVEFULL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[MODELS/PLANETS/BIOMES/COMMON/CRYSTALS/]],[[CUSTOMMODELS/CODENAMEAWESOME/BIOMES/COMMON/E3CRYSTALS/]]}
							}
						},
						{
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = {
								{"MinScale",SCALE_MULTIPLIER},
								{"MaxScale",SCALE_MULTIPLIER},
							}
						}
					},
				},
				{--Add files to the game
					["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALS_OBJ"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/E3FULL.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALS_DTL"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/CRYSTALS/E3FULL.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALSCAVE_OBJ"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/OBJECTS/OBJECTS/CRYSTALS/E3CAVEFULL.MBIN" />
        </Property>]]
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","CRYSTALSCAVE_DTL"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DETAILOBJECTS/OBJECTS/CRYSTALS/E3CAVEFULL.MBIN" />
        </Property>]]
						},
					}
				},
			},
		}
	},
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE