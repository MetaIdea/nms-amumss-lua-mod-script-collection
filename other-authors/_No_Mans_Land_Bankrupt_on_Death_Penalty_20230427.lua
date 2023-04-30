
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land Banrupt on Death Penalty", 
["MOD_AUTHOR"]				= "Youngneil1",				
["NMS_VERSION"]				= "4.23",
["MOD_DESCRIPTION"]			= "This mods drains on all credits on death.",
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
							
							--["SPECIAL_KEY_WORDS"] = {"CreaturesToFeedForTutorial", "10"},				
							--["PRECEDING_KEY_WORDS"] = {"EnableTeleporters"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DeathMoneyPenalty",	"1000000000"}
										
							}
						}	
					}	
				}
			}
								
		}
	}
		
}	

