Author = "Gumsk"
ModName = "Ship Colors"
ModNameSub = ""
BaseDescription = "test"
GameVersion = "303"
ModVersion = "a"
FileSource1 = "METADATA\GAMESTATE\PLAYERDATA\CUSTOMISATIONCOLOURPALETTES.MBIN"

StartCrashMin = 500					-- Original value "500
StartCrashMax = 600					-- Original value "600"
StartShelterMin = 800				-- Original value "800"
StartShelterMax = 1000				-- Original value "1000"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {

	{["PRECEDING_KEY_WORDS"] = "Ship_01",
		["VALUE_CHANGE_TABLE"] = {
		{"NumColours", "All"},
	}},
	{["PRECEDING_KEY_WORDS"] = "Ship_02",
		["VALUE_CHANGE_TABLE"] = {
		{"NumColours", "All"},
	}},
	{["PRECEDING_KEY_WORDS"] = "Ship_03",
		["VALUE_CHANGE_TABLE"] = {
		{"NumColours", "All"},
	}},
	{["PRECEDING_KEY_WORDS"] = "Ship_04",
		["VALUE_CHANGE_TABLE"] = {
		{"NumColours", "All"},
	}},
	{["PRECEDING_KEY_WORDS"] = "Ship_05",
		["VALUE_CHANGE_TABLE"] = {
		{"NumColours", "All"},
	}},
	{["PRECEDING_KEY_WORDS"] = "Ship_06",
		["VALUE_CHANGE_TABLE"] = {
		{"NumColours", "All"},
	}},
	
}}}}}}