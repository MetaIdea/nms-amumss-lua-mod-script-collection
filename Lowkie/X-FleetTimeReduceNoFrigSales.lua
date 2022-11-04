NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "X-FleetTimeReduceNoFrigSales.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.2",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								--{"MaxPurchaseDistance", "1000"}, --Default 1000 
								--{"TimeTakenForExpeditionEvent_Easy", "450"}, --Default 900  mod 450
								--{"TimeTakenForExpeditionEvent",		"1000"}, --Default 5400 mod 1000
								{"PercentChangeOfFrigateBeingPurchasable",	"0"}, --Default 60
								--{"NumberOfExpeditionChoices",	"12"}, --Default 5   5 is max
								--{"MinGapBetweenExpeditionLogEntries",	"201"}, --Default 201
								--{"MaxGapBetweenExpeditionLogEntries",	"301"}, --Default 301
								
							}
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE