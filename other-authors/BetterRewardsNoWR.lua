-- Please be aware if you set any of the values below to 0 or NOT integer, you
-- might break the math used and the .lua won't produce a useable .pak file!

------------------------------------------------------------------------------
------------------- YOU SHOULD ONLY EDIT THE VALUES BELOW --------------------
------------------------------------------------------------------------------

UNITS_MULTI				= 5		-- Default value is 1 | Multiplys the amount of units you get
LOW_UNITS_MULTI			= 10	-- Default value is 1 | Terminals and other unit sources that have really low unit rewards (90 - 2000 units)
								-- are multiplied by this number on top of the regular unit multiplier (so by default = 5 * 10 = 50x multiplier)
								
NANITES_MULTI			= 5		-- Default value is 1 | Multiplys the amount of nanites you get

NADA_MILESTONE_REWARD	= 150	-- Default value is 50 | Sets the reward value (in nanites) for each milestone tier at Nada and other anomalies (in the Space Anomaly)

QS_MULTI				= 5		-- Default value is 1 | Multiplys the amount of quicksilver you get

MISSION_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Mission Board (Space Station) Missions
MISSION_NANITES_MULTI	= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Mission Board (Space Station) Missions

NEXUS_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Nexus Missions
NEXUS_NANITES_MULTI		= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Nexus Missions

BOUNTY_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Bounty Board Missions (Pirate or outlaw run Space Stations)
BOUNTY_NANITES_MULTI	= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Bounty Board Missions (Pirate or outlaw run Space Stations)

------------------------------------------------------------------------------
-------------------- DO NOT EDIT ANYTHING PAST THIS POINT --------------------
------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 	= "BetterRewards.pak",
["MOD_AUTHOR"]		= "MrTrack",
["NMS_VERSION"]		= "3.98",
["MODIFICATIONS"] 	=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{

-----------------------------------------------------------------------------------------------------
------------------------------------------ CURRENCY: UNITS ------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2000",
							["VALUE_MATCH_OPTIONS"]	= "<=",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	LOW_UNITS_MULTI},
								{"AmountMax",	LOW_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
-----------------------------------------------------------------------------------------------------
----------------------------------------- CURRENCY: NANITES -----------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},


-----------------------------------------------------------------------------------------------------
--------------------------------------- CURRENCY: QUICKSILVER ---------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Specials"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	QS_MULTI},
								{"AmountMax",	QS_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------- CURRENCY CORRECTIONS ----------------------------------------
-----------------------------------------------------------------------------------------------------
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY1", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY2", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY3", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_PIRATEBOARD_B", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_PIRATEBOARD_B", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTI},
								{"AmountMax",	NANITES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
---------------------------------------- CURRENCY: MISSIONS -----------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTI},
								{"AmountMax",	MISSION_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTI},
								{"AmountMax",	MISSION_NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTI},
								{"AmountMax",	NEXUS_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_NANITES_MULTI},
								{"AmountMax",	NEXUS_NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTI},
								{"AmountMax",	NEXUS_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_NANITES_MULTI},
								{"AmountMax",	NEXUS_NANITES_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_PIRATEBOARD_B", "Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	BOUNTY_UNITS_MULTI},
								{"AmountMax",	BOUNTY_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_PIRATEBOARD_B", "Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	BOUNTY_NANITES_MULTI},
								{"AmountMax",	BOUNTY_NANITES_MULTI}
							}
						},
						
-----------------------------------------------------------------------------------------------------
------------------------------------------------ MISC -----------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NADA_JM"},
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountPerStat",	NADA_MILESTONE_REWARD}
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
--DON'T ADD ANYTHING PAST THIS POINT HERE