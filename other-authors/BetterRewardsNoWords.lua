-- Learning more words was created by ChoseSauvage ( https://www.nexusmods.com/nomanssky/mods/733 )
-- and converted to lua script by Mjjstral (available in AMUMSS script collection)

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

RESOURCES_MULTI			= 2		-- Default value is 1 | Multiplys the amount of resources gathered, as well as containers, depots, guild rewards and ships that have resources

SALVAGED_DATA			= 1		-- Default value is 1 | Multiplys the amount of salvaged data you mine up and get in Missions

MISSION_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Mission Board (Space Station) Missions
MISSION_NANITES_MULTI	= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Mission Board (Space Station) Missions
MISSION_PROD_MULTI		= 1		-- Default value is 1 | Multiplys the amount of products you get from Mission Board (Space Station) Missions

NEXUS_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Nexus Missions
NEXUS_NANITES_MULTI		= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Nexus Missions
NEXUS_PROD_MULTI		= 1		-- Default value is 1 | Multiplys the amount of products you get from Nexus Missions

------------------------------------------------------------------------------
-------------------- DO NOT EDIT ANYTHING PAST THIS POINT --------------------
------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 	= "BetterRewards.pak",
["MOD_AUTHOR"]		= "MrTrack",
["NMS_VERSION"]		= "3.89",
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

-----------------------------------------------------------------------------------------------------
--------------------------------------------- RESOURCES ---------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"DefaultSubstanceType", "None"},
							["SECTION_UP"]			= 2,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCES_MULTI},
								{"AmountMax",	RESOURCES_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
--------------------------------------------- MISSIONS ----------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "DefaultProductType", "None"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
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
						
-----------------------------------------------------------------------------------------------------
--------------------------------------- MISSIONS CORRECTIONS ----------------------------------------
-----------------------------------------------------------------------------------------------------
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PROD_MULTI},
								{"AmountMax",	MISSION_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PROD_MULTI},
								{"AmountMax",	NEXUS_PROD_MULTI}
							}
						},

-----------------------------------------------------------------------------------------------------
------------------------------------------- SALVAGED DATA -------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_PET_ROCK", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT2", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT3", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT4", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE_ONLY", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "RS_BASE_TOKENS", "ID", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
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