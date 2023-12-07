NAVDATA_NANITES_MIN_MULTI = 1
NAVDATA_NANITES_MAX_MULTI = 10

R_MB_NAV_DATA_MIN_MULTI = 1
R_MB_NAV_DATA_MAX_MULTI = 5

DEBRIS_CHANCE_LOW = 5
DEBRIS_CHANCE_HIGH = 10


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsNavData.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA\REALITY\TABLES\REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- EXOSUIT UPGRADE CHART
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "NAV_DATA_DROP" },
                                { "Id", "R_MB_MED",        "ID", "NAV_DATA_DROP" },
                                { "Id", "R_MB_HIGH",       "ID", "NAV_DATA_DROP" },
                                { "Id", "R_MB_MEGA",       "ID", "NAV_DATA_DROP" },
                                --{ "Id", "R_NEXUS_MED",     "ID", "NAV_DATA_DROP" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "NAV_DATA_DROP" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", 5 }, -- 1
                            }
                        },
                        -- mission board navdata rewards
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "NAV_DATA" },
                                { "Id", "R_MB_MED",  "ID", "NAV_DATA" },
                                { "Id", "R_MB_HIGH", "ID", "NAV_DATA" },
                                { "Id", "R_MB_MEGA", "ID", "NAV_DATA" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", R_MB_NAV_DATA_MIN_MULTI }, -- 2/2/3/5
                                { "AmountMax", R_MB_NAV_DATA_MAX_MULTI }, -- 2/4/5/5
                            }
                        },
                        -- remove both navdata item + 10 nanites
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_WAYPOINT" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "RewardChoice",     "GiveAllSilent" }, -- GiveAll
                                { "PercentageChance", 0 },               -- 100
                            }
                        },
                        -- remove navdata given by placed item on space stations
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "NAVDATA", "ID", "NAV_DATA" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 0 }, -- 100
                            }
                        },
                        -- nanites given by placed item on space stations
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
                        -- navdata in debris Common -> Large
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
                        -- navdata in debris Rare -> Medium
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
                        -- navdata in debris Rare -> Large
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
