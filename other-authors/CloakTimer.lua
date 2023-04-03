NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "LongerCloak.pak",
["LUA_AUTHOR"]				= "iEx",
["NMS_VERSION"]				= "-",
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
							["VALUE_CHANGE_TABLE"] =
							{
								{"StealthDrainRate",					"1.0"},			
								{"StealthRechargeRate",					"10.0"},
							}
						},
					}
				}
			}
		}
	}	
}