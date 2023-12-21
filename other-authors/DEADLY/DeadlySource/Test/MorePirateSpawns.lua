NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "MorePirateSpawns.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = { "SpacePirateTimers", "GcExperienceTimers.xml" },
                            ["VALUE_CHANGE_TABLE"] = {
                                { "HighChance", 50 }, -- 0
                                { "LowChance",  0 },  -- 30
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "High" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 30 },  -- 300
                                { "y", 60 }, -- 300
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Normal" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 90 }, -- 300
                                { "y", 120 }, -- 500
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "SpacePirateTimers", "Low" },
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "X", 120 }, -- 400
                                { "y", 180 }, -- 600
                            }
                        },
                    }
                },
            }
        }
    }
}
