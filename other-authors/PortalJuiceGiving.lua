NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_PortalJuiceGiving.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.21",
    ["MOD_DESCRIPTION"] = "Makes portal juice can be sent",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                { -- Portal Juice Giving
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","PORTAL_JUICE"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"CanSendToOtherPlayers","True"}
                            }
                        }
                    }
                }
            }
        }
    }
}