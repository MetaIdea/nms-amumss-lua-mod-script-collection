NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "More_Comfortable_Settlement.pak",
    ["MOD_DESCRIPTION"] = "Adjust some parameters of the settlement to make it more reasonable and comfortable",
    ["MOD_AUTHOR"] = "catandlemonade",
    ["LUA_AUTHOR"] = "catandlemonade",
    ["NMS_VERSION"] = "5.29",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildingUpgradeTimeInSeconds", 600}, -- 7200
                                {"JudgementWaitTimeMin", 620}, -- 900
                                {"JudgementWaitTimeMax", 880}, -- 7200
                                {"VisitorJudgementSelector", 0.5}, -- 0.33
                                {"PolicyJudgementSelector", 1}, -- 0.57
                                {"RequestJudgementSelector", 0.3}, -- 0.78
                                {"ConflictJudgementSelector", 0.1}, -- 1
                                {"SettlementMiniExpeditionSuccessChance", 0.99}, -- 0.7
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone", 10}, -- 3600
                                {"Settlement_Bar", 10}, -- 3600
                                {"Settlement_Tower", 10}, -- 3600
                                {"Settlement_Market", 10}, -- 7200
                                {"Settlement_Small", 10}, -- 1200
                                {"Settlement_SmallIndustrial", 10}, -- 1200
                                {"Settlement_Medium", 10}, -- 2800                               
                                {"Settlement_Large", 10}, -- 7200
                                {"Settlement_SheriffsOffice", 10}, -- 90
                                {"Settlement_Double", 10}, -- 3600
                                {"Settlement_Farm", 10}, -- 5600
                                {"Settlement_Factory", 10}, -- 5600
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProductionSlotTimerOffsetInSeconds", 250}, -- 30000
                                {"ProductionCycleDurationInSeconds", 600}, -- 72000
                                {"AlertCycleDurationInSeconds", 180000}, -- 2600
                                {"MaxProductionSlotUnits", 9999}, -- 999
                                {"ProductUnitsPerCycleRateModifier", 100}, -- 50
                                {"SubstanceUnitsPerCycleRateModifier", 1000}, -- 500
                                {"DailyDebtPaymentModifier", 2100000000}, -- 2000000
                            }
                        },   
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveWide"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 8}, -- 1
                                {"AmountMax", 18} -- 5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveLarge"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 15}, -- 3
                                {"AmountMax", 18}  -- 5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveMedium"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 12}, -- 2
                                {"AmountMax", 15} -- 3
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PerkStatStrengthValues","Population","PerkStatStrengthValues","PositiveSmall"}, 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmountMin", 8}, -- 1
                                {"AmountMax", 12}  -- 1
                            }
                        }
                    }
                }
            }
        }
    }
}