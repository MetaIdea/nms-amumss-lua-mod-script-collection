NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ExoSubBoost.pak",
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
							["SPECIAL_KEY_WORDS"] = {"Name", "SUBMARINE"},
							["VALUE_CHANGE_TABLE"] 	=
								{
									
										
										
											{"TopSpeedForward",				"30"}, 	
											{"TopSpeedReverse",				"20"},
											{"UnderwaterEngineMaxSpeed",	"30"},	
											{"VehicleBoostMaxSpeed", 		"45"},
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