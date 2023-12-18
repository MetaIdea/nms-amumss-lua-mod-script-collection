NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyLessBattles.pak",
    ["MOD_BATCHNAME"] = "_Deadly.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "WarpsBetweenBattles", 30 }, -- 5
                                { "HoursBetweenBattles", 1 },  -- 3
                            }
                        }
                    }
                }
            }
        }
    }
}
