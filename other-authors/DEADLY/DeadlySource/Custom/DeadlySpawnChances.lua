NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "_DeadlySpawnChances.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
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
                                { "X", 60 },  -- 300
                                { "y", 300 }, -- 300
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 180 }, -- 300
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
                                { "X", 360 }, -- 800
                                { "y", 720 }, -- 1000
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 480 }, -- 1000
                                { "y", 960 }, -- 1400
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
            }
        }
    }
}
