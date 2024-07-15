NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreTraders.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FillUpOutposts",                "True"},
                                {"MaxNumActiveTraders",           "40"},
                                {"TraderRequestTime",             "1"},
                                {"TradingPostTraderRequestTime",  "1"},
                                {"SpaceStationTraderRequestTime", "1"},
                                {"TraderArriveSpeed",             "1000"},
                                {"TraderArriveTime",              "1"},
                                {"ShipSpawnStationRadius",        "1000"},
                                {"DockWaitMinTime",               "15"},
                                {"DockWaitMaxTime",               "20"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"OutpostSpawns", "GcAIShipSpawnData.xml", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TraderSpawns", "GcAIShipSpawnData.xml", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "2"},
                                {"y", "2"},
                            }
                        },
                    }
                },
            }
        }
    }
}