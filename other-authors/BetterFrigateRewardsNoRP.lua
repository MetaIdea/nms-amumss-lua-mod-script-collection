FRIGATE_UNITS_MULTI		= 5		-- Default value is 1 | Multiplys the amount of units you get from Frigate (Freighter) missions with your fleet
FRIGATE_NANITES_MULTI	= 5		-- Default value is 1 | Multiplys the amount of nanites you get from Frigate (Freighter) missions with your fleet4

------------------------------------------------------------------------------
-------------------- DO NOT EDIT ANYTHING PAST THIS POINT --------------------
------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 	= "BetterFrigateRewardsNoRP.pak",
["MOD_AUTHOR"]		= "MrTrack",
["NMS_VERSION"]		= "5.21",
["MOD_DESCRIPTION"]	= "Simple multipliers to units and nanites within frigate missions",
["MODIFICATIONS"] 	=
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Units"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "0",
							["VALUE_MATCH_OPTIONS"]	= ">",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	FRIGATE_UNITS_MULTI},
								{"AmountMax",	FRIGATE_UNITS_MULTI}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Currency", "Nanites"},
							["SECTION_UP"]			= 1,
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "0",
							["VALUE_MATCH_OPTIONS"]	= ">",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	FRIGATE_NANITES_MULTI},
								{"AmountMax",	FRIGATE_NANITES_MULTI}
							}
						}
					}
				}
			}
		}
	}
}