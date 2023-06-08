NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExoBuggyBoost.pak",
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
							["SPECIAL_KEY_WORDS"] = {"Name", "MED_BUGGY"},
							["INTEGER_TO_FLOAT"] 	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	=
								{
									
										
										
											{"TopSpeedForward",				"50"}, 	
											{"TopSpeedReverse",				"35"},
											{"UnderwaterEngineMaxSpeed",	"35"}, 	
											{"VehicleBoostMaxSpeed", 		"100"},
											{"VehicleBoostTime",			"2.5"},
											{"VehicleBoostRechargeTime",    "1.5"}
										
									
								}
						}
					}
				}
			}
		}
	}
}	