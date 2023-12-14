NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyCargoScanDeflector.pak",
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
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                { "CargoShieldStrength", 0.95 }, -- 0.5
                            }
                        },
                    }
                },
            }
        }
    }
}
