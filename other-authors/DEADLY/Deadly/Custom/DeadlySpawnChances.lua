SPACESHIP_SPAWN_FREQ_MULTIPLIERS = [[
<Property name="SpaceshipSpawnFreqMultipliers">
    <Property name="SpaceshipSpawnFreqMultipliers" value="5.000000" _index="0" />
    <Property name="SpaceshipSpawnFreqMultipliers" value="5.000000" _index="1" />
    <Property name="SpaceshipSpawnFreqMultipliers" value="5.000000" _index="2" />
    <Property name="SpaceshipSpawnFreqMultipliers" value="5.000000" _index="3" />
</Property>
]]


NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlySpawnChances.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.63",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- GCAISPACESHIPGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "TradingPostTraderRequestTime",   1.0 },    -- 5.0
                                { "MinimumCircleTimeBeforeLanding", 0.0 },    -- 5.0
                                { "FillUpOutposts",                 "True" }, -- False
                                { "SpaceStationTraderRequestTime",  1.0 },    -- 20.0
                                { "DockWaitMaxTime",                35.0 },   -- 60.0
                                { "MaxNumActiveTraders",            30 },     -- 15
                                { "TradingPostTraderRangeSpace",    5000.0 }, -- 3000.0
                                -- { "TraderArriveSpeed",              3000.0 }, -- 300.0
                            }
                        },
                    }
                },
                { -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "SpacePirateTimers", "GcExperienceTimers" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "HighChance", 5 },  -- 0
                        --         { "LowChance",  20 }, -- 30
                        --     }
                        -- },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 180.0 }, -- 300.0
                                { "Y", 300.0 }, -- 300.0
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 240.0 }, -- 300.0
                                { "Y", 420.0 }, -- 500.0
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 360.0 }, -- 400.0
                                { "Y", 720.0 }, -- 600.0
                            }
                        },
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "PlanetPirateTimers", "GcExperienceTimers" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "HighChance", 5 },  -- 0
                        --         { "LowChance",  20 }, -- 30
                        --     }
                        -- },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 600.0 }, -- 800.0
                                { "Y", 840.0 }, -- 1000.0
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 840.0 },  -- 1000.0
                                { "Y", 1200.0 }, -- 1400.0
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PlanetPirateTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 600.0 },  -- 0
                                { "Y", 1200.0 }, -- 0
                            }
                        },
                    }
                },
                { -- GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpaceshipSpawnFreqMultipliers" },
                            ["ADD_OPTION"]          = "REPLACEwholeSECTION",
                            ["ADD"]                 = SPACESHIP_SPAWN_FREQ_MULTIPLIERS
                        },
                    }
                },
            }
        }
    }
}
