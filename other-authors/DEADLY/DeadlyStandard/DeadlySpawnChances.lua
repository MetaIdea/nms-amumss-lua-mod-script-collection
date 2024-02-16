NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlySpawnChances.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
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
                                { "MinimumCircleTimeBeforeLanding", 0 },      -- 5
                                { "FillUpOutposts",                 "True" }, -- False
                                { "SpaceStationTraderRequestTime",  1 },      -- 20
                                { "DockWaitMaxTime",                35 },     -- 60
                                { "MaxNumActiveTraders",            30 },     -- 15
                                { "TradingPostTraderRangeSpace",    5000 },   -- 3000
                                --{ "TraderArriveSpeed",              3000 },   -- 300
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
                                { "y", 300 }, -- 300
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 240 }, -- 300
                                { "y", 420 }, -- 500
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 360 }, -- 400
                                { "y", 720 }, -- 600
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
                                { "X", 600 }, -- 800
                                { "y", 840 }, -- 1000
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 840 },  -- 1000
                                { "y", 1200 }, -- 1400
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 600 },  -- 0
                                { "y", 1200 }, -- 0
                            }
                        },
                    }
                },
                --
                -- GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpaceshipSpawnFreqMultipliers" },
                            ["LINE_OFFSET"]         = "+1",
                            ["VALUE_MATCH"]         = "0.5",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 5 }, -- 0.5
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpaceshipSpawnFreqMultipliers" },
                            ["LINE_OFFSET"]         = "+2",
                            ["VALUE_MATCH"]         = "2",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 5 }, -- 2
                            }
                        },
                        -- {
                        --     ["PRECEDING_KEY_WORDS"] = { "SpaceshipSpawnFreqMultipliers" },
                        --     ["LINE_OFFSET"]         = "+3",
                        --     ["VALUE_MATCH"]         = "5",
                        --     ["VALUE_CHANGE_TABLE"]  = {
                        --         { "IGNORE", 5 }, -- 5
                        --     }
                        -- },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpaceshipSpawnFreqMultipliers" },
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_MATCH"]         = "2",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 5 }, -- 2
                            }
                        },
                    }
                },
            }
        }
    }
}
