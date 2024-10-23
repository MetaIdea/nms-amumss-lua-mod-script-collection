NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Faster Pulse Drive Engage 1.6.pak",
["LUA_AUTHOR"]				= "as0FF",
["NMS_VERSION"]				= "5.20",
["MOD_DESCRIPTION"]			= "A simple mod that cuts the time it takes to go into pulse drive in half",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpChargeTime", "1"}, 	-- original 2
							}
						}
					}
				}	
			}
		}
	}	
}