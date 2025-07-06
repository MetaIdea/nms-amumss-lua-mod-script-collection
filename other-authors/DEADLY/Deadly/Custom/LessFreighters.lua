NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "LessFreighters.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Reduces chances to spawn Freighters and their company.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "5.63",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- GCAISPACESHIPGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FreighterSpawnRate", 1.0 }, -- 40.0
                            }
                        },
                    }
                },
                { -- GCGAMEPLAYGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        -- {
                        --     ["SPECIAL_KEY_WORDS"]  = { "FreighterTimers", "GcExperienceTimers" },
                        --     ["VALUE_CHANGE_TABLE"] = {
                        --         { "HighChance", 5 },  -- 10.0
                        --         { "LowChance",  75 }, -- 30.0
                        --     },
                        -- },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 600 },  -- 10.0
                                { "Y", 1200 }, -- 30.0
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 900.0 },  -- 60.0
                                { "Y", 1800.0 }, -- 240.0
                            }
                        },
                        -- {
                        --     ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "Low" },
                        --     ["VALUE_CHANGE_TABLE"]  = {
                        --         { "X", 1800.0 }, -- 0.0
                        --         { "Y", 3600.0 }, -- 0.0
                        --     }
                        -- },
                        -- planetary spawn rate
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FrigateFlybyTimer" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 1200 }, -- 600.0
                                { "Y", 3600 }, -- 1200.0
                            }
                        },
                    }
                },
            }
        }
    }
}
