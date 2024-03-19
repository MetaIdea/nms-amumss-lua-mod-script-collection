NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreBlackMarketGoods.pak",
["MOD_AUTHOR"]    = "RemingtonRyder",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.51",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"SmugglerStation", "GcTradeData.xml"},
                                {"PirateVisitor",   "GcTradeData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Pirate",  "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"SmugglerStation", "GcTradeData.xml"},
                                {"PirateVisitor",   "GcTradeData.xml"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Pirate",  "250"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"PirateVisitor", "GcTradeData.xml", "Value", "POLICE_TOKEN"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "SACVENOM"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "CAVECUBE"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "ALBUMENPEARL"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "TRA_COMMODITY1"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "TRA_COMPONENT1"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "TRA_ENERGY1"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "TRA_EXOTICS1"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "TRA_MINERALS1"},
                                {"PirateVisitor", "GcTradeData.xml", "Value", "TRA_TECH1"},
                            },
                            ["REMOVE"] = "SECTION"
                        },
                    }
                },
            }
        }
    }
}