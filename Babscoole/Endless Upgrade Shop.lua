Quantity=1000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Endless Upgrade Shop",
["MOD_AUTHOR"]      = "Grouch",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.17",
["MOD_DESCRIPTION"] = "Makes Upgrade Module shops aboard Space Stations and Outlaw Stations always sell functionally endless amounts of each module that they normally sell",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {--Amount of Products available
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ShipTechSpecialist",    "GcTradeData"},
                                {"SuitTechSpecialist",    "GcTradeData"},
                                {"WeapTechSpecialist",    "GcTradeData"},
                                {"VehicleTechSpecialist", "GcTradeData"},
                                {"PirateTech",            "GcTradeData"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MinAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    Quantity},
                                {"Average", Quantity},
                                {"Wealthy", Quantity},
                                {"Pirate",  Quantity},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ShipTechSpecialist",    "GcTradeData"},
                                {"SuitTechSpecialist",    "GcTradeData"},
                                {"WeapTechSpecialist",    "GcTradeData"},
                                {"VehicleTechSpecialist", "GcTradeData"},
                                {"PirateTech",            "GcTradeData"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"MaxAmountOfProductAvailable"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Poor",    Quantity},
                                {"Average", Quantity},
                                {"Wealthy", Quantity},
                                {"Pirate",  Quantity},
                            }
                        },
                    },
                },
            },
        },
    },
}