Author = "Gumsk"
ModName = "gWeather"
ModNameSub = "No Overlay UI"
BaseDescription = "Removes hazard screen overlay"
GameVersion = "382"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = {"GCUIGLOBALS.GLOBAL.MBIN",},
			["EXML_CHANGE_TABLE"] = {	
				{
					["PRECEDING_KEY_WORDS"] = {"HazardTextures"},
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"Value",""},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"HazardNormalMaps"},
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"Value",""},
					},
				},
				{
					["PRECEDING_KEY_WORDS"] = {"HazardHeightmaps"},
					["REPLACE_TYPE"] = "ALL",
					["VALUE_CHANGE_TABLE"] = {
						{"Value",""},
					},
				},
			}
		},
	}
}}}