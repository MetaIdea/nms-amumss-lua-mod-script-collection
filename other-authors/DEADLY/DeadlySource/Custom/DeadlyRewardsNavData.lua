NAVDATA_NANITES_MIN_MULTI = 1
NAVDATA_NANITES_MAX_MULTI = 10

DEBRIS_CHANCE_LOW = 5
DEBRIS_CHANCE_HIGH = 10


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsNavData.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- EXOSUIT UPGRADE CHART
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "NAV_DATA_DROP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 1 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "NAV_DATA_DROP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 2 }, -- 2
                                { "AmountMax", 3 }, -- 4
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "NAV_DATA_DROP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 2 }, -- 1
                                { "AmountMax", 4 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "NAV_DATA_DROP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 5 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "NAV_DATA_DROP" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 5 }, -- 1
                            }
                        },
                        -- Navigation Data
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "NAV_DATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 2
                                { "AmountMax", 10 }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "NAV_DATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 15 }, -- 2
                                { "AmountMax", 15 }, -- 4
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "NAV_DATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20 }, -- 3
                                { "AmountMax", 20 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "NAV_DATA" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 5
                                { "AmountMax", 30 }, -- 5
                            }
                        },
                        -- WAYPOINT: remove both navdata item + 10 nanites
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_WAYPOINT" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice",     "GiveAllSilent" }, -- GiveAll
                                { "PercentageChance", 0 },               -- 100
                            }
                        },
                        -- SPACE STATION ITEMS: remove navdata given by placed items at space stations
                        {
                            ["SPECIAL_KEY_WORDS"] = { "Id", "NAVDATA", "ID", "NAV_DATA" },
                            ["SECTION_UP"]        = 1,
                            ["REMOVE"]            = "SECTION",
                        },
                        -- SPACE STATION ITEMS: nanites given by placed items at space stations
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "NAVDATA", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", NAVDATA_NANITES_MIN_MULTI }, -- 5
                                { "AmountMax", NAVDATA_NANITES_MAX_MULTI }, -- 15
                            }
                        },
                        -- DEBRIS: navdata in debris Common -> Large
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                "Id", "DEBRIS",
                                "Common", "GcRewardTableCategory.xml",
                                "Large", "GcRewardTableItemList.xml",
                                "ID", "NAV_DATA"
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", DEBRIS_CHANCE_LOW }, -- 100
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                "Id", "DEBRIS",
                                "Common", "GcRewardTableCategory.xml",
                                "Large", "GcRewardTableItemList.xml",
                                "ID", "NAV_DATA"
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", 1 }, -- 3
                            }
                        },
                        -- DEBRIS: navdata in debris Rare -> Medium
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                {
                                    "Id", "DEBRIS",
                                    "Rare", "GcRewardTableCategory.xml",
                                    "Medium", "GcRewardTableItemList.xml",
                                    "ID", "NAV_DATA"
                                },
                                {
                                    "Id", "DEBRIS",
                                    "Rare", "GcRewardTableCategory.xml",
                                    "Large", "GcRewardTableItemList.xml",
                                    "ID", "NAV_DATA"
                                },
                            },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", DEBRIS_CHANCE_HIGH }, -- 100
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                "Id", "DEBRIS",
                                "Rare", "GcRewardTableCategory.xml",
                                "Medium", "GcRewardTableItemList.xml",
                                "ID", "NAV_DATA"
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", 1 }, -- 3
                            }
                        },
                        -- DEBRIS: navdata in debris Rare -> Large
                        {
                            ["SPECIAL_KEY_WORDS"]  = {
                                "Id", "DEBRIS",
                                "Rare", "GcRewardTableCategory.xml",
                                "Large", "GcRewardTableItemList.xml",
                                "ID", "NAV_DATA"
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", 1 }, -- 5
                            }
                        },
                    }
                },
            }
        },
    }
}
