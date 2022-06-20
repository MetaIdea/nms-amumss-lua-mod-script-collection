ModName = "PTSd No Exocraft Drop Pod scanner"
GameVersion = "3_93"

--EndSection = [[        </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= "Removes Drop Pod from the options for Exocraft Scanner targets. Moves Monolith Scanning from Signal Booster Tau to Advanced Signal Booster to replace it.",
["MOD_AUTHOR"]			= "Xen0nex",
["NMS_VERSION"]			= GameVersion,
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{
		["MBIN_FILE_SOURCE"] 	= {"METADATA\SIMULATION\SCANNING\VEHICLESCANTABLE.MBIN"},
		["EXML_CHANGE_TABLE"] 	= 
		{
			{
				["SPECIAL_KEY_WORDS"] = {"Value","DROPPOD"},
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 2,
				["REMOVE"] = "SECTION"
			},
			{
				["REPLACE_TYPE"] 		= "",
				["MATH_OPERATION"] 		= "",
				["SPECIAL_KEY_WORDS"] = {"Value","MONOLITH"},
				--["PRECEDING_KEY_WORDS"] = {""},
				["SECTION_UP"] = 2,
				["VALUE_CHANGE_TABLE"] 	=
				{
					{"RequiredTech", "VEHICLE_SCAN1"}
				}
			}
		}
	}
}}}}