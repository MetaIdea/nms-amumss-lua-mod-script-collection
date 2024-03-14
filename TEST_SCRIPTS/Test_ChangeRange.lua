NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] 			= "Test_ChangeArangeOfValues.pak",
    ["MOD_AUTHOR"]				= "Wbertro",
    ["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
          -- Modifying a RANGE (lower to upper limit) of VALUES, BASIC idea:
          -- if values are 1, 2, 3, 4, 5 and you want to change range 2-4
          --   change values >= 2 to x * value from lower limit up
          --   reverse operation on upper limit up: change values > 4 to value / x
          -- NOTE: it can also be done using upper limit first then lower limit (like below)
          
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
            -- Operation-1 alters every value from 10000 and up by a multiplier of 4.
						{
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "10000",
							["VALUE_MATCH_OPTIONS"]	= ">=",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin", 4},
								{"AmountMax", 4},
							},
						},
            -- Operation-2 alters every value < 10000 by a multiplier of 10.
						{
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "10000",
							["VALUE_MATCH_OPTIONS"]	= "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin", 10},
								{"AmountMax", 10},
							},
						},
            -- Operation-2a reverting Operation-2 for every value < 2 by a divider of 10.
						{
							["MATH_OPERATION"] 		= "/",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2",
							["VALUE_MATCH_OPTIONS"]	= "<",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin", 10},
								{"AmountMax", 10},
							},
						},
            },
				},
			},
		},
	}, --3923 global replacements
}