NewFov = 40
NewStrength = 6

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Torch Light 2.9.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.7",
["MOD_DESCRIPTION"]			= "This mods reduces torch light",
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