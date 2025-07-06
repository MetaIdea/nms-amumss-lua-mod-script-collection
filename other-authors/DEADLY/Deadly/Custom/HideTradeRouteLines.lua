NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "HideTradeRouteLines.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["NMS_VERSION"]     = "5.63",
    ["MOD_DESCRIPTION"] = "Hides Trade Route Lines",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = { "TradeRouteColours" },
                            ["PRECEDING_FIRST"]     = "TRUE",
                            ["SPECIAL_KEY_WORDS"]   = { "R", "1.000000" },
                            ["REPLACE_TYPE"]        = "ALL",
                            ["SECTION_UP"]          = 1,
                            ["VALUE_MATCH"]         = "0.02",
                            ["VALUE_CHANGE_TABLE"]  = { { "A", 0.0 } }
                        },
                    }
                },
            }
        }
    }
}
