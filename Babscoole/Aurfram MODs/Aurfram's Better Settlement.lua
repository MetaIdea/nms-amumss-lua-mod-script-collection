NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Aurfram's Better Settlement.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "Aurfram",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"GCSETTLEMENTGLOBALS.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildingUpgradeTimeInSeconds", "0"},
                                {"BuildingFreeUpgradeTimeInSeconds", "0"},
                                {"JudgementWaitTimeMin", "5"},
                                {"JudgementWaitTimeMax", "30"},
                                {"BuildingJudgementPriorityChance", "1"},
                                {"VisitorJudgementSelector", "0.5"},
                                {"PolicyJudgementSelector", "0.5"},
                                {"RequestJudgementSelector", "0.5"},
                                {"ConflictJudgementSelector", "0.01"},
                                {"MaxNPCPopulation", "1000"},
                                {"SettlementMiniExpeditionSuccessChance", "1"},
                                {"InitialBuildingCountMin", "20"},
                                {"InitialBuildingCountMax", "50"},
                                {"MaxProductionSlotUnits", "100000"},
                                {"ProductUnitsPerCycleRateModifier", "750"},
                                {"SubstanceUnitsPerCycleRateModifier", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone", "0"},
                                {"Settlement_Bar", "0"},
                                {"Settlement_Tower", "0"},
                                {"Settlement_Market", "0"},
                                {"Settlement_Small", "0"},
                                {"Settlement_SmallIndustrial", "0"},
                                {"Settlement_Medium", "0"},
                                {"Settlement_Large", "0"},
                                {"Settlement_SheriffsOffice", "0"},
                                {"Settlement_Double", "0"},
                                {"Settlement_Farm", "0"},
                                {"Settlement_Factory", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatsMinValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Population", "100"},
                                {"Happiness", "30"},
                                {"Production", "500000"},
                                {"Sentinels", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatsMaxValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Population", "1000"},
                                {"Production", "100000000"},
                                {"Upkeep", "100000"},
                                {"Debt", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InitialStatsMinValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Population", "50"},
                                {"Happiness", "30"},
                                {"Production", "1500000"},
                                {"Upkeep", "0"},
                                {"Sentinels", "10"},
                                {"Alert", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"InitialStatsMaxValues"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Population", "100"},
                                {"Happiness", "50"},
                                {"Upkeep", "3000"},
                                {"Alert", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatProductivityContributionModifiers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Production", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PositiveWide"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "100"},
                                {"AmountMax", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PositiveLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "30"},
                                {"AmountMax", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PositiveMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "20"},
                                {"AmountMax", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PositiveSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "10"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","NegativeSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMax", "-10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","NegativeMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-30"},
                                {"AmountMax", "-20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","NegativeLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-50"},
                                {"AmountMax", "-30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Happiness","PositiveWide"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "8"},
                                {"AmountMax", "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Happiness","PositiveLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "6"},
                                {"AmountMax", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Happiness","PositiveMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5"},
                                {"AmountMax", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Happiness","PositiveSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "4"},
                                {"AmountMax", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Production","PositiveWide"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "200000"},
                                {"AmountMax", "1000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Production","PositiveLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "500000"},
                                {"AmountMax", "1000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Production","PositiveMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "300000"},
                                {"AmountMax", "500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Production","PositiveSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "100000"},
                                {"AmountMax", "300000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Upkeep","PositiveWide"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-1000000"},
                                {"AmountMax", "-100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Upkeep","PositiveLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-1000000"},
                                {"AmountMax", "-500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Upkeep","PositiveMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-500000"},
                                {"AmountMax", "-300000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Upkeep","PositiveSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-300000"},
                                {"AmountMax", "-100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Debt","PositiveWide"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-1000000"},
                                {"AmountMax", "-50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Debt","PositiveLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-1000000"},
                                {"AmountMax", "-500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Debt","PositiveMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-500000"},
                                {"AmountMax", "-100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Debt","PositiveSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "-100000"},
                                {"AmountMax", "-50000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Debt","NegativeSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "500"},
                                {"AmountMax", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Debt","NegativeMedium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "1000"},
                                {"AmountMax", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Debt","NegativeLarge"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", "5000"},
                                {"AmountMax", "10000"},
                            }
                        },
                    }
                }
            }
        }
    }
}