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
                        -- Mission Board: Units
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1000000 }, -- 25000
                                { "AmountMax", 2000000 }, -- 50000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 4000000 }, -- 70000
                                { "AmountMax", 6000000 }, -- 120000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 8000000 },  -- 300000
                                { "AmountMax", 12000000 }, -- 500000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20000000 }, -- 400000
                                { "AmountMax", 30000000 }, -- 750000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_B", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 12500000 }, -- 250000
                                { "AmountMax", 17500000 }, -- 500000
                            }
                        },
                        -- Mission Board: Nanites
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 400 }, -- 100
                                { "AmountMax", 600 }, -- 150
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 800 },  -- 150
                                { "AmountMax", 1200 }, -- 250
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1500 }, -- 250
                                { "AmountMax", 3500 }, -- 350
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 4000 }, -- 250
                                { "AmountMax", 9999 }, -- 400
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_B", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 2500 }, -- 250
                                { "AmountMax", 5000 }, -- 450
                            }
                        },
                        -- Repair Trader's Ship: Nanites
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_TRADE_REPAIR", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 150 }, -- 50
                                { "AmountMax", 888 }, -- 120
                            }
                        },
                        --
                        -- Money
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MONEY", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 500 },   -- 500
                                { "AmountMax", 20000 }, -- 2000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MONEY_S", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 500 },   -- 500
                                { "AmountMax", 10000 }, -- 1000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MONEY_M", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 4000 },   -- 4000
                                { "AmountMax", 100000 }, -- 9000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MONEY_L", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20000 },  -- 20000
                                { "AmountMax", 350000 }, -- 35000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MONEY_XL", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 35000 },  -- 35000
                                { "AmountMax", 500000 }, -- 50000
                            }
                        },
                        -- TECHFRAG
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TECHFRAG_VS", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 5
                                { "AmountMax", 50 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TECHFRAG_S", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 50 },  -- 40
                                { "AmountMax", 250 }, -- 80
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TECHFRAG_M", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 100 }, -- 90
                                { "AmountMax", 500 }, -- 120
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TECHFRAG_L", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 150 }, -- 120
                                { "AmountMax", 750 }, -- 150
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "TECHFRAG_XL", "Currency", "Nanites" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 200 },  -- 150
                                { "AmountMax", 1000 }, -- 200
                            }
                        },
                        -- 
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_CIV_SAVED_SM", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5000000 },  -- 400000
                                { "AmountMax", 15000000 }, -- 600000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_CIV_SAVED_LG", "Currency", "Units" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10000000 }, -- 600000
                                { "AmountMax", 30000000 }, -- 900000
                            }
                        },
                    }
                },
            }
        },
    }
}
