NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExoHovercraftBoost.pak",
["MOD_DESCRIPTION"]			= "ExoCraftBoost",
["MOD_AUTHOR"]				= "Gobi42",
["NMS_VERSION"]				= "4.23",
["MODIFICATIONS"] 			= 
	{
		{
			
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCVEHICLEGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = {},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["SPECIAL_KEY_WORDS"] = {"Name", "HOVERCRAFT"},
							["VALUE_CHANGE_TABLE"] 	=
								{
									
										
										
											{"TopSpeedForward",				"100"}, 	
											{"TopSpeedReverse",				"100"},
											{"UnderwaterEngineMaxSpeed",	"100"}, 	
											{"VehicleBoostMaxSpeed", 		"150"},
											{"VehicleBoostTime",			"3"},
											{"VehicleBoostRechargeTime",     "1.5"}
										
									
								}
						}
					}
				}
			}
		}
	}
}	