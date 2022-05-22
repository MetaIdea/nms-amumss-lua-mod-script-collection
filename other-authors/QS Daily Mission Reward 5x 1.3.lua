-- Multiplier Settings --

Daily_Multiplier = "5" -- Nexus Daily Quicksilver Mission Muliplier
Weekly_Multiplier = "5" -- Nexus Weekly Quicksilver Mission Muliplier

-- DONT EDIT ANYTHING BELOW THIS POINT OR THE SCRIPT MIGHT BREAK --

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "QS Daily Mission Reward 5x 1.3.pak",
  ["MOD_AUTHOR"]				= "JustRuthless",
  ["NMS_VERSION"]				= "3.89",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"METADATA\REALITY\TABLES\REWARDTABLE.MBIN"},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_QS","Currency","Specials",},
							["SECTION_UP_SPECIAL"] = 1,
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	Daily_Multiplier,},
								{"AmountMax",	Daily_Multiplier,},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_QS_PQ","Currency","Specials",},
							["SECTION_UP_SPECIAL"] = 1,
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	Weekly_Multiplier,},
								{"AmountMax",	Weekly_Multiplier,},
							},
						},
					}
				},
			},
		}
	},
}