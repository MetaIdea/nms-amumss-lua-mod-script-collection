NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Pirates Always Engage",
["MOD_AUTHOR"]				= "DeathWrench",
["NMS_VERSION"]				= "6.18",
["MODIFICATIONS"] 			= 
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
								{"PirateInterestOverride",			"1"},		-- Original "0"
								--{"WarpsBetweenBattles", 			"0"},			-- Number of warps since last space battle before next will occur | 5 | 605
								--{"HoursBetweenBattles",			"0"},-- Number of hours since last space battle before next will occur | 3 | 606
								--doesn't work{"PirateInterestLevels",			"9999999999"},	
								--{"UseTradingCostTable",				"true"}, 	-- Original "false"	
							}
						}
					}
				}
			}
		}
	}	
}