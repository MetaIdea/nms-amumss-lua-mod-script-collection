NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exo's Asteroid Ribbons.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
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
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAsteroidGenerationPerFrame",          "120000"}, --org 5000
                                {"MaxAsteroidGenerationPerFramePulseJump", "10000"},  --org 1000
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetInvalidAsteroidZone",            "40000"},
                                {"SparseAsteroidSpread",                 "-25"},
                                {"AsteroidNoiseOctaves",                 "1"},
                                {"AsteroidSpaceStationAvoidRadius",      "10000"},
                                {"AsteroidAnomalyAvoidRadius",           "10000"},
                                {"AsteroidWarpInAreaAvoidRadius",        "10000"},
                                {"AsteroidSomeRaresOdds",                "0.52"},
                                {"RareAsteroidMinResources",             "8"},
                                {"RareAsteroidMaxResources",             "20"},
                                {"CommonAsteroidMinResources",           "7"},
                                {"CommonAsteroidMaxResources",           "16"},
                                {"CommonAsteroidResourceFuelMultiplier", "3"},
                                {"CommonAsteroidResourceFuelOdds",       "0.75"},
                                {"RareAsteroidResourceFuelOdds",         "0.25"},
                                {"LargeAsteroidFadeTime",                "1.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "387"},
                                {"FadeRange",  "1000"},
                                {"NoiseScale", "100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData", "ScaleVariance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData", "NoiseRange"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.499"},
                                {"y", "0.501"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RingAsteroidData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeRange", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RingAsteroidData", "ScaleVariance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LargeAsteroidData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "3500"},
                                {"FadeRange",  "3500"},
                                {"NoiseScale", "100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LargeAsteroidData", "NoiseRange"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.495"},
                                {"y", "0.505"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RareAsteroidData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "510"},
                                {"FadeRange",  "1000"},
                                {"NoiseScale", "100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RareAsteroidData", "ScaleVariance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RareAsteroidData", "NoiseRange"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.499"},
                                {"y", "0.501"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RareAsteroidNoiseRangeSomeRares", "Vector2f.xml"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.4985"},
                                {"y", "0.5015"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RareAsteroidNoiseRangeLotsOfRares", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.498"},
                                {"y", "0.502"}
                            }
                        },
                    }
                },
            }
        }
    }
}