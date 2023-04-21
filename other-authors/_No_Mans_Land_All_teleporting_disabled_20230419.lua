
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land All teleporters disabled", 
["MOD_AUTHOR"]				= "Youngneil1",				
["NMS_VERSION"]				= "4.22",
["MOD_DESCRIPTION"]			= "This mods disables all teleporters in the game.",
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
							
							["SPECIAL_KEY_WORDS"] = {"CreaturesToFeedForTutorial", "10"},				
							--["PRECEDING_KEY_WORDS"] = {"EnableTeleporters"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EnableTeleporters",	"False"}			
							}
						}
					}
				}
								
			}
		}
		
	}	
}
