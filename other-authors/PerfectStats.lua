NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]    = "PerfectStats.pak",
	["MOD_DESCRIPTION"] = "Multitools, Ships and Freighters always spawn with max stats.",
	["MOD_AUTHOR"]      = "RaymondBlaze",
    ["NMS_VERSION"]   = "4.47",
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = [[METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN]],
					["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ShipBaseStatsData"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Min", "@1*F:Max" }
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeaponBaseStatsData"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Min", "@1*F:Max" }
                            }
                        }
                    }
                }
            }
        }
    }
}