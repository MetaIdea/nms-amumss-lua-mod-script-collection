NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlyRewardsCrashContainers.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Changes the loot of crashed freighter's containers.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Units
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_S", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 25000 },  -- 25000
                                { "AmountMax", 250000 }, -- 75000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 150000 },  -- 150000
                                { "AmountMax", 1500000 }, -- 250000
                            }
                        },
                        -- Salvaged Frigate Module
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_S", "ID", "FRIG_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 1 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "ID", "FRIG_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 2 }, -- 1
                                { "AmountMax", 3 }, -- 1
                            }
                        },
                        -- Multi-Tool Expansion Slot
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_S", "ID", "WEAP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 2 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "ID", "WEAP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 5 }, -- 1
                            }
                        },
                        -- Cargo Bulkhead
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "ID", "FREI_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 5 }, -- 1
                            }
                        },
                        -- All illegal products
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "Value", "ILLEGAL_PROD3" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 50 }, -- 1
                            }
                        },
                        -- Warp Hypercore
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        -- Warp Cell
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_S", "ID", "HYPERFUEL1" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        -- Starship Launch Fuel
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_S", "ID", "LAUNCHFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 40 }, -- 1
                            }
                        },
                        -- All Trade Products Tier 5
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "Value", "TRA_TECH5" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 },  -- 5
                                { "AmountMax", 50 }, -- 5
                            }
                        },
                        -- Antimatter
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_S", "ID", "ANTIMATTER" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        -- Antimatter Housing
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_S", "ID", "AM_HOUSING" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        -- COMPOUND3: Hot Ice
                        -- COMPOUND4: Fusion Accelerant
                        -- COMPOUND5: Superconductor
                        -- COMPOUND6: Cryo-Pump
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND3" },
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND4" },
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND5" },
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND6" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        --  Salvaged Data
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "CRASHCONT_M", "ID", "BP_SALVAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 30 }, -- 3
                            }
                        },
                        -- FARMPROD1: Acid
                        -- FARMPROD4: Heat Capacitor
                        -- FARMPROD5: Poly Fibre
                        -- FARMPROD6: Unstable Gel
                        -- FARMPROD7: Liquid Explosive
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD1" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD4" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD5" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD6" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD7" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 },  -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                    }
                }
            }
        }
    }
}
