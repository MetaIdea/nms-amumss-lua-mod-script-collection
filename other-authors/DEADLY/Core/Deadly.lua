NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_Deadly.pak",
    ["MOD_BATCHNAME"]   = "_Deadly.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Deadly v1.2",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCAISPACESHIPGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TradingPostTraderRequestTime",   1 },      -- 5
                                { "MinimumCircleTimeBeforeLanding", 1 },      -- 5
                                { "TradeRouteSpeed",                3000 },   -- 800
                                { "FillUpOutposts",                 "True" }, -- False
                                { "SpaceStationTraderRequestTime",  1 },      -- 20
                                { "DockWaitMinTime",                25 },     -- 20
                                { "DockWaitMaxTime",                35 },     -- 60
                            }
                        },
                    }
                },
                --
                -- GCDEBUGOPTIONS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SpawnRobots", "False" }, -- True
                            }
                        }
                    }
                },
                --
                -- GCSPACESHIPGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MiniWarpHUDArrowAttractAngle", 5 }, -- 10
                            }
                        },
                    }
                },
                --
                -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "SpaceCombatRadius",      10000 }, -- 5000
                                { "FreighterBattleRadius",  10000 }, -- 5000
                                { "EarlyPiratesToBeKilled", 3 },     -- 10
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateEarlySpawnChances" },
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_MATCH"]         = "0.2",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 0.3 }, -- 0.2
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateEarlySpawnChances" },
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_MATCH"]         = "0.5",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 0.6 }, -- 0.5
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "SpacePirateTimers", "GcExperienceTimers.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "HighChance", 5 },  -- 0
                                { "LowChance",  20 }, -- 30
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 180 }, -- 300
                                { "y", 420 }, -- 300
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 240 }, -- 300
                                { "y", 600 }, -- 500
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 600 }, -- 400
                                { "y", 900 }, -- 600
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "PlanetPirateTimers", "GcExperienceTimers.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "HighChance", 5 },  -- 0
                                { "LowChance",  20 }, -- 30
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 480 }, -- 800
                                { "y", 900 }, -- 1000
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 720 },  -- 1000
                                { "y", 1200 }, -- 1400
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 900 },  -- 0
                                { "y", 1320 }, -- 0
                            }
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateSpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1 },
                                { "y", 2 },
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateSpawns", "Count", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1 },
                                { "y", 3 },
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetaryPirateFlybySpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1 }, -- 1
                                { "y", 5 }, -- 3
                            },
                        },
                    }
                },
                --
                -- METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/MISSIONS/NPCMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- spawn all pirate at once, without reinforcements
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "AttackDefinition", "PIRATE" },
                            ["VALUE_MATCH"]        = "3",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "NumSquads", 1 },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "TargetStat", "MISSION_PIRATES" },
                            ["VALUE_MATCH"]        = "6",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountPastTarget", 1 },
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "TargetStat", "MISSION_PIRATES" },
                            ["VALUE_MATCH"]        = "9",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "AmountPastTarget", 1 },
                            },
                        },
                    }
                },
            }
        }
    }
}
