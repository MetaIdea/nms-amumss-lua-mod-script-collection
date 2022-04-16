NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FreighterCustomizationCameraTweaks.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "TheLich",
["NMS_VERSION"]				= "1.0.1",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F3D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\UI\CHARACTERCUSTOMISATIONUIDATA.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "Freighter",
                            ["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"MinYaw",		-140},
								{"MaxYaw",		220},
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\SPACECRAFT\COMMONPARTS\HANGARINTERIORPARTS\BRIDGETERMINAL\ENTITIES\FREIGHTERRESERACHTERMINAL.ENTITY.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"Renderer", "Camera"},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"Distance",		7500},
								{"Pitch",		15},
								{"Rotate",		235},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Renderer", "Offset"},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"x",		2200},
								{"y",		220},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Distance","1400"},
							["PRECEDING_KEY_WORDS"] = {"Offset"},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"x",		900},
								{"y",		220},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Distance","1400"},
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"Distance",		2500},
								{"Pitch",		15},
								{"Rotate",		235},
							}
						},
					}
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE