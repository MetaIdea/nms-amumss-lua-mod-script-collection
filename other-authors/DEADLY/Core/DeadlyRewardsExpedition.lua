RELIC_CHANCE_HIGH = 20
RELIC_CHANCE_LOW = 10

UNITS_MIN_MULTI = 1
UNITS_MAX_MULTI = 5

NANITES_MIN_MULTI = 1
NANITES_MAX_MULTI = 10

SUBSTANCE_500_MIN = 100
SUBSTANCE_500_MAX = 1000

SUBSTANCE_50_MIN = 10
SUBSTANCE_50_MAX = 50


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsExpedition.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/EXPEDITIONREWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/EXPEDITIONREWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "ID", "TRA_CURIO1" },
                                { "ID", "TRA_CURIO2" },
                                { "ID", "WAR_CURIO1" },
                                { "ID", "WAR_CURIO2" },
                                { "ID", "EXP_CURIO1" },
                                { "ID", "EXP_CURIO2" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "5",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 5
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "ID", "TRA_CURIO1" },
                                { "ID", "TRA_CURIO2" },
                                { "ID", "WAR_CURIO1" },
                                { "ID", "WAR_CURIO2" },
                                { "ID", "EXP_CURIO1" },
                                { "ID", "EXP_CURIO2" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_MATCH"]        = "10",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", 3 }, -- 10
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]   = {
                                { "ID", "TRA_CURIO1" },
                                { "ID", "TRA_CURIO2" },
                                { "ID", "WAR_CURIO1" },
                                { "ID", "WAR_CURIO2" },
                                { "ID", "EXP_CURIO1" },
                                { "ID", "EXP_CURIO2" },
                            },
                            ["SECTION_UP"]          = 1,
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "50",
                            ["VALUE_MATCH_OPTIONS"] = ">",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "PercentageChance", RELIC_CHANCE_HIGH },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]   = {
                                { "ID", "TRA_CURIO1" },
                                { "ID", "TRA_CURIO2" },
                                { "ID", "WAR_CURIO1" },
                                { "ID", "WAR_CURIO2" },
                                { "ID", "EXP_CURIO1" },
                                { "ID", "EXP_CURIO2" },
                            },
                            ["SECTION_UP"]          = 1,
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "50",
                            ["VALUE_MATCH_OPTIONS"] = "<=",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "PercentageChance", RELIC_CHANCE_LOW },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", UNITS_MIN_MULTI },
                                { "AmountMax", UNITS_MAX_MULTI },
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", NANITES_MIN_MULTI },
                                { "AmountMax", NANITES_MAX_MULTI },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_COMBAT_1", "ID", "STELLAR2" },
                                { "Id", "R_COMBAT_1", "ID", "BLUE2" },
                                { "Id", "R_COMBAT_1", "ID", "LAND3" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", SUBSTANCE_500_MIN },
                                { "AmountMax", SUBSTANCE_500_MAX },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_COM_EASY_1", "ID", "STELLAR2" },
                                { "Id", "R_COM_EASY_1", "ID", "BLUE2" },
                                { "Id", "R_COM_EASY_1", "ID", "LAND3" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", SUBSTANCE_50_MIN },
                                { "AmountMax", SUBSTANCE_50_MAX },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_COMBAT_1", "ID", "ALLOY7" },
                                { "Id", "R_COMBAT_1", "ID", "ALLOY8" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 5
                            }
                        },
                    }
                }
            }
        }
    }
}
