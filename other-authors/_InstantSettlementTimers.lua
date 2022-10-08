NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "_InstantSettlementTimers.pak",
  ["MOD_AUTHOR"]				= "Pr0f1l3Alpha",
  ["MOD_DESCRIPTION"]		= "",
  ["NMS_VERSION"]				= "4.0",
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
								{"JudgementWaitTimeMin", 0},
								{"JudgementWaitTimeMax", 0},
								{"Settlement_Hub", 0},
								{"Settlement_LandingZone", 0},
								{"Settlement_Bar", 0},
								{"Settlement_Tower", 0},
								{"Settlement_Market", 0},
								{"Settlement_Small", 0},
								{"Settlement_SmallIndustrial", 0},
								{"Settlement_Medium", 0},
								{"Settlement_Large", 0},
								{"Settlement_Monument", 0},
								{"Settlement_SheriffsOffice", 0},
								{"Settlement_Double", 0},
								{"Settlement_Farm", 0},
								{"Settlement_Factory", 0},
								{"Settlement_Clump", 0},
							}
						}
					}
				}
			}
		}
	}
}