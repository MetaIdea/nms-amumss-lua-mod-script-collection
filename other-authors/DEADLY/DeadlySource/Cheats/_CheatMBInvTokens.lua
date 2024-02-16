NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatMBInvTokens.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- Cargo Bulkhead
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FREI_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 50 }, -- 1
                            }
                        },
                        -- Multi-Tool Expansion Slot
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "WEAP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "WEAP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "WEAP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20 }, -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "WEAP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 1
                                { "AmountMax", 30 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "WEAP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 30 }, -- 1
                            }
                        },
                        -- Storage Augmentation
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "SHIP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "SHIP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "SHIP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20 }, -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "SHIP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 1
                                { "AmountMax", 30 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "SHIP_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 50 }, -- 1
                            }
                        },
                        -- Exosuit Expansion Unit
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "SUIT_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "SUIT_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "SUIT_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20 }, -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "SUIT_INV_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 1
                                { "AmountMax", 30 }, -- 1
                            }
                        },
                        -- Salvaged Frigate Module
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "FRIG_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "FRIG_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "FRIG_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20 }, -- 1
                                { "AmountMax", 20 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "FRIG_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 1
                                { "AmountMax", 30 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FRIG_TOKEN" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 30 }, -- 1
                            }
                        },
                    }
                }
            }
        }
    }
}
