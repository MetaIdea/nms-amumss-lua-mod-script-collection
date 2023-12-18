A_NORMAL_CHANCE = 85
A_RARE_CHANCE = 10
A_EPIC_CHANCE = 4
A_LEGENDARY_CHANCE = 1

B_RARE_CHANCE = 95
B_EPIC_CHANCE = 4
B_LEGENDARY_CHANCE = 1


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyRewardsTechDebris.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TECHDEBRIS", "ID", "LAUNCHFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 4 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TECHDEBRIS", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 25 },  -- 25
                                { "AmountMax", 250 }, -- 35
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "Id", "TECHDEBRIS", "Group", "SHIPJUMP_NAME_L" },
                                { "Id", "TECHDEBRIS", "Group", "ION1_NAME_L" },
                                { "Id", "TECHDEBRIS", "Group", "SHIPSHIELD_NAME_L" },
                                { "Id", "TECHDEBRIS", "Group", "SHIPGUN1_NAME_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_JETPACK_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_SHIELD_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "LASER_NAME_L" },
                                { "Id", "TECHDEBRIS", "Group", "SCANBINOC1_NAME_L" },
                                { "Id", "TECHDEBRIS", "Group", "BOLT_NAME_L" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WeightedChanceNormal",    A_NORMAL_CHANCE },    -- 55
                                { "WeightedChanceRare",      A_RARE_CHANCE },      -- 25
                                { "WeightedChanceEpic",      A_EPIC_CHANCE },      -- 15
                                { "WeightedChanceLegendary", A_LEGENDARY_CHANCE }, -- 5
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] = {
                                { "Id", "TECHDEBRIS", "Group", "UI_ENERGY_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_UNW_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_RAD_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_TOX_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_COLD_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_HOT_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_ENERGY_NAME_CORE_L" },
                                { "Id", "TECHDEBRIS", "Group", "UI_ENERGY_NAME_CORE_L" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WeightedChanceNormal",    0 },                  -- 0
                                { "WeightedChanceRare",      B_RARE_CHANCE },      -- 65/60
                                { "WeightedChanceEpic",      B_EPIC_CHANCE },      -- 30
                                { "WeightedChanceLegendary", B_LEGENDARY_CHANCE }, -- 10
                            }
                        },
                        --
                        -- DROPPOD
                        --
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DROPPOD", "Group", "SHIPJUMP_NAME_L" },
                                { "Id", "DROPPOD", "Group", "ION1_NAME_L" },
                                { "Id", "DROPPOD", "Group", "SHIPSHIELD_NAME_L" },
                                { "Id", "DROPPOD", "Group", "SHIPGUN1_NAME_L" },
                                { "Id", "DROPPOD", "Group", "UI_JETPACK_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_SHIELD_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "LASER_NAME_L" },
                                { "Id", "DROPPOD", "Group", "SCANBINOC1_NAME_L" },
                                { "Id", "DROPPOD", "Group", "BOLT_NAME_L" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WeightedChanceNormal",    A_NORMAL_CHANCE },    -- 55
                                { "WeightedChanceRare",      A_RARE_CHANCE },      -- 25
                                { "WeightedChanceEpic",      A_EPIC_CHANCE },      -- 15
                                { "WeightedChanceLegendary", A_LEGENDARY_CHANCE }, -- 5
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "DROPPOD", "Group", "UI_ENERGY_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_UNW_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_RAD_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_TOX_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_COLD_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_HOT_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_ENERGY_NAME_CORE_L" },
                                { "Id", "DROPPOD", "Group", "UI_ENERGY_NAME_CORE_L" },
                            },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WeightedChanceNormal",    0 },                  -- 0
                                { "WeightedChanceRare",      B_RARE_CHANCE },      -- 65/60
                                { "WeightedChanceEpic",      B_EPIC_CHANCE },      -- 30
                                { "WeightedChanceLegendary", B_LEGENDARY_CHANCE }, -- 10
                            }
                        },
                    }
                }
            }
        }
    }
}
