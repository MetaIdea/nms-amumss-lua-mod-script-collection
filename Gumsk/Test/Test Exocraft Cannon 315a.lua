NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "Test Exocraft Cannon 315a.pak",
["MOD_DESCRIPTION"]	= "test",
["MOD_AUTHOR"]		= "Gumsk",
["NMS_VERSION"]		= "315",
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
		["EXML_CHANGE_TABLE"] = {
			{
				["SPECIAL_KEY_WORDS"] = {"ID","UP_EXGUN4","StatsType","Vehicle_GunRate"},
				["SECTION_UP"] = 1,
				["VALUE_CHANGE_TABLE"] = {
					{"ValueMin","3.0"},
					{"ValueMax","3.1"},
				},
			},
		}
}}}}}