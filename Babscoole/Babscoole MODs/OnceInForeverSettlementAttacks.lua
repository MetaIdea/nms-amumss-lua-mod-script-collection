NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "OnceInForeverSettlementAttacks.pak",
    ["MOD_DESCRIPTION"] = "",
    ["MOD_AUTHOR"]      = "lMonk",
    ["LUA_AUTHOR"]      = "Babscoole",
    ["NMS_VERSION"]     = "4.47",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AlertCycleDurationInSeconds", "720000"},
                            }
                        }
                    }
                }
            }
        }
    }
}