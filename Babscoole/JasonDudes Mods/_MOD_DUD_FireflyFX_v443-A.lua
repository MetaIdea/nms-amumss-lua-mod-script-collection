NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_FireflyFX_v443-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.43",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\ALIEN\ALIEN.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "2000"}, -- Original "5000"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"}, -- Original "0.005"
                                {"y", "0.3"}, -- Original "0.005"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.04"}, -- Original "-0.05"
                                {"y", "-0.04"}, -- Original "-0.05"
                                {"z", "-0.04"}, -- Original "-0.05"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.04"}, -- Original "0.05"
                                {"y", "0.04"}, -- Original "0.05"
                                {"z", "0.04"}, -- Original "0.05"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "400"}, -- Original "2500"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"}, -- Original "0.04"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"}, -- Original "0.01"
                                {"y", "0.2"}, -- Original "0.1"
                                {"z", "0"}, -- Original "0.01"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH2.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "400"}, -- Original "2500"
                                {"FadeTime",          "0.5"}, -- Original "0.8"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"}, -- Original "0.03"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"}, -- Original "0.01"
                                {"y", "0.3"}, -- Original "1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-0.02"}, -- Original "-0.01"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.03"}, -- Original "0.05"
                                {"y", "0.02"}, -- Original "0.01"
                                {"z", "0.03"}, -- Original "0.05"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "400"}, -- Original "2500"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"}, -- Original "0.04"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"}, -- Original "0.01"
                                {"y", "0.2"}, -- Original "0.1"
                                {"z", "0"}, -- Original "0.001"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP02.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "400"}, -- Original "1500"
                                {"FadeTime",          "0.5"}, -- Original "0.8"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.005"}, -- Original "0.01"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"}, -- Original "0.03"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"}, -- Original "0.01"
                                {"y", "0.3"}, -- Original "1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-0.02"}, -- Original "-0.01"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.03"}, -- Original "0.05"
                                {"y", "0.02"}, -- Original "0.01"
                                {"z", "0.03"}, -- Original "0.05"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\JUNGLE\JUNGLE.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "400"}, -- Original "3000"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"}, -- Original "0.005"
                                {"y", "0.2"}, -- Original "0.005"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.03"}, -- Original "-0.05"
                                {"y", "-0.03"}, -- Original "-0.05"
                                {"z", "-0.03"}, -- Original "-0.05"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.03"}, -- Original "0.05"
                                {"y", "0.03"}, -- Original "0.05"
                                {"z", "0.03"}, -- Original "0.05"
                            }
                        },
                    }
                },
            }
        },
    }
}