NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Immersive Torch", 
["MOD_AUTHOR"]				= "PC Mystic",
["LUA_AUTHOR"]				= "PC Mystic",
["NMS_VERSION"]				= "4.0",
["MOD_DESCRIPTION"]			= "Modifies Torch parameters decreasing size and brightness for more realism",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TorchFoV", "60"},
								{"TorchDimFoV", "45"},
								{"InteractionTorchFoV", "60"},
								{"UndergroundTorchFoV", "50"},
								{"UndergroundTorchFoVFar", "75"}
							}
						}
					}
				}
			}
		}
	}
}
