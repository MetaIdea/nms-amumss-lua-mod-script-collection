NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "Bigger Wallet 2.2.pak",
    ["MOD_DESCRIPTION"]    = "Increases UI currencies spacing",
    ["MOD_AUTHOR"]        = "Lo2k (script by Droseran)",
    ["NMS_VERSION"]        = "3.67",
    ["MODIFICATIONS"]    = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\COMPONENTS\USERBAR.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","GRP_UNITS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Width","210"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","UNITS"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Width","176"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","GRP_TECH"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PositionX","210"},
                                {"Width","152"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","GRP_SPEC"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PositionX","0"},
                                {"Width","152"}
                            }
                        },
                    }
                },
            }
        },
    }
}