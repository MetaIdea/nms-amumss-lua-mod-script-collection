NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_MOD_DUD_Asteroid_v452-A.pak",
["MOD_AUTHOR"]      = "jasondude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.52",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CommonAsteroidData", "GcAsteroidGenerationData.xml", "ScaleVariance", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CommonAsteroidData", "GcAsteroidGenerationData.xml", "NoiseRange", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.81"},
                                {"y", "0.89"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CommonAsteroidData", "GcAsteroidGenerationData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeRange",  "1000"},
                                {"NoiseScale", "100000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RingAsteroidData", "GcAsteroidGenerationData.xml", "ScaleVariance", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RingAsteroidData", "GcAsteroidGenerationData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeRange", "1000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LargeAsteroidData", "GcAsteroidGenerationData.xml", "NoiseRange", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.82"},
                                {"y", "0.88"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LargeAsteroidData", "GcAsteroidGenerationData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "4000"},
                                {"FadeRange",  "4000"},
                                {"NoiseScale", "100000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RareAsteroidData", "GcAsteroidGenerationData.xml", "ScaleVariance", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RareAsteroidData", "GcAsteroidGenerationData.xml", "NoiseRange", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.84"},
                                {"y", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RareAsteroidData", "GcAsteroidGenerationData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeRange",  "1000"},
                                {"NoiseScale", "100000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RareAsteroidNoiseRangeSomeRares", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.83"},
                                {"y", "0.87"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RareAsteroidNoiseRangeLotsOfRares", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.82"},
                                {"y", "0.88"},
                            },
                        },
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetInvalidAsteroidZone",       "40000"},
                                {"SparseAsteroidSpread",            "-20"},
                                {"AsteroidNoiseOctaves",            "1"},
                                {"AsteroidSpaceStationAvoidRadius", "10000"},
                            },
                        }
                    }
                }
            }
        }
    }
}