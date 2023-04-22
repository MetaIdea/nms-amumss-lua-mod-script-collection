NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]	= "Settlement_Timer_Adjustment_v1.0.pak",
["MOD_AUTHOR"]		= "Lykai,Haz",
["NMS_VERSION"]		= "4.12.1",
["MOD_DESCRIPTION"]	= "Greatly Accelerates all Settlement Timers",
["MODIFICATIONS"]	= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] 		= 
							{	
								{ "BuildingUpgradeTimeInSeconds", 		"10" }, 	--Original "7200"
								{ "JudgementWaitTimeMin", 				"60" }, 	--Original "900"
								{ "JudgementWaitTimeMax", 				"120" }, 	--Original "7200"
								{ "Settlement_LandingZone", 			"10" }, 	--Original "3600"
								{ "Settlement_Bar", 					"10" }, 	--Original "3600"
								{ "Settlement_Tower", 					"10" }, 	--Original "3600"
								{ "Settlement_Market", 					"10" }, 	--Original "7200"
								{ "Settlement_Small", 					"10" }, 	--Original "1200"
								{ "Settlement_SmallIndustrial", 		"10" }, 	--Original "1200"
								{ "Settlement_Medium", 					"10" }, 	--Original "2800"
								{ "Settlement_Large", 					"10" }, 	--Original "7200"
								{ "Settlement_SheriffsOffice", 			"10" }, 	--Original "90"
								{ "Settlement_Double", 					"10" }, 	--Original "3600"
								{ "Settlement_Farm", 					"10" }, 	--Original "5600"
								{ "Settlement_Factory", 				"10" }, 	--Original "5600"
							}
						}
					}
				}
			}
		}
	}	
}	