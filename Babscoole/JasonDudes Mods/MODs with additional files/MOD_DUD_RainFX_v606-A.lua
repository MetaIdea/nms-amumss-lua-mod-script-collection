--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_RainFX_v606-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.06",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE2.HEAVYAIR.MBIN",
                        "MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE3.HEAVYAIR.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles",   "2500"},
                                {"Radius",                "30.000000"},
                                {"Min Particle Lifetime", "0.750000"},
                                {"Max Particle Lifetime", "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "-4.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.500000"},
                                {"Y", "0.500000"},
                                {"Z", "0.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.200000"},
                                {"Y", "0.000000"},
                                {"Z", "-0.200000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.200000"},
                                {"Y", "0.500000"},
                                {"Z", "0.200000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "2.000000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles",   "2500"},
                                {"Radius",                "30.000000"},
                                {"Min Particle Lifetime", "0.750000"},
                                {"Max Particle Lifetime", "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "-4.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.500000"},
                                {"Y", "0.500000"},
                                {"Z", "0.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.200000"},
                                {"Y", "0.000000"},
                                {"Z", "-0.200000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.200000"},
                                {"Y", "0.500000"},
                                {"Z", "0.200000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Strength", "20.000000"},
                                {"Speed",    "2.000000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles",   "2500"},
                                {"Radius",                "30.000000"},
                                {"Min Particle Lifetime", "0.750000"},
                                {"Max Particle Lifetime", "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "-4.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.500000"},
                                {"Y", "0.500000"},
                                {"Z", "0.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.200000"},
                                {"Y", "0.000000"},
                                {"Z", "-0.200000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.200000"},
                                {"Y", "0.500000"},
                                {"Z", "0.200000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "2.000000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles",   "2500"},
                                {"Radius",                "30.000000"},
                                {"RadiusY",               "25.000000"},
                                {"Min Particle Lifetime", "0.750000"},
                                {"Max Particle Lifetime", "1.250000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "-4.000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.500000"},
                                {"Y", "0.500000"},
                                {"Z", "0.500000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.200000"},
                                {"Y", "0.000000"},
                                {"Z", "-0.200000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.200000"},
                                {"Y", "0.500000"},
                                {"Z", "0.200000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "2.000000"},
                            }
                        },
                    }
                },
            }
        },
    },
}