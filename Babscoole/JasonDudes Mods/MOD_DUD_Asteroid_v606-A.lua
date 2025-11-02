NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "MOD_DUD_Asteroid_v606-A",
["MOD_AUTHOR"]      = "jasondude7116",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.06",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data", "Scale Variance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "1.3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data", "Noise Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.81"},
                                {"Y", "0.89"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Common Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Fade Range",  "1000"},
                                {"Noise Scale", "100000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ring Asteroid Data", "Scale Variance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "1.3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Ring Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Fade Range", "1000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Large Asteroid Data", "Noise Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.82"},
                                {"Y", "0.88"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Large Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Spacing",    "4000"},
                                {"Fade Range",  "4000"},
                                {"Noise Scale", "100000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data", "Scale Variance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "1.3"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data", "Noise Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.84"},
                                {"Y", "0.85"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Data"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Fade Range",  "1000"},
                                {"Noise Scale", "100000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Noise Range Some Rares"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.83"},
                                {"Y", "0.87"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rare Asteroid Noise Range Lots Of Rares"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.82"},
                                {"Y", "0.88"},
                            },
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Planet Invalid Asteroid Zone",       "40000"},
                                {"Sparse Asteroid Spread",            "-20"},
                                {"Asteroid Noise Octaves",            "1"},
                                {"Asteroid Space Station Avoid Radius", "10000"},
                            },
                        }
                    }
                }
            }
        }
    }
}