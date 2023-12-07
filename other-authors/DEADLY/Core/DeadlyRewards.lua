REPAIRKIT_MIN_MULTI = 1
REPAIRKIT_MAX_MULTI = 2

WEAP_INV_TOKEN_MIN_MULTI = 1
WEAP_INV_TOKEN_MAX_MULTI = 5

SHIP_INV_TOKEN_MIN_MULTI = 1
SHIP_INV_TOKEN_MAX_MULTI = 5

SUIT_INV_TOKEN_MIN_MULTI = 1
SUIT_INV_TOKEN_MAX_MULTI = 5

BP_SALVAGE_MIN_MULTI = 5
BP_SALVAGE_MAX_MULTI = 6

FRIG_TOKEN_MIN_MULTI = 1
FRIG_TOKEN_MAX_MULTI = 3

FREI_INV_TOKEN_MIN_MULTI = 1
FREI_INV_TOKEN_MAX_MULTI = 3

STORM_CRYSTAL_MIN_MULTI = 5
STORM_CRYSTAL_MAX_MULTI = 5

TRA_ANY_5_MIN_MULTI = 5
TRA_ANY_5_MAX_MULTI = 10

HYPERFUEL2_MIN_MULTI = 5
HYPERFUEL2_MAX_MULTI = 5

FRIGATE_FUEL_3_MIN_MULTI = 5
FRIGATE_FUEL_3_MAX_MULTI = 5

COMPOUND_ANY_MIN_MULTI = 3
COMPOUND_ANY_MAX_MULTI = 3

MB_POWERCELL_MIN_MULTI = 10
MB_POWERCELL_MAX_MULTI = 20

FRIG_BOOST_ANY_MIN_MULTI = 5
FRIG_BOOST_ANY_MAX_MULTI = 10

MB_SHIPCHARGE_MIN_MULTI = 2
MB_SHIPCHARGE_MAX_MULTI = 20

MB_LAUNCHFUEL_MIN_MULTI = 5
MB_LAUNCHFUEL_MAX_MULTI = 10

MB_LIFEGEL_MIN_MULTI = 5
MB_LIFEGEL_MAX_MULTI = 10

CRASHCONT_ANY_TOKEN_MIN_MULTI = 1
CRASHCONT_ANY_TOKEN_MAX_MULTI = 10

CRASHCONT_ILLEGAL_MIN_MULTI = 10
CRASHCONT_ILLEGAL_MAX_MULTI = 50

CRASHCONT_FUEL_MIN_MULTI = 1
CRASHCONT_FUEL_MAX_MULTI = 20

CRASHCONT_TRA_ANY_5_MIN_MULTI = 1
CRASHCONT_TRA_ANY_5_MAX_MULTI = 10

CRASHCONT_MISC_MIN_MULTI = 1
CRASHCONT_MISC_MAX_MULTI = 10

MB_NIPNIPBUDS_MIN_MULTI = 1
MB_NIPNIPBUDS_MAX_MULTI = 10

