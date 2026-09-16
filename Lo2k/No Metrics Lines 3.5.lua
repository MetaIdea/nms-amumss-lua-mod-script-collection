NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "No Metrics Lines 3.5", 
["MOD_AUTHOR"]			= "Lo2k",
["LUA_AUTHOR"]			= "Lo2k",
["NMS_VERSION"]			= "7.00",
["MOD_DESCRIPTION"]	= "This mod removes thin regular vertical white lines during pulse jumps",
["MODIFICATIONS"] 	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"MiniWarpLinesNum", "0"}
							}
						}
					}
				}	
			}
		}
	}	
}