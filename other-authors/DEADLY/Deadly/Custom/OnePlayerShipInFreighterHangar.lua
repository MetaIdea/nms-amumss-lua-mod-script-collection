NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "OnePlayerShipInFreighterHangar.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["LUA_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "5.10",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- GCFLEETGLOBALS.GLOBAL.MBIN
                    ["MBIN_FILE_SOURCE"]  = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxNumberOfPlayerShipsInFreighterHangar", 1 }, -- 6
                            }
                        }
                    }
                },
            }
        }
    }
}
