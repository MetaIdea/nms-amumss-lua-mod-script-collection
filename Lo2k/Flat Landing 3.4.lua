NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Flat Landing 3.4.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.94",
["MOD_DESCRIPTION"]			= "This mod prevents ship nose up effect at landing time",
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
								{"LandingPushNoseUpFactor", "-0.1"}
							}
						}
					}
				}	
			}
		}
	}	
}