
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land Jetpack off", 
["MOD_AUTHOR"]				= "Youngneil1",				
["NMS_VERSION"]				= "4.22",
["MOD_DESCRIPTION"]			= "This mods effectively shits down the jetpack - use at your risk of getting trapped ;-.).",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							
							--["SPECIAL_KEY_WORDS"] = {"Id", "JET1"},				
							--["PRECEDING_KEY_WORDS"] = {"EnableTeleporters"},
							--["REMOVE"] = "SECTION"
							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JetpackForce",	"0"},
								{"JetpackUpForce",	"0"},
								--{"MeleeCooldownAlt",	"0"},
								{"JetpackMaxUpSpeed",	"0"},
								{"JetpackIgnitionForce",	"0"},
								{"JetpackUpForce",	"0"},
								{"JetpackFillRate",	"0"},
								{"JetpackFillRateMidair",	"0"},
								{"JetpackUpForceDeadPlanetExtra",	"0"},
								{"JetpackForceDeadPlanetExtra",	"0"},
								{"JetpackIgnitionForceDeadPlanetExtra",	"0"}
								
							}
						}
					}
				}
								
			}
		}
		
	}	
}

