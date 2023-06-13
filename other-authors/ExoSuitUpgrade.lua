NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExoSuitUpgrade.pak",
["MOD_DESCRIPTION"]			= "ExoSuit Upgrade",
["MOD_AUTHOR"]				= "Gobi42",
["NMS_VERSION"]				= "4.23",
["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["SPECIAL_KEY_WORDS"] = {},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
								{
									
										
										
											{"GroundWalkSpeed",				"5"}, 	
											{"GroundRunSpeed",				"12"},
											{"GroundWalkSpeedLowG",     	"2"}, 	
											{"GroundRunSpeedLowG",  		"6"},
											{"JetpackMaxSpeed",              "25"}
										
									
								}
						}
					}
				}
			}
		}
	}
}