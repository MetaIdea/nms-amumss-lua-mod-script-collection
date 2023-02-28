NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "_InstantSettlementBuilding.pak",
  ["MOD_AUTHOR"]			= "Paradoxica",
  ["MOD_DESCRIPTION"]		= "",
  ["NMS_VERSION"]			= "4.1.0",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BuildingUpgradeTimeInSeconds", 0},
								{"BuildingFreeUpgradeTimeInSeconds", 0},
								{"Settlement_Hub", 0},
								{"Settlement_LandingZone", 0},
								{"Settlement_Bar", 0},
								{"Settlement_Tower", 0},
								{"Settlement_Market", 0},
								{"Settlement_Small", 0},
								{"Settlement_SmallIndustrial", 0},
								{"Settlement_Medium", 0},
								{"Settlement_Large", 0},
								{"Settlement_SheriffsOffice", 0},
								{"Settlement_Double", 0},
								{"Settlement_Farm", 0},
								{"Settlement_Factory", 0},
							}
						}
					}
				}
			}
		}
	}
}