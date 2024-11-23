--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_RainFX_v503-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.03",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.2"},
                                {"y", "-0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.2"},
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour1", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour2", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "800"},
                                {"Radius",            "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-2.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.2"},
                                {"y", "-0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.2"},
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour1", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour2", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "1600"},
                                {"Radius", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.2"},
                                {"y", "-0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.2"},
                                {"y", "0.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "1600"},
                                {"Radius", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.2"},
                                {"y", "-0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.2"},
                                {"y", "0.5"},
                            }
                        },
                    }
                },
            }
        },
    },
}