NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "FasterAnalysis_3seconds.pak",
["MOD_AUTHOR"]    = "Kuborr",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.93",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"BinocMinScanTime",      "3"}, -- Original "3.9"
								{"BinocScanTime",         "3"}, -- Original "3.9"
								{"BinocCreatureScanTime", "3"}, -- Original "3.2"							
							}
						},
					}
				}
			}
		}
	}	
}