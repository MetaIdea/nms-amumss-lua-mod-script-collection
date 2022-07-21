NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]  = "CMD 3.91.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.91",
["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\MISSIONCOMMUNITYDATA.MBIN",				
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["REPLACE_TYPE"] = "ALL",			
							["VALUE_MATCH"]  = "False",  						
							["VALUE_CHANGE_TABLE"] = 
							{
								{"ShowTimeToDeadline", "True"},
							}
						}
					}
				}
			}
		}
	}	
}