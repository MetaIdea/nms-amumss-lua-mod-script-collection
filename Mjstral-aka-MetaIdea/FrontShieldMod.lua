NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "FrontShieldMod.pak",
["MOD_AUTHOR"]				= "Mjjstral",
["NMS_VERSION"]				= "2.0+",
["MOD_DESCRIPTION"]			= "",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.86055253.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\WEAPONS\PLAYERSHIELD\PLAYERSHIELD.SCENE.MBIN"
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Children" },
							["ADD"] 				= 
[[

]]
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "MODELS\COMMON\WEAPONS\PLAYERSHIELD\PLAYERSHIELD\ENTITIES\PLAYERSHIELD.ENTITY.MBIN"
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = { "Components" },
							["ADD"] 				= 
[[

]]
						}
					}
				}				
			}
		},
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"FrontShieldEnabled", "True"},
								{"FrontShieldOffsetOff", "-1.3"},
								{"FrontShieldOffsetOn", "-1.2"},
								{"FrontShieldSpeedSlowdown", "0.5"},						
							}
						}
					}
				}
			}
		}	
	}
}