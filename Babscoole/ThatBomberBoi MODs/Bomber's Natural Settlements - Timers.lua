NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BNS-Timers 3.91.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "ThatBomberBoi",
["NMS_VERSION"]     = "3.91",
["MODIFICATIONS"]   =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"Settlement_LandingZone",     "30"},
								{"Settlement_Bar",             "30"},
								{"Settlement_Tower",           "30"},
								{"Settlement_Market",          "30"},
								{"Settlement_Small",           "30"},
								{"Settlement_SmallIndustrial", "30"},
								{"Settlement_Medium",          "30"},
								{"Settlement_Large",           "30"},
								{"Settlement_Monument",        "30"},
								{"Settlement_SheriffsOffice",  "30"},
								{"Settlement_Double",          "30"},
								{"Settlement_Farm",            "30"},
								{"Settlement_Factory",         "30"},
								{"Settlement_Clump",           "30"}
							}
						}						
					}			
				}
			}
		}
	}
}
