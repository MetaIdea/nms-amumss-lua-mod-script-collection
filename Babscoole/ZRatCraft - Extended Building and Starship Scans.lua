NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ZRatCraft - Extended Building and Starship Scans.pak",
["MOD_AUTHOR"]    = "RatanKabidge",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\SPACEPOIMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnknownBuildingRange",    "3000"},
                                {"MaxIconRange",            "6000"},
                                {"MaxShipScanBuildings",    "10"},
                                {"MinRadiusForBases",       "1000"},
                                {"BaseRadiusExtension",     "1000"},
                                {"MaxRadiusForPlanetBases", "25000"},
                            }
                        },
                    }
                },
            }
        }
    }
}