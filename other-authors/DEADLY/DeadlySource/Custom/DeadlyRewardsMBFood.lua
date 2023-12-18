NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewardsMBFood.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA/REALITY/TABLES/REWARDTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- FOOD_EGGPIE_GM:  Parasitic Omelette
                        -- FOOD_CK_CACTUS:  Esophageal Surprise
                        -- FOOD_R_EYESTEW:  Abyssal Stew
                        -- FOOD_ICE_GRAH:   Vy'ice Cream
                        -- FOOD_CG_JGLITCH: Unsolvable Jam Turnover
                        -- FOOD_CB_FCUST:   Salt-Laced Honey Cake
                        -- FOOD_CB_SCUST:   Starbirth Delight
                        -- FOOD_CM_CHOC:    Haunted Chocolate Dreams
                        -- FOOD_MM_CARM:    Caramelised Nightmare
                        -- FOOD_CG_HONEY:   Honied Proto-Cake
                        -- FOOD_STEW_M_CH:  Cheese-and-Flesh Stew
                        -- FOOD_PIE_CRABJ:  Wriggling Tart
                        -- FOOD_PIE_CRAB:   'Legs-in-Pastry'
                        -- FOOD_DNUT_MEAT:  Proteinous Doughnut
                        -- FOOD_DNUT_AJAM:  Anomalous Doughnut
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW", "ID", "FOOD_EGGPIE_GM" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_CK_CACTUS" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_R_EYESTEW" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_ICE_GRAH" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_CG_JGLITCH" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_CB_FCUST" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_CB_SCUST" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_CM_CHOC" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_MM_CARM" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_CG_HONEY" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_STEW_M_CH" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_PIE_CRABJ" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_PIE_CRAB" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_DNUT_MEAT" },
                                { "Id", "R_MB_LOW", "ID", "FOOD_DNUT_AJAM" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 1 }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_MED", "ID", "FOOD_EGGPIE_GM" },
                                { "Id", "R_MB_MED", "ID", "FOOD_CK_CACTUS" },
                                { "Id", "R_MB_MED", "ID", "FOOD_R_EYESTEW" },
                                { "Id", "R_MB_MED", "ID", "FOOD_ICE_GRAH" },
                                { "Id", "R_MB_MED", "ID", "FOOD_CG_JGLITCH" },
                                { "Id", "R_MB_MED", "ID", "FOOD_CB_FCUST" },
                                { "Id", "R_MB_MED", "ID", "FOOD_CB_SCUST" },
                                { "Id", "R_MB_MED", "ID", "FOOD_CM_CHOC" },
                                { "Id", "R_MB_MED", "ID", "FOOD_MM_CARM" },
                                { "Id", "R_MB_MED", "ID", "FOOD_CG_HONEY" },
                                { "Id", "R_MB_MED", "ID", "FOOD_STEW_M_CH" },
                                { "Id", "R_MB_MED", "ID", "FOOD_PIE_CRABJ" },
                                { "Id", "R_MB_MED", "ID", "FOOD_PIE_CRAB" },
                                { "Id", "R_MB_MED", "ID", "FOOD_DNUT_MEAT" },
                                { "Id", "R_MB_MED", "ID", "FOOD_DNUT_AJAM" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 3 }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_HIGH", "ID", "FOOD_EGGPIE_GM" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_CK_CACTUS" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_R_EYESTEW" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_ICE_GRAH" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_CG_JGLITCH" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_CB_FCUST" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_CB_SCUST" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_CM_CHOC" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_MM_CARM" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_CG_HONEY" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_STEW_M_CH" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_PIE_CRABJ" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_PIE_CRAB" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_DNUT_MEAT" },
                                { "Id", "R_MB_HIGH", "ID", "FOOD_DNUT_AJAM" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 1
                                { "AmountMax", 5 }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_MEGA", "ID", "FOOD_EGGPIE_GM" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_CK_CACTUS" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_R_EYESTEW" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_ICE_GRAH" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_CG_JGLITCH" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_CB_FCUST" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_CB_SCUST" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_CM_CHOC" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_MM_CARM" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_CG_HONEY" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_STEW_M_CH" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_PIE_CRABJ" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_PIE_CRAB" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_DNUT_MEAT" },
                                { "Id", "R_MB_MEGA", "ID", "FOOD_DNUT_AJAM" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        -- Bone Nuggets
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_V_BONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 25 }, -- 10
                                { "AmountMax", 50 }, -- 20
                            }
                        },
                        -- 'Legs-in-Pastry'
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_PIE_CRAB" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 2
                                { "AmountMax", 10 }, -- 7
                            }
                        },
                        -- The Toothbreaker
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_PIE_BONE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 2
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                        -- Soiled Soup
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_STEW_DIG" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 2
                                { "AmountMax", 10 }, -- 6
                            }
                        },
                        -- Fire Water
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_J_HOT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 12 }, -- 3
                                { "AmountMax", 12 }, -- 6
                            }
                        },
                        -- Salty Juice
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_J_SALT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 10 }, -- 6
                            }
                        },
                        -- Briney Rime
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_ICE_FISH" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 10 }, -- 6
                            }
                        },
                        -- Cake of Sin
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FOOD_MM_APPLE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 2
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                    }
                }
            }
        }
    }
}
