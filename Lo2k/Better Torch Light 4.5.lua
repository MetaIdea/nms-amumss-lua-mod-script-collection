NewFov = 40
NewStrength = 8
NewStrengthFar = 8.5

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Better Torch Light 4.5.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.51",
["MOD_DESCRIPTION"]			= "This mods makes torch light more realistic",
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
								{"UndergroundTorchStrengthFar",	NewStrengthFar},
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