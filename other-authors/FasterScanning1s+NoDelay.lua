NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FasterScanning1s+NoDelay.pak",
["MOD_AUTHOR"]				= "Flugelwulff",
["NMS_VERSION"]				= "4.47",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BinocTimeBeforeScan",					"0"},	-- Original "0.5"
								{"BinocMinScanTime",					"1"},	-- Original "3.9"
								{"BinocScanTime",						"1"}, 	-- Original "3.9"
								{"BinocCreatureScanTime",				"1"},	-- Original "3.2"
							}
						}
					}
				}
			}
		}
	}	
}