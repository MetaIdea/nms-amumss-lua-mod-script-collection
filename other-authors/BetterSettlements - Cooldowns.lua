NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "BetterSettlements.pak",
["MOD_AUTHOR"]				= "TwistedViking",
["NMS_VERSION"]				= "Echoes",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSETTLEMENTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						
						{
							["PRECEDING_KEY_WORDS"] = {},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								--{"SettlementMiniExpeditionSuccessChance",		"1"}, 	-- Original 0.7
								{"BuildingUpgradeTimeInSeconds",		"1200"}, 	-- Original 7200
								--{"MaxNPCPopulation",		"60"}, 	-- Original 30
								{"JudgementWaitTimeMin",		"300"}, 	-- Original 900
								--{"BuildingJudgementPriorityChance",		"0.8"}, 	-- Original 0.8
								--{"VisitorJudgementSelector",		"0.33"}, 	-- Original 0.33
								--{"PolicyJudgementSelector",		"0.57"}, 	-- Original 0.57
								--{"RequestJudgementSelector",		"0.78"}, 	-- Original 0.78
								--{"ConflictJudgementSelector",		"1"}, 	-- Original 1
								--{"MaxPerksCount",					"6"}, 	-- Original 6  -- Any higher value will crash the game!!!
								--{"MinInitialPositivePerksCount",		"1"}, 	-- Original 1
								--{"MaxInitialPositivePerksCount",		"3"}, 	-- Original 1
								--{"MinInitialNegativePerksCount",		"0"}, 	-- Original 4
								--{"MaxInitialNegativePerksCount",		"2"}, 	-- Original 4
								--{"MaxProductionSlotUnits",		"9999"}, 	-- Original 999
								--{"ProductUnitsPerCycleRateModifier",		"100"}, 	-- Original 50
							}
						}
					}
				}
			}
		}
	}
}