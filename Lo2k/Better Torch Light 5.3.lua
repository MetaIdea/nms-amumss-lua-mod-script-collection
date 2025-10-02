NewFov = 40
NewStrength = 8

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Torch Light 5.3", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "5.21",
["MOD_DESCRIPTION"]			= "This mods makes torch light more realistic",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["MXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"TorchFoV",	NewFov},
								{"TorchDimFoV",	NewFov},
								{"InteractionTorchFoV",	NewFov},
								{"UndergroundTorchFoV",	NewFov},
								{"TorchStrength",	NewStrength},
								{"TorchDimStrength",	NewStrength},
								{"InteractionTorchStrength",	NewStrength},
								{"UndergroundTorchStrength",	NewStrength},
								{"TorchOffsetY", "0"},
								{"TorchFollowCameraTime", "0.05"},  --Original : 0.15
							}
						}
					}
				}
			}
		}
	}	
}