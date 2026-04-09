NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Improved_Long_Range_Ship_Scanner_Working.pak",
    ["MOD_AUTHOR"]      = "OpenAI",
    ["LUA_AUTHOR"]      = "OpenAI",
    ["NMS_VERSION"]     = "5.6",
    ["MOD_DESCRIPTION"] = "Extends ship POI detection and icon visibility using confirmed-working scanner fields.",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShipInteractRadius", "5000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnknownBuildingRange", "40000"},
                                {"MaxIconRange", "60000"},
                                {"MinShipScanBuildings", "4"},
                                {"MaxShipScanBuildings", "16"},
                            }
                        },
                    }
                },
            }
        }
    }
}