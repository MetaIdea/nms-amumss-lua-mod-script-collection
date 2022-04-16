NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "EnhancedShipScannerAndInventoryRange.pak",
["MOD_AUTHOR"]				= "Twiggza",
["NMS_VERSION"]				= "3.02",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
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
								{"ShipInteractRadius",			"2000"},	-- Original "50"			
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ShipScan",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"PulseRange",					"20000"},	-- Original "10000"	
								{"PulseTime",					"2"},		-- Original "3"	
								{"ChargeTime",					"3"}, 		-- Original "10"							
							}
						}
					} 
				}
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCBUILDINGGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"UnknownBuildingRange",		"5000"},	-- Original "600"	
								{"MaxIconRange",				"5000"},	-- Original "1200"	
								{"MinShipScanBuildings",		"1"}, 		-- Original "0"
								{"MaxShipScanBuildings",		"3"}, 		-- Original "2"
							}
						}
					}
				}
			}
		}		
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE