max_build_time = 3 --seconds
cost_multiplier = 2
judgement_wait_time_mult = 0.2

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "SettlementProjectsRebalance.pak",
  ["MOD_DESCRIPTION"]		= "Settlement projects take twice as many resources but complete immediately. Overseer decisions are available much more frequently.",
  ["MOD_AUTHOR"]				= "CodenameAwesome",
  ["MODIFICATIONS"] 		=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSETTLEMENTGLOBALS.MBIN",},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
							["VALUE_MATCH"] = max_build_time,
							["VALUE_MATCH_OPTIONS"] = ">",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"IGNORE",	max_build_time},
							}	
						},
						{
							["PRECEDING_KEY_WORDS"] = {"SettlementBuildingCosts"},
							["VALUE_MATCH"] = 1,
							["VALUE_MATCH_OPTIONS"] = ">",
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountMin",	cost_multiplier},
								{"AmountMax",	cost_multiplier},
							}	
						},
						{
							["MATH_OPERATION"] = "*",
							["INTEGER_TO_FLOAT"] = "PRESERVE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"JudgementWaitTimeMin",	judgement_wait_time_mult},
								{"JudgementWaitTimeMax",	judgement_wait_time_mult},
							}	
						},
					}
				},
			}
		},
	}
}