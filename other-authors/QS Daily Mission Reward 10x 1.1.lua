NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "QS Daily Mission Reward 10x 1.1.pak",
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
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_QS",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardMoney.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	"2500",},
								{"AmountMax",	"2500",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_QS_PQ",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardMoney.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	"12000",},
								{"AmountMax",	"12000",},
							},
						},
					}
				},
			},
		}
	},
}


