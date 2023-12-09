QUEST_UNITS_MIN_MULTI = 5
QUEST_UNITS_MAX_MULTI = 20

QUEST_NANITES_MIN_MULTI = 5
QUEST_NANITES_MAX_MULTI = 10

CIV_SAVED_UNITS_MIN_MULTI = 2
CIV_SAVED_UNITS_MAX_MULTI = 10

MONEY_UNITS_MIN_MULTI = 1
MONEY_UNITS_MAX_MULTI = 20

TECHFRAG_NANITES_MIN_MULTI = 1
TECHFRAG_NANITES_MAX_MULTI = 20

CRASHCONT_UNITS_MIN_MULTI = 1
CRASHCONT_UNITS_MAX_MULTI = 40


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsMoney.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        --
                        -- MissionBoard money
                        --
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "Currency", "Units" },
                                { "Id", "R_MB_MED",        "Currency", "Units" },
                                { "Id", "R_MB_HIGH",       "Currency", "Units" },
                                { "Id", "R_MB_MEGA",       "Currency", "Units" },
                                --{ "Id", "R_NEXUS_MED_C",   "Currency", "Units" },
                                --{ "Id", "R_NEXUS_MEGA_C",  "Currency", "Units" },
                                { "Id", "R_PIRATEBOARD_B", "Currency", "Units" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", QUEST_UNITS_MIN_MULTI },
                                { "AmountMax", QUEST_UNITS_MAX_MULTI },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "Currency", "Nanites" },
                                { "Id", "R_MB_MED",        "Currency", "Nanites" },
                                { "Id", "R_MB_HIGH",       "Currency", "Nanites" },
                                { "Id", "R_MB_MEGA",       "Currency", "Nanites" },
                                --{ "Id", "R_NEXUS_MED_C",   "Currency", "Nanites" },
                                --{ "Id", "R_NEXUS_MEGA_C",  "Currency", "Nanites" },
                                { "Id", "R_PIRATEBOARD_B", "Currency", "Nanites" },
                                { "Id", "R_TRADE_REPAIR",  "Currency", "Nanites" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", QUEST_NANITES_MIN_MULTI },
                                { "AmountMax", QUEST_NANITES_MAX_MULTI },
                            }
                        },
                        --
                        -- Money
                        --
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "MONEY",    "Currency", "Units" },
                                { "Id", "MONEY_S",  "Currency", "Units" },
                                { "Id", "MONEY_M",  "Currency", "Units" },
                                { "Id", "MONEY_L",  "Currency", "Units" },
                                { "Id", "MONEY_XL", "Currency", "Units" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", MONEY_UNITS_MIN_MULTI },
                                { "AmountMax", MONEY_UNITS_MAX_MULTI },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "TECHFRAG_XL", "Currency", "Nanites" },
                                { "Id", "TECHFRAG_L",  "Currency", "Nanites" },
                                { "Id", "TECHFRAG_M",  "Currency", "Nanites" },
                                { "Id", "TECHFRAG_S",  "Currency", "Nanites" },
                                { "Id", "TECHFRAG_VS", "Currency", "Nanites" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TECHFRAG_NANITES_MIN_MULTI },
                                { "AmountMax", TECHFRAG_NANITES_MAX_MULTI },
                            }
                        },
                        -- 
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "Currency", "Units" },
                                { "Id", "CRASHCONT_S", "Currency", "Units" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", CRASHCONT_UNITS_MIN_MULTI }, -- 150000 / 25000
                                { "AmountMax", CRASHCONT_UNITS_MAX_MULTI }, -- 250000 / 75000
                            }
                        },
                        -- 
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_CIV_SAVED_SM", "Currency", "Units" },
                                { "Id", "R_CIV_SAVED_LG", "Currency", "Units" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", CIV_SAVED_UNITS_MIN_MULTI }, -- 400000 / 600000
                                { "AmountMax", CIV_SAVED_UNITS_MAX_MULTI }, -- 600000 / 900000
                            }
                        },
                    }
                },
            }
        },
    }
}