TRITIUM_CLUSTER_MULTI_MIN = 1
TRITIUM_CLUSTER_MULTI_MAX = 5


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyRewards.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- METADATA\REALITY\TABLES\REWARDTABLE.MBIN
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
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_GUILD", "MissionFaction", "None" },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 4 }, -- 5
                                { "AmountMax", 5 }, -- 5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_HIGH", "MissionFaction", "None" },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 3 }, -- 3
                                { "AmountMax", 4 }, -- 3
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_MED", "MissionFaction", "None" },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 2 }, -- 2
                                { "AmountMax", 3 }, -- 2
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "MB_STAND_LOW", "MissionFaction", "None" },
                            ["SECTION_UP"]         = 1,
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", 1 }, -- 1
                                { "AmountMax", 2 }, -- 1
                            }
                        },
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
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "REPAIRKIT" }, -- 1/1
                                { "Id", "R_MB_MED",        "ID", "REPAIRKIT" }, -- 1/2
                                { "Id", "R_PIRATEBOARD_A", "ID", "REPAIRKIT" }, -- 1/3
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", REPAIRKIT_MIN_MULTI },
                                { "AmountMax", REPAIRKIT_MAX_MULTI },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_HIGH", "ID", "REPAIRKIT" }, -- 3/3
                                { "Id", "R_MB_MEGA", "ID", "REPAIRKIT" }, -- 3/3
                                --{ "Id", "R_NEXUS_MED",     "ID", "REPAIRKIT" }, -- 3/3
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMax", REPAIRKIT_MAX_MULTI },
                            }
                        },
                        -- Multi-Tool Expansion Slot
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "WEAP_INV_TOKEN" },
                                { "Id", "R_MB_MED",        "ID", "WEAP_INV_TOKEN" },
                                { "Id", "R_MB_HIGH",       "ID", "WEAP_INV_TOKEN" },
                                { "Id", "R_MB_MEGA",       "ID", "WEAP_INV_TOKEN" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "WEAP_INV_TOKEN" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "WEAP_INV_TOKEN" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", WEAP_INV_TOKEN_MIN_MULTI },
                                { "AmountMax", WEAP_INV_TOKEN_MAX_MULTI },
                            }
                        },
                        -- Storage Augmentation
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "SHIP_INV_TOKEN" },
                                { "Id", "R_MB_MED",        "ID", "SHIP_INV_TOKEN" },
                                { "Id", "R_MB_HIGH",       "ID", "SHIP_INV_TOKEN" },
                                { "Id", "R_MB_MEGA",       "ID", "SHIP_INV_TOKEN" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "SHIP_INV_TOKEN" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "SHIP_INV_TOKEN" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", SHIP_INV_TOKEN_MIN_MULTI },
                                { "AmountMax", SHIP_INV_TOKEN_MAX_MULTI },
                            }
                        },
                        -- Exosuit Expansion Unit
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "SUIT_INV_TOKEN" },
                                { "Id", "R_MB_MED",  "ID", "SUIT_INV_TOKEN" },
                                { "Id", "R_MB_HIGH", "ID", "SUIT_INV_TOKEN" },
                                { "Id", "R_MB_MEGA", "ID", "SUIT_INV_TOKEN" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", SUIT_INV_TOKEN_MIN_MULTI },
                                { "AmountMax", SUIT_INV_TOKEN_MAX_MULTI },
                            }
                        },
                        --  Salvaged Data
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "BP_SALVAGE" },
                                { "Id", "R_MB_MED",        "ID", "BP_SALVAGE" },
                                { "Id", "R_MB_HIGH",       "ID", "BP_SALVAGE" },
                                { "Id", "R_MB_MEGA",       "ID", "BP_SALVAGE" },
                                --{ "Id", "R_NEXUS_MED",     "ID", "BP_SALVAGE" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "BP_SALVAGE" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "BP_SALVAGE" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", BP_SALVAGE_MIN_MULTI },
                                { "AmountMax", BP_SALVAGE_MAX_MULTI },
                            }
                        },
                        -- Cargo Bulkhead
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_PIRATEBOARD_A", "ID", "FREI_INV_TOKEN" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FREI_INV_TOKEN_MIN_MULTI },
                                { "AmountMax", FREI_INV_TOKEN_MAX_MULTI },
                            }
                        },
                        -- Salvaged Frigate Module
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "FRIG_TOKEN" },
                                { "Id", "R_MB_MED",        "ID", "FRIG_TOKEN" },
                                { "Id", "R_MB_HIGH",       "ID", "FRIG_TOKEN" },
                                { "Id", "R_MB_MEGA",       "ID", "FRIG_TOKEN" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "FRIG_TOKEN" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FRIG_TOKEN_MIN_MULTI },
                                { "AmountMax", FRIG_TOKEN_MAX_MULTI },
                            }
                        },
                        -- Storm Crystal
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "STORM_CRYSTAL" },
                                { "Id", "R_MB_MED",        "ID", "STORM_CRYSTAL" },
                                { "Id", "R_MB_HIGH",       "ID", "STORM_CRYSTAL" },
                                { "Id", "R_MB_MEGA",       "ID", "STORM_CRYSTAL" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "STORM_CRYSTAL" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "STORM_CRYSTAL" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", STORM_CRYSTAL_MIN_MULTI },
                                { "AmountMax", STORM_CRYSTAL_MAX_MULTI },
                            }
                        },
                        -- TRA_ANY_5
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                -- Re-latticed Arc Crystal
                                { "Id", "R_MB_HIGH",       "ID", "TRA_MINERALS5" },
                                { "Id", "R_MB_MEGA",       "ID", "TRA_MINERALS5" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "TRA_MINERALS5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_MINERALS5" },
                                -- Quantum Accelerator
                                { "Id", "R_MB_HIGH",       "ID", "TRA_TECH5" },
                                { "Id", "R_MB_MEGA",       "ID", "TRA_TECH5" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "TRA_TECH5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_TECH5" },
                                -- Vector Compressors
                                { "Id", "R_MB_HIGH",       "ID", "TRA_COMPONENT5" },
                                { "Id", "R_MB_MEGA",       "ID", "TRA_COMPONENT5" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "TRA_COMPONENT5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_COMPONENT5" },
                                -- Fusion Core
                                { "Id", "R_MB_HIGH",       "ID", "TRA_ENERGY5" },
                                { "Id", "R_MB_MEGA",       "ID", "TRA_ENERGY5" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "TRA_ENERGY5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_ENERGY5" },
                                -- Neural Duct
                                { "Id", "R_MB_HIGH",       "ID", "TRA_EXOTICS5" },
                                { "Id", "R_MB_MEGA",       "ID", "TRA_EXOTICS5" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "TRA_EXOTICS5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_EXOTICS5" },
                                -- Teleport Coordinators
                                { "Id", "R_MB_HIGH",       "ID", "TRA_COMMODITY5" },
                                { "Id", "R_MB_MEGA",       "ID", "TRA_COMMODITY5" },
                                --{ "Id", "R_NEXUS_MEGA",    "ID", "TRA_COMMODITY5" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "TRA_COMMODITY5" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TRA_ANY_5_MIN_MULTI },
                                { "AmountMax", TRA_ANY_5_MAX_MULTI },
                            }
                        },
                        -- Warp Hypercore
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "HYPERFUEL2" },
                                { "Id", "R_MB_MED",        "ID", "HYPERFUEL2" },
                                { "Id", "R_MB_HIGH",       "ID", "HYPERFUEL2" },
                                { "Id", "R_MB_MEGA",       "ID", "HYPERFUEL2" },
                                --{ "Id", "R_NEXUS_MED",     "ID", "HYPERFUEL2" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "HYPERFUEL2" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", HYPERFUEL2_MIN_MULTI },
                                { "AmountMax", HYPERFUEL2_MAX_MULTI },
                            }
                        },
                        -- Frigate Fuel (200 Tonnes)
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "FRIGATE_FUEL_3" },
                                { "Id", "R_MB_MED",        "ID", "FRIGATE_FUEL_3" },
                                { "Id", "R_MB_HIGH",       "ID", "FRIGATE_FUEL_3" },
                                { "Id", "R_MB_MEGA",       "ID", "FRIGATE_FUEL_3" },
                                --{ "Id", "R_NEXUS_MED",     "ID", "FRIGATE_FUEL_3" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "FRIGATE_FUEL_3" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FRIGATE_FUEL_3_MIN_MULTI },
                                { "AmountMax", FRIGATE_FUEL_3_MAX_MULTI },
                            }
                        },
                        -- COMPOUNDS
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                -- Organic Catalyst
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND1" },
                                -- Semiconductor
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND2" },
                                -- Hot Ice
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND3" },
                                -- Fusion Accelerant
                                { "Id", "R_MB_HIGH", "ID", "COMPOUND4" },
                                { "Id", "R_MB_MEGA", "ID", "COMPOUND4" },
                                -- Superconductor
                                { "Id", "R_MB_MEGA", "ID", "COMPOUND5" },
                                -- Cryo-Pump
                                { "Id", "R_MB_MEGA", "ID", "COMPOUND6" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", COMPOUND_ANY_MIN_MULTI },
                                { "AmountMax", COMPOUND_ANY_MAX_MULTI },
                            }
                        },
                        -- Ion Battery
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "POWERCELL" },
                                { "Id", "R_MB_MED",  "ID", "POWERCELL" },
                                { "Id", "R_MB_HIGH", "ID", "POWERCELL" },
                                --{ "Id", "R_NEXUS_MED", "ID", "POWERCELL" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", MB_POWERCELL_MIN_MULTI },
                                { "AmountMax", MB_POWERCELL_MAX_MULTI },
                            }
                        },
                        -- Fuel Oxidiser
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "FRIG_BOOST_SPD" },
                                { "Id", "R_MB_MED",  "ID", "FRIG_BOOST_SPD" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_SPD" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_SPD" },
                                --{ "Id", "R_NEXUS_MED", "ID", "FRIG_BOOST_SPD" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FRIG_BOOST_ANY_MIN_MULTI },
                                { "AmountMax", FRIG_BOOST_ANY_MAX_MULTI },
                            }
                        },
                        -- Explosive Drones
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "FRIG_BOOST_COM" },
                                { "Id", "R_MB_MED",  "ID", "FRIG_BOOST_COM" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_COM" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_COM" },
                                --{ "Id", "R_NEXUS_MED", "ID", "FRIG_BOOST_COM" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FRIG_BOOST_ANY_MIN_MULTI },
                                { "AmountMax", FRIG_BOOST_ANY_MAX_MULTI },
                            }
                        },
                        -- Holographic Analyser
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "FRIG_BOOST_EXP" },
                                { "Id", "R_MB_MED",  "ID", "FRIG_BOOST_EXP" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_EXP" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_EXP" },
                                --{ "Id", "R_NEXUS_MED", "ID", "FRIG_BOOST_EXP" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FRIG_BOOST_ANY_MIN_MULTI },
                                { "AmountMax", FRIG_BOOST_ANY_MAX_MULTI },
                            }
                        },
                        -- Mineral Compressor
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "FRIG_BOOST_MIN" },
                                { "Id", "R_MB_MED",  "ID", "FRIG_BOOST_MIN" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_MIN" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_MIN" },
                                --{ "Id", "R_NEXUS_MED", "ID", "FRIG_BOOST_MIN" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FRIG_BOOST_ANY_MIN_MULTI },
                                { "AmountMax", FRIG_BOOST_ANY_MAX_MULTI },
                            }
                        },
                        -- Mind Control Device
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "FRIG_BOOST_TRA" },
                                { "Id", "R_MB_MED",  "ID", "FRIG_BOOST_TRA" },
                                { "Id", "R_MB_HIGH", "ID", "FRIG_BOOST_TRA" },
                                { "Id", "R_MB_MEGA", "ID", "FRIG_BOOST_TRA" },
                                --{ "Id", "R_NEXUS_MED", "ID", "FRIG_BOOST_TRA" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", FRIG_BOOST_ANY_MIN_MULTI },
                                { "AmountMax", FRIG_BOOST_ANY_MAX_MULTI },
                            }
                        },
                        -- Starshield Battery
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "SHIPCHARGE" },
                                { "Id", "R_MB_MED",  "ID", "SHIPCHARGE" },
                                { "Id", "R_MB_HIGH", "ID", "SHIPCHARGE" },
                                --{ "Id", "R_NEXUS_MED", "ID", "SHIPCHARGE" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", MB_SHIPCHARGE_MIN_MULTI },
                                { "AmountMax", MB_SHIPCHARGE_MAX_MULTI },
                            }
                        },
                        -- Starship Launch Fuel
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "LAUNCHFUEL" },
                                { "Id", "R_MB_MED",  "ID", "LAUNCHFUEL" },
                                { "Id", "R_MB_HIGH", "ID", "LAUNCHFUEL" },
                                --{ "Id", "R_NEXUS_MED", "ID", "LAUNCHFUEL" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", MB_LAUNCHFUEL_MIN_MULTI },
                                { "AmountMax", MB_LAUNCHFUEL_MAX_MULTI },
                            }
                        },
                        -- Life Support Gel
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",  "ID", "PRODFUEL2" },
                                { "Id", "R_MB_MED",  "ID", "PRODFUEL2" },
                                { "Id", "R_MB_HIGH", "ID", "PRODFUEL2" },
                                --{ "Id", "R_NEXUS_MED", "ID", "PRODFUEL2" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", MB_LIFEGEL_MIN_MULTI },
                                { "AmountMax", MB_LIFEGEL_MAX_MULTI },
                            }
                        },
                        --
                        -- crashed freighter containers
                        --
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "ID", "FRIG_TOKEN" },
                                { "Id", "CRASHCONT_M", "ID", "WEAP_INV_TOKEN" },
                                { "Id", "CRASHCONT_M", "ID", "FREI_INV_TOKEN" },
                                { "Id", "CRASHCONT_S", "ID", "FRIG_TOKEN" },
                                { "Id", "CRASHCONT_S", "ID", "WEAP_INV_TOKEN" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", CRASHCONT_ANY_TOKEN_MIN_MULTI },
                                { "AmountMax", CRASHCONT_ANY_TOKEN_MAX_MULTI },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "Value", "ILLEGAL_PROD3" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", CRASHCONT_ILLEGAL_MIN_MULTI }, -- 1
                                { "AmountMax", CRASHCONT_ILLEGAL_MAX_MULTI }, -- 1
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "ID", "HYPERFUEL2" },
                                { "Id", "CRASHCONT_S", "ID", "HYPERFUEL1" },
                                { "Id", "CRASHCONT_S", "ID", "LAUNCHFUEL" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", CRASHCONT_FUEL_MIN_MULTI },
                                { "AmountMax", CRASHCONT_FUEL_MAX_MULTI },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "Value", "TRA_TECH5" },
                            },
                            ["SECTION_UP"]         = 2,
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", CRASHCONT_TRA_ANY_5_MIN_MULTI }, -- 5
                                { "AmountMax", CRASHCONT_TRA_ANY_5_MAX_MULTI }, -- 5
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "CRASHCONT_M", "ID", "BP_SALVAGE" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD6" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD5" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD1" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD4" },
                                { "Id", "CRASHCONT_M", "ID", "FARMPROD7" },
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND4" },
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND5" },
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND6" },
                                { "Id", "CRASHCONT_M", "ID", "COMPOUND3" },
                                { "Id", "CRASHCONT_S", "ID", "ANTIMATTER" },
                                { "Id", "CRASHCONT_S", "ID", "AM_HOUSING" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", CRASHCONT_MISC_MIN_MULTI },
                                { "AmountMax", CRASHCONT_MISC_MAX_MULTI },
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"]  = {
                                { "Id", "R_MB_LOW",        "ID", "NIPNIPBUDS" },
                                { "Id", "R_MB_MED",        "ID", "NIPNIPBUDS" },
                                { "Id", "R_MB_HIGH",       "ID", "NIPNIPBUDS" },
                                { "Id", "R_MB_MEGA",       "ID", "NIPNIPBUDS" },
                                --{ "Id", "R_NEXUS_MED",     "ID", "NIPNIPBUDS" },
                                -- { "Id", "R_NEXUS_MEGA",    "ID", "NIPNIPBUDS" },
                                -- { "Id", "R_NEXUS_MED_C",   "ID", "NIPNIPBUDS" },
                                -- { "Id", "R_NEXUS_MEGA_C",  "ID", "NIPNIPBUDS" },
                                -- { "Id", "R_NEXUS_QS",      "ID", "NIPNIPBUDS" },
                                -- { "Id", "R_NEXUS_QS_PQ",   "ID", "NIPNIPBUDS" },
                                { "Id", "R_PIRATEBOARD_A", "ID", "NIPNIPBUDS" },
                                -- { "Id", "R_PIRATEBOARD_B", "ID", "NIPNIPBUDS" },
                            },
                            ["MATH_OPERATION"]     = "*",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", MB_NIPNIPBUDS_MIN_MULTI },
                                { "AmountMax", MB_NIPNIPBUDS_MAX_MULTI },
                            }
                        },
                        --
                        -- Tritium from Tritium Hypercluster
                        --
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "Id", "DE_GEODE_SPACE", "ID", "ROCKETSUB" },
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountMin", TRITIUM_CLUSTER_MULTI_MIN }, -- 50/50
                                { "AmountMax", TRITIUM_CLUSTER_MULTI_MAX }, -- 90/160
                            }
                        },
                    }
                },
            }
        }
    }
}
