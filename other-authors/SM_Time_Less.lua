NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "SM_Time_Less.pak",
    ["MOD_AUTHOR"] = "BCC",
    ["LUA_AUTHOR"] = "BCC",
    ["MOD_DESCRIPTION"] = "Reduces the time needed to wait during and between settlement processes.",
    ["NMS_VERSION"] = "5.71",
    ["MODIFICATIONS"] = {{
        ["MBIN_CHANGE_TABLE"] = {{
            ["MBIN_FILE_SOURCE"] = [[GCSETTLEMENTGLOBALS.MBIN]],
            ["EXML_CHANGE_TABLE"] = {
                {
                    ["VALUE_CHANGE_TABLE"] = {
                        {"BuildingUpgradeTimeInSeconds", 1560},
                        {"BuildingFreeUpgradeTimeInSeconds", 1}, -- Rounded for convenience
                        {"JudgementWaitTimeMin", 30},
                        {"JudgementWaitTimeMax", 240},
                        -- {"ProductionCycleDurationInSeconds", 2400}, -- Optional decrease in production cycle duration, removed by default by popular demand
                        {"TowerRechargeTime", 86400},
                    }
                },
                {
                    ["PRECEDING_KEY_WORDS"] = "SettlementBuildingTimes",
                    ["VALUE_CHANGE_TABLE"] = {
                        {"Settlement_LandingZone", 120},
                        {"Settlement_Bar", 120},
                        {"Settlement_Tower", 120},
                        {"Settlement_Market", 240},
                        {"Settlement_Small", 40},
                        {"Settlement_SmallIndustrial", 40},
                        {"Settlement_Medium", 90}, -- Rounded for convenience
                        {"Settlement_Large", 240},
                        {"Settlement_SheriffsOffice", 3},
                        {"Settlement_Double", 120},
                        {"Settlement_Farm", 180}, -- Rounded for convenience
                        {"Settlement_Factory", 180}, -- Rounded for convenience
		                {"Settlement_FishPond", 40},
		                {"Settlement_Builders_RoboArm", 120}
                    }
                }
            }
        }}
    }}
}