NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Stop The Clocks 3.1.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mods makes sun still",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCDEBUGOPTIONS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"EnableDayNightCycle", "False"},   -- original : True
								{"ForceSunAngle", "0"},   -- Changes sun angle / Time : the unit is 4 minutes, so 90 = +6 hours
							}
						}
					}
				}	
			}
		}
	}	
}
