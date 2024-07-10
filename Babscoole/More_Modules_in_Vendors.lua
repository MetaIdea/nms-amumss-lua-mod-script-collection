--SETTINGS: EDIT THESE--
TECH_VENDOR_AMOUNTLOW = 18 --Changes the minimum amount of items sold by tech vendors
TECH_VENDOR_AMOUNTHIGH = 36 --Changes the maximum possible items sold by tech vendors

ILLEGAL_VENDOR_AMOUNTLOW = 12 --Changes the minimum possible items sold by illegal vendors
ILLEGAL_VENDOR_AMOUNTHIGH = 24 --Changes the maximum possible items sold by illegal vendors
PIRATE_VENDOR_AMOUNT = 24 --Changes the maximum items that are sold by pirates
SMUGGLERSTATION_AMOUNT = 28 --Changes amount of products sold by smuggler stations.

VEHICLE_TECH_AMOUNT = 30 --Effects only exocraft tech vendors.

TRADER_AMOUNT = 12 --Changes how many products are sold by traders

--MODIFICATIONS: DO NOT EDIT THIS--
NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MoreModules.pak",
["MOD_AUTHOR"]      = "Therrad",
["LUA_AUTHOR"]      = "Babscoole/Therrad",
["NMS_VERSION"]     = "4.23",
["MOD_DESCRIPTION"] = "Ever wanted space station technology vendors to sell more modules?",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["FSKWG"] =
                            {
                                {"Shop",               "GcTradeData.xml",},
                                {"TechShop",           "GcTradeData.xml",},
                                {"ShipTechSpecialist", "GcTradeData.xml",},
                                {"SuitTechSpecialist", "GcTradeData.xml",},
                                {"WeapTechSpecialist", "GcTradeData.xml",},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", TECH_VENDOR_AMOUNTLOW},
                                {"MaxItemsForSale", TECH_VENDOR_AMOUNTHIGH},
                            }
                        },
                        {
                            ["FSKWG"] =
                            {
                                {"SpaceStation", "GcTradeData.xml",},
                                {"Scrap",        "GcTradeData.xml",},
                                {"PirateTech",   "GcTradeData.xml",},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", PIRATE_VENDOR_AMOUNT},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleTechSpecialist","GcTradeData.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", VEHICLE_TECH_AMOUNT},
                            }
                        },
                        {
                            ["FSKWG"] =
                            {
                                {"Ship",          "GcTradeData.xml",},
                                {"ExpShip",       "GcTradeData.xml",},
                                {"TraShip",       "GcTradeData.xml",},
                                {"WarShip",       "GcTradeData.xml",},
                                {"LoneExp",       "GcTradeData.xml",},
                                {"LoneTra",       "GcTradeData.xml",},
                                {"LoneWar",       "GcTradeData.xml",},
                                {"MapShop",       "GcTradeData.xml",},
                                {"PirateVisitor", "GcTradeData.xml",},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", TRADER_AMOUNT},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"IllegalProds","GcTradeData.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinItemsForSale", ILLEGAL_VENDOR_AMOUNTLOW},
                                {"MaxItemsForSale", ILLEGAL_VENDOR_AMOUNTHIGH},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SmugglerStation","GcTradeData.xml",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxItemsForSale", SMUGGLERSTATION_AMOUNT},
                            }
                        },
                    }
                },
            }
        }
    }
}