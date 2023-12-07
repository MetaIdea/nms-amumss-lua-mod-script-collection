CARGO_SCAN_DEFLECTOR_STRENGTH = 0.95 -- 0.5

CAPITAL_SHIP_BATTLE_WARPS = 30       -- 5
CAPITAL_SHIP_BATTLE_HOURS = 1        -- 3
FREIGHTER_SPAWN_RATE = 1             -- 40


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_Deadly.pak",
    ["MOD_BATCHNAME"] = "_Deadly.pak",
    ["MOD_AUTHOR"]    = "Ray Khouri, mrgamemafia, Bladehawke, Gumsk, Lo2k, gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
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
                                { "FreighterSpawnRate",            FREIGHTER_SPAWN_RATE }, -- 40
                                { "TradingPostTraderRequestTime",  1 },                    -- 5
                                { "TradeRouteSpeed",               3000 },                 -- 800
                                -- gShip Traders Frequency
                                { "FillUpOutposts",                "True" },               -- False;Needed
                                { "MaxNumActiveTraders",           30 },                   -- 15;Needed
                                { "SpaceStationTraderRequestTime", 1 },                    -- 20
                                { "DockWaitMaxTime",               50 },                   -- 60;Cycles ships faster
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
                        -- Capital ship battles
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WarpsBetweenBattles", CAPITAL_SHIP_BATTLE_WARPS }, -- 5
                                { "HoursBetweenBattles", CAPITAL_SHIP_BATTLE_HOURS }, -- 3
                            }
                        },
                        -- Cargo Scan Deflector
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "CargoShieldStrength", CARGO_SCAN_DEFLECTOR_STRENGTH }, -- 0.5
                            }
                        },
                        -- Frigate Flyby Timer
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FrigateFlybyTimer" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "2400" }, -- 600
                                { "y", "4800" }, -- 1200
                            }
                        },
                        -- Freighter Timers
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "100" }, -- 10
                                { "y", "300" }, -- 30
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "600" },  -- 60
                                { "y", "2400" }, -- 240
                            }
                        },
                    }
                },
                --
                -- METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- gShip Traders Frequency
                        {
                            ["PRECEDING_KEY_WORDS"] = { "OutpostSpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "1" }, -- 1
                                { "y", "5" }, -- 3
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "TraderSpawns", "Count" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", "1" }, -- 1
                                { "y", "1" }, -- 1
                            },
                        },
                    }
                },
            }
        }
    }
}
