NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] = "FasterScanning.pak",
["MOD_AUTHOR"] = "Flugelwulff",
["LUA_AUTHOR"] = "Flugelwulff",
["NMS_VERSION"] = "6.02",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocTimeBeforeScan",					"0"},	-- Original "0.5"
								{"BinocMinScanTime",					"0"},	-- Original "2.2"
								{"BinocScanTime",						"0"}, 	-- Original "2.2"
								{"BinocCreatureScanTime",				"0"},	-- Original "1.9"
							}
						},
					}
				}
			}
		}
	}	
}