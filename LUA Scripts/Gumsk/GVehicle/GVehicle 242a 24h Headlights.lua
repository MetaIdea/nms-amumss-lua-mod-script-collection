Author = "Gumsk"
ModName = "GVehicle"
ModNameSub = "24h lights"
BaseDescription = "Turns off exocraft day/night switching"
GameVersion = "242"
ModVersion = "a"
FileSource = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{["PRECEDING_KEY_WORDS"] = {"HeadlightNames"},
		["REPLACE_TYPE"] = "ALL",
		["REMOVE"] = "SECTION"
		},
	{["PRECEDING_KEY_WORDS"] = {"CockpitHeadlightNames"},
		["REPLACE_TYPE"] = "ALL",
		["REMOVE"] = "SECTION"
		},
}
},}},}}