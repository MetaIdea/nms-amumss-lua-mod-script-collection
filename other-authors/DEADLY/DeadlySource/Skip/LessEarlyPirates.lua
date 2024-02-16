NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "LessEarlyPirates.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Decreases chances of early pirates and halves their count.",
    ["LUA_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "EarlyPiratesToBeKilled", 5 }, -- 10
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateEarlySpawnChances" },
                            ["LINE_OFFSET"]         = "+3",
                            ["VALUE_MATCH"]         = "0.2",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 0.1 }, -- 0.2
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "PirateEarlySpawnChances" },
                            ["LINE_OFFSET"]         = "+4",
                            ["VALUE_MATCH"]         = "0.5",
                            ["VALUE_CHANGE_TABLE"]  = {
                                { "IGNORE", 0.25 }, -- 0.5
                            }
                        },
                    }
                },
            }
        }
    }
}
