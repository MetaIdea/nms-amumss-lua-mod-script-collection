NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MechCamUpgrade.pak",
["MOD_DESCRIPTION"]			= "MechCamUpgrade",
["MOD_AUTHOR"]				= "Gobi42",
["NMS_VERSION"]				= "4.23",
["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCCAMERAGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] = {},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MechCameraArmShootOffsetY",           "2"}
								
							},
							
							
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MechFollowCam"},
							["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetX",                             "1.5"},
								{"OffsetY",                             "2"},
								{"OffsetYAlt",                          "2"},
								{"OffsetYSlopeExtra",                   "1.0"}
							},
							
							
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MechCombatCam"},
							["SPECIAL_KEY_WORDS"] = {"Name",    "MECH"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetY",                             "2"},
								{"OffsetYAlt",                          "2"},
								{"OffsetYSlopeExtra",                   "1.0"}
							},
							
							
						},
						{
							["PRECEDING_KEY_WORDS"] = {"MechJetpackCam"},
							["SPECIAL_KEY_WORDS"] = {"Name",   "MECHJETPACK"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"OffsetX",                             "1.5"},
								{"OffsetY",                             "1.5"},
								{"OffsetYAlt",                          "1.5"},
								{"OffsetYSlopeExtra",                   "1.0"}
							},
							
							
						}
					}
				}
				
			}
			
		}
		
	}
}