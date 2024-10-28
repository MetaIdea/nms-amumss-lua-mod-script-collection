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
            
						{
              COMMENT = [[-- Operation-1 alters every value from 10000 and up by a multiplier of 4.]],
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
            
						{
              COMMENT = [[-- Operation-2a alters every value < 10000 by a multiplier of 10.]],
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
            
						{
              COMMENT = [[-- Operation-2b reverting Operation-2a for every value < 2 by a divider of 10.]],
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
            
						{
              COMMENT = [[-- Operation-2c Testing ~= ]],
							["REPLACE_TYPE"] 		= "ONCE",
							["VALUE_MATCH"] 		= "2",
							["VALUE_MATCH_OPTIONS"]	= "~=",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin", 10},
								{"AmountMax", 10},
							},
						},
            
            {
              COMMENT = [[-- Operation-3a alters every value in the RANGE '40000-50000' AND also '100']],
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_MATCH"] = { {40000,50000}, 100 }, -- RANGE is 40000-50000 and value '100'
							-- ["VALUE_MATCH_OPTIONS"]	= "=", -- this is the default
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin", 10},
								{"AmountMax", 10},
							},
            },
            
            {
              COMMENT = [[-- Operation-3b alters every value NOT in the RANGE '160000-800000' and not '200' or '10']],
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_MATCH"] = { {800000,160000}, 200, 10 }, -- notice that RANGE will be 160000-800000 AND also '200' and '10' will not match
							["VALUE_MATCH_OPTIONS"]	= "~=",
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
	}, --5817 global replacements
}