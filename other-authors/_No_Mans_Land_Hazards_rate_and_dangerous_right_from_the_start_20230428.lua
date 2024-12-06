
NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Mans Land Hazards rate and dangerous right from the start.pak", 
["MOD_AUTHOR"]				= "Youngneil1",				
["NMS_VERSION"]				= "4.23",
["MOD_DESCRIPTION"]			= "This mods disables the initially slowed hazard drain and adjusts drain rate.",
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
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EarlyHazardTimeMultiplier",	1},  --1.6
								{"StartHazardTimeMultiplier",	1}     --10
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "HazardDrainMultipliers",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"Slow", 1.1},
								{"Normal", 2.2},
								{"Fast", 3.3},
							}
						}
					}
				}
			}
		}
	}	
}

