NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "CheatAlwaysBattles.pak",
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
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WarpsBetweenBattles", 1 }, -- 5
                                { "HoursBetweenBattles", 0 }, -- 3
                            }
                        }
                    }
                }
            }
        }
    }
}
