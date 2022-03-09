Author = "Gumsk"
ModName = "gProc"
ModNameSub = "Exocraft Fire Rate"
BaseDescription = "Procedural technology upgrade modifications"
GameVersion = "382"
ModVersion = "a"
FileSource = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_EXGUN1","StatsType","Vehicle_GunRate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.95"},
			{"ValueMax","0.99"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_EXGUN2","StatsType","Vehicle_GunRate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.9"},
			{"ValueMax","0.95"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_EXGUN3","StatsType","Vehicle_GunRate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.85"},
			{"ValueMax","0.9"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_EXGUN4","StatsType","Vehicle_GunRate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.8"},
			{"ValueMax","0.85"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_MCGUN2","StatsType","Vehicle_GunRate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.9"},
			{"ValueMax","0.95"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_MCGUN3","StatsType","Vehicle_GunRate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.85"},
			{"ValueMax","0.9"},
		}
	},
	{
		["SPECIAL_KEY_WORDS"] = {"ID","UP_MCGUN4","StatsType","Vehicle_GunRate"},
		["SECTION_UP"] = 1,
		["VALUE_CHANGE_TABLE"] = {
			{"ValueMin","0.8"},
			{"ValueMax","0.85"},
		}
	},	

},}},}}}
