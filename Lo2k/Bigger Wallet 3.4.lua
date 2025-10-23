NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]   	  = "Bigger Wallet 3.4.pak",
    ["MOD_DESCRIPTION"]   = "Increases UI currencies spacing",
    ["MOD_AUTHOR"]        = "Lo2k",
	["LUA_AUTHOR"]        = "Droseran",
    ["NMS_VERSION"]       = "6.10",
    ["MODIFICATIONS"]     = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\COMPONENTS\USERBAR.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
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
                                {"Position X","210"},
                                {"Width","152"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","GRP_SPEC"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Position X","0"},
                                {"Width","152"}
                            }
                        },
                    }
                },
            }
        },
    }
}