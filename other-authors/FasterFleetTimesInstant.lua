Amount1 = 0 -- 100% Reduction
Amount2 = 0 -- 100% Reduction
Amount3 = 100 -- sets the chances of the frigate being able to be purchased

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "__FasterFleetTimesInstant.pak",
["MOD_AUTHOR"]				= "DeathRider",
["MOD_DESCRIPTION"]			= "This Mod Reduces the time it takes a Fleet to return and settlement action to be completed",
["NMS_VERSION"]				= "3.65",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TimeTakenForExpeditionEvent_Easy",	Amount1},
								{"TimeTakenForExpeditionEvent",	   Amount2},
								{"PercentChangeOfFrigateBeingPurchasable", Amount3}
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"]     = "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"]     =
					{
						{
							["VALUE_CHANGE_TABLE"]     =
							{
								{"BuildingUpgradeTimeInSeconds",    "1"},        -- original value is "7200"
								{"JudgementWaitTimeMin",         "1"},        -- original value is "900"
								{"JudgementWaitTimeMax",        "1"},        -- original value is "7200"
								{"Settlement_LandingZone",        "1"},        -- original value is "14400"
								{"Settlement_Bar",            "1"},        -- original value is "3600"
								{"Settlement_Tower",            "1"},        -- original value is "14400"
								{"Settlement_Market",            "1"},        -- original value is "7200"
								{"Settlement_Small",            "1"},        -- original value is "1200"
								{"Settlement_SmallIndustrial",    "1"},        -- original value is "1200"
								{"Settlement_Medium",            "1"},        -- original value is "2800"
								{"Settlement_Large",            "1"},        -- original value is "7200"
								{"Settlement_SheriffsOffice",        "1"},        -- original value is "90"
								{"Settlement_Double",            "1"},        -- original value is "3600"
								{"Settlement_Farm",            "1"},        -- original value is "5600"
								{"Settlement_Factory",        "1"},        -- original value is "5600"
							}
						},
					}
				}
			},
		}
	}	
}