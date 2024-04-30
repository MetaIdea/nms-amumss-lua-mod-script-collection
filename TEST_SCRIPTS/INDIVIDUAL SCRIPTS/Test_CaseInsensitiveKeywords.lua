
NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] 			= "Test_CaseInsensitiveKeywords.pak",
    ["MOD_AUTHOR"]				= "Wbertro",
    ["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
            {
              COMMENT = [[Test: SPECIAL_KEY_WORDS case insensitivity: in EXMl, it is {"ID","ASTEROID2",},]],
              ["SPECIAL_KEY_WORDS"]    = {"id","asteroid2",}, -- 16 places
              ["MATH_OPERATION"]         = "*",
              ["REPLACE_TYPE"]         = "ALL",
              ["VALUE_CHANGE_TABLE"]     =
              {
                  {"AmountMin",    2},
                  {"AmountMax",    2},
              },
            }, --32 replacements

            {
              COMMENT = [[Test: PRECEDING_KEY_WORDS case insensitivity: in EXMl, it is {"GcGenericRewardTableEntry.xml",},]],
              ["PRECEDING_KEY_WORDS"]    = {"GCGENERICRewardTableEntry.XML","GCGENERICRewardTableEntry.XML","GCGENERICRewardTableEntry.XML",},
              ["VALUE_CHANGE_TABLE"]     =
              {
                  {"AmountMin",    2},
              },
            }, --1 replacement

            {
              COMMENT = [[Test: Only ONE word in PRECEDING_KEY_WORDS after SKW to find the section]],
							["SPECIAL_KEY_WORDS"] = {"Id","R_ABAND_CRATE",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardProcTechProduct.xml",}, --
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"WeightedChanceLegendary",	"11111"},
							},
						}, --1 replacement
          },
				},
			},
		},
	}, --34 global replacements
}