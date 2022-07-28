NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "_InstantFleetExpeditions.pak",
  ["MOD_AUTHOR"]				= "Pr0f1l3Alpha",
  ["MOD_DESCRIPTION"]		= "",
  ["NMS_VERSION"]				= "3.97",
  ["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= { "GCFLEETGLOBALS.GLOBAL.MBIN" }
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TimeTakenForExpeditionEvent_Easy", 0},
								{"TimeTakenForExpeditionEvent", 0},
							}
						}
					}
				}
			}
		}
	}
}