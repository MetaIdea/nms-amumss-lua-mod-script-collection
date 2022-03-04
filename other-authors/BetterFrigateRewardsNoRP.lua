UNITS_MULTI		= 5			-- Default value is 1 | Multiplys the amount of units you get 
NANITES_MULTI	= 5			-- Default value is 1 | Multiplys the amount of nanites you get
PRODUCT_MULTI	= 1			-- Default value is 1 | Multiplys the amount of products you get
RESOURCES_MULTI	= 1			-- Default value is 1 | Multiplys the amount of resources you get

-- All the above multipliers are modifying the frigate (freighter) mission rewards.
-- If you are looking for the main mod files' .lua, download the other one on the mod page. (Better Rewards LUA)

-----------------------------------------------------------------------------------------------------------
---------------------------------- DO NOT EDIT ANYTHING PAST THIS POINT -----------------------------------
-----------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 	= "BetterFrigateRewards.pak",
	["MOD_AUTHOR"]		= "MrTrack",
	["NMS_VERSION"]		= "3.84",
	["MODIFICATIONS"] 	=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
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
---------------------------------------------- PRODUCTS ---------------------------------------------
-----------------------------------------------------------------------------------------------------

						{
							["SPECIAL_KEY_WORDS"]	= {"DefaultProductType", "None"},
							["SECTION_UP"]			= 2,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTI},
								{"AmountMax",	PRODUCT_MULTI}
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