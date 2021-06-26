NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "FleetGlobal Test.pak",
["MOD_DESCRIPTION"]	= "Test file",
["MOD_AUTHOR"]		= "",
["NMS_VERSION"]		= "303",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {
	
	{["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"] = {
		{["PRECEDING_KEY_WORDS"] = {"FrigateInitialStats", "Stats", "Combat"},
			--["LINE_OFFSET"] = "+1",
			["VALUE_CHANGE_TABLE"] =
			{
				{"Minimum", 5},
			}
		},
	}},

}}}}