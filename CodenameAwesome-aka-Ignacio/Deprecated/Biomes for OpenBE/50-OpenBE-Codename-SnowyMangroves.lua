--DO NOT USE "REMOVE" TAGS WHEN COPYING FILES
--This script is intended for use with OpenBiomeExtender and will not work without it.
--Place the OpenBiomeExtender.pak into your ModScript folder when you run this script

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_BATCHNAME"] 			= "zzOpenBiomeExtender-MergedModules.pak",
  ["MOD_FILENAME"] 			= "Error - You forgot to put OpenBE pak in ModScript.pak", --MOD_FILENAME will never be used if scripts are used properly (as batch patches)
  ["MOD_DESCRIPTION"]		= "Adds a chance for a Snowy version of the Swamp Mangroves in Frozen biomes",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["NMS_VERSION"]				= "",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{--Create the object list
					["MBIN_FILE_SOURCE"] = {
						{"OPENBE/OBJECTFILES/VANILLA/DISTANTOBJECTS/SWAMP/SWAMPOBJECTSFULL.MBIN","OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/FROZEN/FROZENMANGROVESOBJECTSFULL.MBIN"}
					},
				},
				{--Create the object list
					["MBIN_FILE_SOURCE"] = {"OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/FROZEN/FROZENMANGROVESOBJECTSFULL.MBIN"},
					["EXML_CHANGE_TABLE"] = {
						{
							["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/DEADTREE.SCENE.MBIN"},
							["REPLACE_TYPE"] = "ALL",
							["SECTION_UP"] = 1,
							["REMOVE"] = "SECTION",
						},
						{
							["REPLACE_TYPE"] = "RAW",
							["VALUE_CHANGE_TABLE"] = {
								{[[MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGEFULL.SCENE.MBIN]],[[CUSTOMMODELS/CODENAMEAWESOME/BIOMES/FROZENSWAMP/LARGEPLANT/MANGROVELARGEFULL.SCENE.MBIN]]},
								{[[MODELS/PLANETS/BIOMES/SWAMP/LARGEPLANT/MANGROVELARGE.SCENE.MBIN]],[[CUSTOMMODELS/CODENAMEAWESOME/BIOMES/FROZENSWAMP/LARGEPLANT/MANGROVELARGE.SCENE.MBIN]]}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= {
						"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENBIOME.MBIN",
						"OPENBE/BIOMEFILES/VANILLA/FROZEN/FROZENINFESTEDBIOME.MBIN",
					},
					["EXML_CHANGE_TABLE"] = {
						--For testing purposes uncomment the following two lines to remove all other object lists
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},["VALUE_CHANGE_TABLE"] = {{"Probability",1}},},
						--{["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS","Value","IGNORE"},["REMOVE"] = "SECTION",},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DISTANTOBJECTS"},
							["PRECEDING_KEY_WORDS"] = {"Options"},
							["ADD"] =
[[        <Property value="NMSString0x80.xml">
          <Property name="Value" value="OPENBE/OBJECTFILES/CODENAMEAWESOME/DISTANTOBJECTS/FROZEN/FROZENMANGROVESOBJECTSFULL.MBIN" />
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