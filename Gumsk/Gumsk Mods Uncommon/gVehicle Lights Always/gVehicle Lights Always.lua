Author = "Gumsk"
ModName = "gVehicle Lights"
ModNameSub = "Always"
BaseDescription = "Turns off exocraft day/night switching"
GameVersion = "6.1.8.0"
ModVersion = "a"
FileSource = "GCVEHICLEGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion,
MOD_DESCRIPTION	= BaseDescription,
MOD_AUTHOR		= Author,
NMS_VERSION		= GameVersion,
MODIFICATIONS	= {{
MBIN_CHANGE_TABLE = {{
MBIN_FILE_SOURCE = FileSource,
MXML_CHANGE_TABLE = {
	{PRECEDING_KEY_WORDS = {"HeadlightNames"},
		REPLACE_TYPE = "ALL",
		REMOVE = "SECTION"
		},
	{PRECEDING_KEY_WORDS = {"CockpitHeadlightNames"},
		REPLACE_TYPE = "ALL",
		REMOVE = "SECTION"
		},
}
},}},}}