NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exo's Asteroid Ribbons",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.73",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Planet Invalid Asteroid Zone",             "40000"},
                                {"Sparse Asteroid Spread",                   "-25"},
                                {"Asteroid Noise Octaves",                   "1"},
                                {"Asteroid Space Station Avoid Radius",      "10000"},
                                {"Asteroid Anomaly Avoid Radius",            "10000"},
                                {"Asteroid Warp In Area Avoid Radius",       "10000"},
                                {"Asteroid Some Rares Odds",                 "0.52"},
                                {"Rare Asteroid Min Resources",              "8"},
                                {"Rare Asteroid Max Resources",              "20"},
                                {"Common Asteroid Min Resources",            "7"},
                                {"Common Asteroid Max Resources",            "16"},
                                {"Common Asteroid Resource Fuel Multiplier", "3"},
                                {"Common Asteroid Resource Fuel Odds",       "0.75"},
                                {"Rare Asteroid Resource Fuel Odds",         "0.25"},
                                {"Large Asteroid Fade Time",                 "1.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "387"},
                                {"FadeRange",  "1000"},
                                {"NoiseScale", "100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data", "Scale Variance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data", "Noise Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.499"},
                                {"y", "0.501"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ring Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FadeRange", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ring Asteroid Data", "Scale Variance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Large Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "3500"},
                                {"FadeRange",  "3500"},
                                {"NoiseScale", "100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Large Asteroid Data", "Noise Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.495"},
                                {"y", "0.505"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "510"},
                                {"FadeRange",  "1000"},
                                {"NoiseScale", "100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data", "Scale Variance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.3"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data", "Noise Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.499"},
                                {"y", "0.501"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Noise Range Some Rares"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.4985"},
                                {"y", "0.5015"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Noise Range Lots Of Rares"},
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