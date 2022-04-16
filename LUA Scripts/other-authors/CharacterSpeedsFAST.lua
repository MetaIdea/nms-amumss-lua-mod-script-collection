NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "CharacterSpeedsFAST.pak",
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
								{"GroundWalkSpeed",			              "8"},   -- Original "4.4"
								{"GroundRunSpeed",			              "10"},  -- Original "8"
								{"GroundWalkSpeedLowG",	                  "3"},   -- Original "1.6"
								{"GroundRunSpeedLowG",		              "4"},   -- Original "3.5"	
								{"RocketBootsImpulse",                    "6"},   -- Original "3"
								{"RocketBootsBoostTankDrainSpeed",        "1"},   -- Original "6"
								{"RocketBootsMaxSpeed",                   "30"},  -- Original "20"
								{"JetpackForce",                          "40"},  -- Original "31"
								{"JetpackBrake",                          "5"},   -- Original "2.2"
								{"JetpackFillRate",                       "5"},   -- Original "0.5"
								{"JetpackFillRateHardMode",               "2"},   -- Original "0.2"
								{"JetpackFillRateMidair",                 "3"},   -- Original "0.25"
							}
						}
					} --5 global replacements
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
								{"Bonus",	"10"},	-- Original "2.75" line 549 --This will generate a WARNING
								{"Bonus",	"10"}, 	-- Original "2.75" line 549
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