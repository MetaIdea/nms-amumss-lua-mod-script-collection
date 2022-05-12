ModName = "navdatabuff"
GameVersion = "3_84"

--EndSection = [[        </Property>]]

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= ModName..GameVersion..".pak",
["MOD_DESCRIPTION"]		= "removes all scannable buildings except trading posts for exocraft. Moves Monolith Scanning from Signal Booster Tau to Advanced Signal Booster to replace it.",
["MOD_AUTHOR"]			= "LittleEvo, help from Xen0nex",
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
                ["SPECIAL_KEY_WORDS"] = {"Value","DEPOT"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
                ["SPECIAL_KEY_WORDS"] = {"Value","RUIN"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
                ["SPECIAL_KEY_WORDS"] = {"Value","UW_RUIN"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
                ["SPECIAL_KEY_WORDS"] = {"Value","STARSHIPS"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
                ["SPECIAL_KEY_WORDS"] = {"Value","UW_FREIGHTCRASH"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
				["SPECIAL_KEY_WORDS"] = {"Value","ABANDONED"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
				["SPECIAL_KEY_WORDS"] = {"Value","UW_ABANDONED"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
				["SPECIAL_KEY_WORDS"] = {"Value","UW_SHIPCRASH"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
			{
                ["SPECIAL_KEY_WORDS"] = {"Value","HARVESTER"},
             ["REPLACE_TYPE"]         = "ALL",
                ["SECTION_UP"] = 2,
                ["REMOVE"] = "SECTION"
            },
            {
                ["SPECIAL_KEY_WORDS"] = {"Value","DISTRESS"},
             ["REPLACE_TYPE"]         = "ALL",
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