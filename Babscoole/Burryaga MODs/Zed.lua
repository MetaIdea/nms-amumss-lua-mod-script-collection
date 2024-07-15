NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Zed.pak",
["MOD_AUTHOR"]              = "Burryaga",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.70",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VehicleAllIconScanTime",  "2"},
                                {"MaxNumSameGroupTech",     "48"},
                                {"TerrainResourceScanTime", "3"},
                                {"BinocMinScanTime",        "0.39000002"},
                                {"BinocScanTime",           "0.39000002"},
                                {"BinocCreatureScanTime",   "0.32"},
                                {"WarpsBetweenBattles",     "2"},
                                {"HoursBetweenBattles",     "0"},
                                {"CreatureMinScanTime",     "0.08"},
                                {"WaypointScanTime",        "0.3"},
                                {"DeadPlanetGravityFactor", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BinocularSelectedColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"B", "1"},
                                {"A", "0.9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BinocularSelectedUnknownColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "1"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScannerColour1", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "1"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScannerColour2", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.1"},
                                {"B", "1"},
                            }
                        },
                    }
                },
            }
        }
    }
}