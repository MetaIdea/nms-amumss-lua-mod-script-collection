-- Learning more words was created by ChoseSauvage ( https://www.nexusmods.com/nomanssky/mods/733 )
-- and converted to lua script by Mjjstral (available in AMUMSS script collection)


UNITS_MULTI				= 5		-- Default value is 1 | Multiplys the amount of units you get
LOW_UNITS_MULTI			= 10	-- Default value is 1 | Terminals and other unit sources that have really low unit rewards (90 - 2000 units)
								-- are multiplied by this number on top of the regular unit multiplier (so by default = 5 * 10 = 50x multiplier)
								
NANITES_MULTI			= 5		-- Default value is 1 | Multiplys the amount of nanites you get

NADA_MILESTONE_REWARD	= 150	-- Default value is 50 | Sets the reward value (in nanites) for each milestone tier at Nada and other anomalies (in the Space Anomaly)

QS_MULTI				= 5		-- Default value is 1 | Multiplys the amount of quicksilver you get

RESOURCES_MULTI			= 2		-- Default value is 1 | Multiplys the amount of resources gathered, as well as containers, depots, guild rewards and ships that have resources

WORDS_TO_LEARN			= 3		-- Default value is 1 | Sets the amount of words you learn from non npc sources
ATLAS_WORDS_TO_LEARN	= 5		-- Default value is 1 | Sets the amount of words you learn from the Atlas Interface

SALVAGED_DATA			= 120		-- Default value is 1 | Sets the amount of salvaged data you mine up and get in Missions

MISSION_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Mission Board (Space Station) Missions
MISSION_NANITES_MULTI	= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Mission Board (Space Station) Missions
MISSION_PROD_MULTI		= 1		-- Default value is 1 | Multiplys the amount of products you get from Mission Board (Space Station) Missions

NEXUS_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Nexus Missions
NEXUS_NANITES_MULTI		= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Nexus Missions
NEXUS_PROD_MULTI		= 1		-- Default value is 1 | Multiplys the amount of products you get from Nexus Missions

-- When learning words, you can choose to have a PERCENTAGE(%) chance at learning an Atlas word along with them (default value is 15%)
-- If you wish to learn Atlas words change the value to a number ranging from 1-100 in the following line (line 42): <Property name="PercentageChance" value="15" />
-- Edit the value in the double bracket -> [[ ]] <- section below!! ----> <Property name="PercentageChance" value="15" /> <---- edit this "15", the " " must stay!!

ATLAS_WORD = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="15" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Atlas" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

------------------------------------------------------------------------------
-------------------- DO NOT EDIT ANYTHING PAST THIS POINT --------------------
------------------------------------------------------------------------------

MISC_WORD =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

ATLAS_WORD_FULL =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Atlas" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="gcwordcategorytableEnum" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

MISC_WORD_LEARN = string.rep(MISC_WORD, WORDS_TO_LEARN)
ATLAS_WORD_LEARN = string.rep(ATLAS_WORD_FULL, ATLAS_WORDS_TO_LEARN - 1)

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 	= "__MoreSalvageX10 w Better Rewards.pak",
["MOD_AUTHOR"]		= "Deathrider - rambo7880 on nexus",
["NMS_VERSION"]		= "3.67",
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
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY1"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY2"},
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTI},
								{"AmountMax",	UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATE_BOUNTY3"},
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
							["SPECIAL_KEY_WORDS"]	= {"gcproducttableEnum", "None"},
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
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT2", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT3", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT4", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE_ONLY", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMM_UG_HARD", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "ID", "BP_SALVAGE"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	SALVAGED_DATA},
								{"AmountMax",	SALVAGED_DATA}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "RS_BASE_TOKENS", "ID", "BP_SALVAGE"},
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
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "WORD", "PercentageChance", "IGNORE", "AlienRace", "None"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRA_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TRA_WORD", "PercentageChance", "IGNORE", "AlienRace", "Traders"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRA_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "EXP_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "EXP_WORD", "PercentageChance", "IGNORE", "AlienRace", "Explorers"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "EXP_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WAR_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "WAR_WORD", "PercentageChance", "IGNORE", "AlienRace", "Warriors"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WAR_WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_EXP", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TEACHWORD_EXP", "PercentageChance", "IGNORE", "AlienRace", "Explorers"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_EXP", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_TRA", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TEACHWORD_TRA", "PercentageChance", "IGNORE", "AlienRace", "Traders"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_TRA", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_WAR", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "TEACHWORD_WAR", "PercentageChance", "IGNORE", "AlienRace", "Warriors"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_WAR", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= MISC_WORD_LEARN
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TEACHWORD_ATLAS", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD_LEARN
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