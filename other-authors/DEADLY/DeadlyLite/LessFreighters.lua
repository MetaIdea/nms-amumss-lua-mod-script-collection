NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "LessFreighters.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Reduces chances to spawn Freighters and their company.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "FreighterSpawnRate", 1 }, -- 40
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "FreighterTimers", "GcExperienceTimers.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "HighChance", 5 },  -- 10
                                { "LowChance",  75 }, -- 30
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 600 },  -- 10
                                { "y", 1200 }, -- 30
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 900 },  -- 60
                                { "y", 1800 }, -- 240
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FreighterTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1800 }, -- 0
                                { "y", 3600 }, -- 0
                            }
                        },
                        -- planetary spawn rate
                        {
                            ["PRECEDING_KEY_WORDS"] = { "FrigateFlybyTimer" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "x", 1200 }, -- 600
                                { "y", 3600 }, -- 1200
                            }
                        },
                    }
                },
            }
        }
    }
}
