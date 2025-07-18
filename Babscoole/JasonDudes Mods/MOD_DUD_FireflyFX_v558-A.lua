NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_FireflyFX_v558-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.58",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\ALIEN\ALIEN.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles", "1500"},
                                {"Fade Time",           "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rotation Speed Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Twinkle Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                                {"Y", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.04"},
                                {"Y", "-0.04"},
                                {"Z", "-0.04"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.04"},
                                {"Y", "0.04"},
                                {"Z", "0.04"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Strength", "0.2"},
                                {"Speed",    "0.2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles",   "400"},
                                {"Min Particle Lifetime", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Twinkle Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                                {"Y", "0.2"},
                                {"Z", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.01"},
                                {"Y", "-0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.4991"},
                                {"G", "0.28301"},
                                {"B", "0.172122"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.4991"},
                                {"G", "0.28301"},
                                {"B", "0.172122"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Strength", "0.1"},
                                {"Speed",    "0.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH2.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Material",              "MODELS/EFFECTS/COMMON/MATERIALS/FIREFLY.MATERIAL.MBIN"},
                                {"Number Of Particles",   "400"},
                                {"Radius",                "25"},
                                {"Min Particle Lifetime", "10"},
                                {"Max Particle Lifetime", "10"},
                                {"Fade Time",             "0.5"},
                                {"EmitterShape",          "Sphere"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.02"},
                                {"Y", "0.03"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rotation Speed Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Twinkle Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                                {"Y", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "-0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.03"},
                                {"Y", "0.02"},
                                {"Z", "0.03"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.22813"},
                                {"G", "0.3619"},
                                {"B", "0.179612"},
                                {"A", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.22813"},
                                {"G", "0.3619"},
                                {"B", "0.179612"},
                                {"A", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Strength", "0.1"},
                                {"Speed",    "0.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles",   "400"},
                                {"Radius",              "35"},
                                {"Min Particle Lifetime", "10"},
                                {"Max Particle Lifetime", "10"},
                                {"EmitterShape",        "Sphere"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.02"},
                                {"Y", "0.04"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Twinkle Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                                {"Y", "0.2"},
                                {"Z", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.01"},
                                {"Y", "-0.01"},
                                {"Z", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.02"},
                                {"Y", "0.01"},
                                {"Z", "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.151526"},
                                {"G", "0.12878"},
                                {"B", "0.322"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Colour 2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.151526"},
                                {"G", "0.12878"},
                                {"B", "0.322"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Strength", "0.1"},
                                {"Speed",    "0.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP02.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles", "400"},
                                {"Fade Time",          "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Scale Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Twinkle Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                                {"Y", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "-0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.03"},
                                {"Y", "0.02"},
                                {"Z", "0.03"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Strength", "0.15"},
                                {"Speed",    "0.15"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\JUNGLE\JUNGLE.HEAVYAIR.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number Of Particles", "400"},
                                {"Fade Time",           "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Major Direction"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Rotation Speed Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Twinkle Range"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0"},
                                {"Y", "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "-0.03"},
                                {"Y", "-0.03"},
                                {"Z", "-0.03"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Amplitude Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.03"},
                                {"Y", "0.03"},
                                {"Z", "0.03"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Strength", "0.15"},
                                {"Speed",    "0.15"},
                            }
                        },
                    }
                },
            }
        },
    }
}