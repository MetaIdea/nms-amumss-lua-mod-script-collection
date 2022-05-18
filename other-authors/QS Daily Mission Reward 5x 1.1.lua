NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "QS Daily Mission Reward 5x 1.1.pak",
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
								{"AmountMin",	"1250",},
								{"AmountMax",	"1250",},
							},	
						},
						{
							["SPECIAL_KEY_WORDS"]   = {"Id","R_NEXUS_QS_PQ",},
							["PRECEDING_KEY_WORDS"] = {"GcRewardMoney.xml",},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	"6000",},
								{"AmountMax",	"6000",},
							},
						},
					}
				},
			},
		}
	},
}


