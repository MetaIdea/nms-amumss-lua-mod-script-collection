NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Explorer3rdPersonCamFix_Freelook_V01.pak",
["MOD_AUTHOR"]				= "Jordan_Twiggza",
["NMS_VERSION"]				= "2.62",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SCIENCE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",						"4"},	-- Original "1"
								{"LookStickLimitAngle", 		"45"},	-- Original "15"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SPACESHIP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",						"4"},	-- Original "1"
								{"LookStickLimitAngle", 		"45"},	-- Original "15"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","DROPSHIP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",						"4"},	-- Original "1"
								{"LookStickLimitAngle", 		"45"},	-- Original "15"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","SHUTTLE",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",						"4"},	-- Original "1"
								{"LookStickLimitAngle", 		"45"},	-- Original "15"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ROYAL",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",						"4"},	-- Original "1"
								{"LookStickLimitAngle", 		"45"},	-- Original "15"
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Name","ALIENSHIP",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",						"4"},	-- Original "1"
								{"LookStickLimitAngle", 		"45"},	-- Original "15"
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