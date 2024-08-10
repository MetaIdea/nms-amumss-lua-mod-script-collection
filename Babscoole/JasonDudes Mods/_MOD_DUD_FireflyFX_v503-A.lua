NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_FireflyFX_v503-A.pak",
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
                    ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\HEAVYAIR\ALIEN\ALIEN.HEAVYAIR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "1500"},
                                {"FadeTime",          "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RotationSpeedRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.04"},
                                {"y", "-0.04"},
                                {"z", "-0.04"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.04"},
                                {"y", "0.04"},
                                {"z", "0.04"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift.xml"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles",   "400"},
                                {"MinParticleLifetime", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0.2"},
                                {"z", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.01"},
                                {"y", "-0.01"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0.01"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour1", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.4991"},
                                {"G", "0.28301"},
                                {"B", "0.172122"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour2", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.4991"},
                                {"G", "0.28301"},
                                {"B", "0.172122"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift.xml"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Material",            "MODELS/EFFECTS/COMMON/MATERIALS/FIREFLY.MATERIAL.MBIN"},
                                {"NumberOfParticles",   "400"},
                                {"Radius",              "25"},
                                {"MinParticleLifetime", "10"},
                                {"MaxParticleLifetime", "10"},
                                {"FadeTime",            "0.5"},
                                {"EmitterShape",        "Sphere"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"},
                                {"y", "0.03"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RotationSpeedRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.03"},
                                {"y", "0.02"},
                                {"z", "0.03"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour1", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.22813"},
                                {"G", "0.3619"},
                                {"B", "0.179652"},
                                {"A", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour2", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.22813"},
                                {"G", "0.3619"},
                                {"B", "0.179652"},
                                {"A", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift.xml"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles",   "400"},
                                {"Radius",              "35"},
                                {"MinParticleLifetime", "10"},
                                {"MaxParticleLifetime", "10"},
                                {"EmitterShape",        "Sphere"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"},
                                {"y", "0.04"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0.2"},
                                {"z", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.01"},
                                {"y", "-0.01"},
                                {"z", "0.01"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"},
                                {"y", "0.01"},
                                {"z", "0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour1", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.151526"},
                                {"G", "0.12878"},
                                {"B", "0.322"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Colour2", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.151526"},
                                {"G", "0.12878"},
                                {"B", "0.322"},
                                {"A", "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift.xml"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "400"},
                                {"FadeTime",          "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScaleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "-0.02"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.03"},
                                {"y", "0.02"},
                                {"z", "0.03"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift.xml"},
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
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfParticles", "400"},
                                {"FadeTime",          "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MajorDirection", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RotationSpeedRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TwinkleRange", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMin", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "-0.03"},
                                {"y", "-0.03"},
                                {"z", "-0.03"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AmplitudeMax", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.03"},
                                {"y", "0.03"},
                                {"z", "0.03"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WindDrift", "TkEmitterWindDrift.xml"},
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