NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewards.pak",
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
                        --
                        -- Civilian
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "KILLED_CIV", "AlienRace", "None" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", "-5" }, -- -1
                            }
                        },
                        -- Repair trader's ship
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_TRADE_REPAIR", "AlienRace", "None" },
                            ["SECTION_UP"]         = 2,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "PercentageChance", 50 }, -- 100
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_TRADE_REPAIR", "AlienRace", "None" },
                            ["SECTION_UP"]         = 1,
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", 1 }, -- 2
                            }
                        },
                        --
                        -- FACTION REPUTATION
                        --
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "STD_DEC_BUI", "AlienRace", "IGNORE" },
                                { "Id", "STD_DEC_EXP", "AlienRace", "IGNORE" },
                                { "Id", "STD_DEC_TRA", "AlienRace", "IGNORE" },
                                { "Id", "STD_DEC_WAR", "AlienRace", "IGNORE" },
                            },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", "-3" }, -- -1
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_LOW", "MissionFaction", "None" },
                        --     ["SECTION_UP"]         = 1,
                        --     ["REPLACE_TYPE"]       = "ALL",
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "AmountMin", 1 }, -- 1
                        --         { "AmountMax", 2 }, -- 1
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_MED", "MissionFaction", "None" },
                        --     ["SECTION_UP"]         = 1,
                        --     ["REPLACE_TYPE"]       = "ALL",
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "AmountMin", 2 }, -- 2
                        --         { "AmountMax", 3 }, -- 2
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_HIGH", "MissionFaction", "None" },
                        --     ["SECTION_UP"]         = 1,
                        --     ["REPLACE_TYPE"]       = "ALL",
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "AmountMin", 3 }, -- 3
                        --         { "AmountMax", 4 }, -- 3
                        --     }
                        -- },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_GUILD", "MissionFaction", "None" },
                        --     ["SECTION_UP"]         = 1,
                        --     ["REPLACE_TYPE"]       = "ALL",
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "AmountMin", 4 }, -- 5
                        --         { "AmountMax", 5 }, -- 5
                        --     }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_NEG", "MissionFaction", "None" },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", "-1" }, -- -1
                                { "AmountMax", "-5" }, -- -1
                            }
                        },
                        -- Repair Kit
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "REPAIRKIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 1 }, -- 1
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "REPAIRKIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 2 }, -- 1
                                { "AmountMax", 2 }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "REPAIRKIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 3
                                { "AmountMax", 3 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "REPAIRKIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 3
                                { "AmountMax", 5 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "REPAIRKIT" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 5 }, -- 3
                            }
                        },
                        --  Salvaged Data
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "BP_SALVAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "BP_SALVAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 15 }, -- 3
                                { "AmountMax", 15 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "BP_SALVAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20 }, -- 3
                                { "AmountMax", 20 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "BP_SALVAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 3
                                { "AmountMax", 30 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "BP_SALVAGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 30 }, -- 8
                            }
                        },
                        -- Storm Crystal
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "STORM_CRYSTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 3 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "STORM_CRYSTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 5
                                { "AmountMax", 5 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "STORM_CRYSTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 7 }, -- 10
                                { "AmountMax", 7 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "STORM_CRYSTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 10
                                { "AmountMax", 10 }, -- 10
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "STORM_CRYSTAL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 10
                                { "AmountMax", 10 }, -- 10
                            }
                        },
                        -- TRA_MINERALS5:  Re-latticed Arc Crystal
                        -- TRA_TECH5:      Quantum Accelerator
                        -- TRA_COMPONENT5: Vector Compressors
                        -- TRA_ENERGY5:    Fusion Core
                        -- TRA_EXOTICS5:   Neural Duct
                        -- TRA_COMMODITY5: Teleport Coordinators
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_HIGH", "ID", "TRA_MINERALS5" },
                                { "Id", "R_MB_HIGH", "ID", "TRA_TECH5" },
                                { "Id", "R_MB_HIGH", "ID", "TRA_COMPONENT5" },
                                { "Id", "R_MB_HIGH", "ID", "TRA_ENERGY5" },
                                { "Id", "R_MB_HIGH", "ID", "TRA_EXOTICS5" },
                                { "Id", "R_MB_HIGH", "ID", "TRA_COMMODITY5" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_MEGA", "ID", "TRA_MINERALS5" },
                                { "Id", "R_MB_MEGA", "ID", "TRA_TECH5" },
                                { "Id", "R_MB_MEGA", "ID", "TRA_COMPONENT5" },
                                { "Id", "R_MB_MEGA", "ID", "TRA_ENERGY5" },
                                { "Id", "R_MB_MEGA", "ID", "TRA_EXOTICS5" },
                                { "Id", "R_MB_MEGA", "ID", "TRA_COMMODITY5" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 25 }, -- 3
                                { "AmountMax", 25 }, -- 5
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_MINERALS5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_TECH5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_COMPONENT5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_ENERGY5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_EXOTICS5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_COMMODITY5" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 50 }, -- 5
                            }
                        },
                        -- Warp Hypercore
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 2 }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 4 }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 1
                                { "AmountMax", 7 }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 7 },  -- 1
                                { "AmountMax", 10 }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "HYPERFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 2
                            }
                        },
                        -- Frigate Fuel (200 Tonnes)
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "FRIGATE_FUEL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 3 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "FRIGATE_FUEL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 1
                                { "AmountMax", 7 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "FRIGATE_FUEL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 7 },  -- 1
                                { "AmountMax", 10 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "FRIGATE_FUEL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "FRIGATE_FUEL_3" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 2
                                { "AmountMax", 10 }, -- 3
                            }
                        },
                        -- FRIG_BOOST_SPD: Fuel Oxidiser
                        -- FRIG_BOOST_COM: Explosive Drones
                        -- FRIG_BOOST_EXP: Holographic Analyser
                        -- FRIG_BOOST_MIN: Mineral Compressor
                        -- FRIG_BOOST_TRA: Mind Control Device
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW", "ID", "FRIG_BOOST_SPD" },
                                { "Id", "R_MB_LOW", "ID", "FRIG_BOOST_COM" },
                                { "Id", "R_MB_LOW", "ID", "FRIG_BOOST_EXP" },
                                { "Id", "R_MB_LOW", "ID", "FRIG_BOOST_MIN" },
                                { "Id", "R_MB_LOW", "ID", "FRIG_BOOST_TRA" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 3 }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_MED", "ID", "FRIG_BOOST_SPD" },
                                { "Id", "R_MB_MED", "ID", "FRIG_BOOST_COM" },
                                { "Id", "R_MB_MED", "ID", "FRIG_BOOST_EXP" },
                                { "Id", "R_MB_MED", "ID", "FRIG_BOOST_MIN" },
                                { "Id", "R_MB_MED", "ID", "FRIG_BOOST_TRA" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 5 }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_SPD" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_COM" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_EXP" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_MIN" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_TRA" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 1
                                { "AmountMax", 7 }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_SPD" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_COM" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_EXP" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_MIN" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_TRA" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 1
                                { "AmountMax", 10 }, -- 1
                            }
                        },
                        -- COMPOUND1: Organic Catalyst
                        -- COMPOUND2: Semiconductor
                        -- COMPOUND3: Hot Ice
                        -- COMPOUND4: Fusion Accelerant
                        -- COMPOUND5: Superconductor
                        -- COMPOUND6: Cryo-Pump
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND1" },
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND2" },
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND3" },
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND4" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 },  -- 5
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_MEGA", "ID", "COMPOUND4" },
                                { "Id", "R_MB_MEGA", "ID", "COMPOUND5" },
                                { "Id", "R_MB_MEGA", "ID", "COMPOUND6" },
                            },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 2
                                { "AmountMax", 10 }, -- 3
                            }
                        },
                        -- Ion Battery
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "POWERCELL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 5
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "POWERCELL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 5
                                { "AmountMax", 30 }, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "POWERCELL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 50 }, -- 5
                                { "AmountMax", 50 }, -- 15
                            }
                        },
                        -- Starshield Battery
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "SHIPCHARGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 5
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "SHIPCHARGE" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 30 }, -- 5
                                { "AmountMax", 30 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "SHIPCHARGE" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 50 }, -- 5
                                { "AmountMax", 50 }, -- 5
                            }
                        },
                        -- Starship Launch Fuel
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "LAUNCHFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 4
                                { "AmountMax", 5 }, -- 4
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "LAUNCHFUEL" },
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 4
                                { "AmountMax", 10 }, -- 4
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "LAUNCHFUEL" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 20 }, -- 4
                                { "AmountMax", 20 }, -- 4
                            }
                        },
                        -- Life Support Gel
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "PRODFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 5
                                { "AmountMax", 5 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "PRODFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 5
                                { "AmountMax", 10 }, -- 15
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "PRODFUEL2" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 15 }, -- 5
                                { "AmountMax", 15 }, -- 15
                            }
                        },
                        -- NipNip Buds
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_LOW", "ID", "NIPNIPBUDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 1
                                { "AmountMax", 3 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MED", "ID", "NIPNIPBUDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 5 }, -- 3
                                { "AmountMax", 5 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_HIGH", "ID", "NIPNIPBUDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 7 }, -- 3
                                { "AmountMax", 7 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_MB_MEGA", "ID", "NIPNIPBUDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "R_PIRATEBOARD_A", "ID", "NIPNIPBUDS" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 10 }, -- 3
                                { "AmountMax", 10 }, -- 5
                            }
                        },
                    }
                },
            }
        }
    }
}
