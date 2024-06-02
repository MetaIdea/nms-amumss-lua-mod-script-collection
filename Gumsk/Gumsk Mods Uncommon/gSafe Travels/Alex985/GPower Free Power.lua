Author = "Gumsk"
ModName = "GPower"
ModNameSub = "Wireless"
BaseDescription = ""
GameVersion = "4711"
ModVersion = "a"
FileSource1 = "GCDEBUGOPTIONS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
MOD_DESCRIPTION	= BaseDescription,
MOD_AUTHOR		= Author,
NMS_VERSION		= GameVersion,
MODIFICATIONS	= {{
MBIN_CHANGE_TABLE = {{
MBIN_FILE_SOURCE = FileSource1,
EXML_CHANGE_TABLE = 
{{
	VALUE_CHANGE_TABLE = {
		{"DisableBasePowerRequirements", "True"},	--Original False
	}
}}},

{MBIN_FILE_SOURCE = "METADATA\REALITY\TABLES\BASEBUILDINGTABLE.MBIN",
EXML_CHANGE_TABLE = 
{
	{SPECIAL_KEY_WORDS = {"ID","PLANTER"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
	{SPECIAL_KEY_WORDS = {"ID","PLANTERMEGA"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
	{SPECIAL_KEY_WORDS = {"ID","MAINROOM"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 100000},
		{"Storage", 100000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","MAINROOM_WATER"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","MAINROOMCUBE"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","MAINROOMCUBE_W"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","CUBEROOM"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","CUBEROOM_SPACE"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","CUBEROOMB_SPACE"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","CUBEROOMC_SPACE"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","CUBEGLASS"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},
		{SPECIAL_KEY_WORDS = {"ID","CUBEROOMCURVED"},
	VALUE_CHANGE_TABLE = {
		{"Rate", 10000},
		{"Storage", 10000}
	}},

	{PRECEDING_KEY_WORDS = {""},
	REPLACE_TYPE = "ALL",
	VALUE_CHANGE_TABLE = {
		{"DependentEffect", "None"}
	}}

},}}}}}