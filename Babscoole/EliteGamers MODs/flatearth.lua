NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "flatearth.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GrassNormalUpright",  "10"},
                                {"GrassNormalOffset",   "10"},
                                {"GrassNormalSpherify", "10"},
                                {"GrassNormalMap",      "10"},
                                {"WaterFogHeightMax",   "0"},
                                {"WaterAlphaHeightMin", "0"},
                                {"WaterAlphaHeightMax", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudHeightMin", "50"},
                                {"CloudHeightMax", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentPrimeProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudHeightMin", "50"},
                                {"CloudHeightMax", "100"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DebugFlattenAllTerrain", "True"},
                            }
                        },
                    }
                },
            }
        },
    }
}
