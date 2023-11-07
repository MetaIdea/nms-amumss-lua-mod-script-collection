NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FasterPulseDrive.pak", 
["MOD_AUTHOR"]				= "",
["NMS_VERSION"]				= "",
["MOD_DESCRIPTION"]			= "",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSPACESHIPGLOBALS.GLOBAL.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpSpeed", 2},
								{"MiniWarpExitSpeed", 2},
								{"MiniWarpExitSpeedStation", 2},
							}
						}
					},
				}
			}
		}
	}	
}