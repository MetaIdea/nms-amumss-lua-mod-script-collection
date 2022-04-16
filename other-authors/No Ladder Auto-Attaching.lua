NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "No Ladder Auto-Attaching.pak",
["MOD_DESCRIPTION"]		= "No Ladder Auto-Attaching",
["MOD_AUTHOR"]				= "betaALPHA",
["NMS_VERSION"]				= "3.13",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCHARACTERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LadderDistanceToAutoMount",	 "0"}, -- Originally "0.4"
								{"LadderCooldownAfterBeforeAutoClimb",	"0"} -- Original "0.6"				
							}	
						}						
					}
				}
			}
		}
	}	
}
