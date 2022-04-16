NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "VV_NoPulseLines.pak", 
["MOD_AUTHOR"]				= "VirtualVoyager",
["NMS_VERSION"]				= "3.60",
["MOD_DESCRIPTION"]			= "Removes Pulse and White Vertical Speed Lines",
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
								{"MiniWarpLinesNum", "0"}
							}
						}
					}
				}	
			}
		}
	}	
}