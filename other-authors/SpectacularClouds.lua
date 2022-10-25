--GCENVIRONMENTGLOBALS.GLOBAL
CLOUDS_ANIM_SCALE = 10			--clouds animation speed, default = 50



NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "SpectacularClouds.pak",
["MOD_AUTHOR"]				= "Various",
["NMS_VERSION"]				= "1.00",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 				
				{
					["MBIN_FILE_SOURCE"] 	= 
					{
						"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"		
					},
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
							["PRECEDING_KEY_WORDS"] = "CloudProperties",   
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ConeRadius",					50},
								{"DarkOutlineScalar",			0},
								{"AnimationScale",				CLOUDS_ANIM_SCALE},
								{"CloudBottomFade",				0},							
							}
						}
					} 
				}
			}
		}
	}	
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE