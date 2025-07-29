NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "InfiniteCloak",
["MOD_DESCRIPTION"]	= "",
["MOD_AUTHOR"]			= "RedFalcons-MDX",
["LUA_AUTHOR"]			= "Babscoole",
["NMS_VERSION"]			= "5.72",
["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] = 
					{
						{				
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"StealthMinLevel",     "0"}, --Original 0.15
								{"StealthDrainRate",    "0"}, --Original 15
								{"StealthRechargeRate", "10000"}, --Original 12
							}
						},											
					}
				}
			}
		}
	}	
}