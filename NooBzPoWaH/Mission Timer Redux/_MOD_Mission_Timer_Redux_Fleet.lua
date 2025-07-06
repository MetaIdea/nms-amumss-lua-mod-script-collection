NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_MOD_Mission_Timer_Redux_Fleet",
["MOD_DESCRIPTION"] 		= "Reduce Fleet Mission Timer",
["MOD_AUTHOR"]				= "NooBzPoWaH",
["LUA_AUTHOR"] 				= "Babscoole",
["NMS_VERSION"]				= "5.71+",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCFLEETGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TimeTakenForExpeditionEvent_Easy", "180"},
								{"TimeTakenForExpeditionEvent",		 "900"},
							}
						},
					}
				},				
			}
		},
	}	
}