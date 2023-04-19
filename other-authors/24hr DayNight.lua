NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "24hr DayNight.pak",
["MOD_DESCRIPTION"]	= "24 Day Night Cycle",
["MOD_AUTHOR"]		= "Ghaldor",
["NMS_VERSION"]		= "4.23",
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
		["EXML_CHANGE_TABLE"] = {
			{
				["VALUE_CHANGE_TABLE"] = {
					{"DayLength","86400"}
				},
			},
		}
}}}}}