NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CharacterSpeedsFASTER.pak",
["MOD_AUTHOR"]				= "HauntedKobra",
["NMS_VERSION"]				= "3.64",
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
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GroundWalkSpeed",			              "12"},   -- Original "4.4"
								{"GroundRunSpeed",			              "18"},  -- Original "8"
								{"GroundWalkSpeedLowG",	                  "5"},   -- Original "1.6"
								{"GroundRunSpeedLowG",		              "8"},   -- Original "3.5"	
								{"RocketBootsImpulse",                    "10"},   -- Original "3"
								{"RocketBootsBoostTankDrainSpeed",        "1"},   -- Original "6"
								{"RocketBootsMaxSpeed",                   "40"},  -- Original "20"
								{"JetpackForce",                          "50"},  -- Original "31"
								{"JetpackBrake",                          "10"},   -- Original "2.2"
								{"JetpackMaxSpeed",                       "35"},  -- Original "5"
								{"JetpackMaxUpSpeed",                     "40"},  -- Original "30"
								{"JetpackFillRate",                       "10"},   -- Original "0.5"
								{"JetpackFillRateHardMode",               "4"},   -- Original "0.2"
								{"JetpackFillRateMidair",                 "10"},   -- Original "0.25"
							}
						}
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","JET1",},
							["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"15"},	-- Original "2.75" line 549 --This will generate a WARNING
								{"Bonus",	"15"}, 	-- Original "2.75" line 549
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