NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MoreModules.pak",
["MOD_AUTHOR"]      = "AzureShork",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.36.2",
["MOD_DESCRIPTION"] = "Ever wanted space station technology vendors to sell more modules?",
["MODIFICATIONS"]   =
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
                                {"Shop",               "GcTradeData.xml"},
                                {"TechShop",           "GcTradeData.xml"},
                                {"ShipTechSpecialist", "GcTradeData.xml"},
                                {"SuitTechSpecialist", "GcTradeData.xml"},
                                {"WeapTechSpecialist", "GcTradeData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "18"},
                                {"MaxItemsForSale", "36"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"SpaceStation", "GcTradeData.xml"},
                                {"Scrap",        "GcTradeData.xml"},
                                {"PirateTech",   "GcTradeData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", "24"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleTechSpecialist", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Ship",          "GcTradeData.xml"},
                                {"ExpShip",       "GcTradeData.xml"},
                                {"TraShip",       "GcTradeData.xml"},
                                {"WarShip",       "GcTradeData.xml"},
                                {"LoneExp",       "GcTradeData.xml"},
                                {"LoneTra",       "GcTradeData.xml"},
                                {"LoneWar",       "GcTradeData.xml"},
                                {"MapShop",       "GcTradeData.xml"},
                                {"PirateVisitor", "GcTradeData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", "12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IllegalProds", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", "12"},
                                {"MaxItemsForSale", "24"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation", "GcTradeData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", "28"},
                            }
                        },
                    }
                },
            }
        }
    }
}