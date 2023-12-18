NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "DisableSaving.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.46",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCDEBUGOPTIONS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "DisableSaving", "True" }, -- False
                            }
                        }
                    }
                },
            }
        }
    }
}
