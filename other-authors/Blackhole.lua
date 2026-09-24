NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "Blackhole 7.04",
    ["MOD_AUTHOR"]      = "fattyzhouse",
    ["LUA_AUTHOR"]      = "Grok",
    ["NMS_VERSION"]     = "7.04+",
    ["MOD_DESCRIPTION"] = "Yeets the accretion disk and recasts the event horizon, particles, light, and flare, in a golden glow. Plus, a longer and harder camera shake.",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE/BLACKHOLE.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "1.0"},
                                {"Y", "0.82"},
                                {"Z", "0.2"},
                                {"W", "1.0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE/BLACKHOLE.PARTICLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourStart"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1.0"},
                                {"G", "0.82"},
                                {"B", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourMiddle"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1.0"},
                                {"G", "0.85"},
                                {"B", "0.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourEnd"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1.0"},
                                {"G", "0.65"},
                                {"B", "0.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE/RINGDISTORION.PARTICLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxRenderDistance", "195000"},
                                {"MaxSpawnDistance",  "195000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/EFFECTS/SPACE/BLACKHOLE/RINGSPARKS.PARTICLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxCount", "2000"},
                            }
                        },
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxRenderDistance", "75000"},
                                {"MaxSpawnDistance",  "75000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EmissionRate"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FixedValue", "340"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ParticleLife"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FixedValue", "1.55"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ParticleSpeedMultiplier"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRandomValue", "1200"},
                                {"MaxRandomValue", "2500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ParticleSize", "GeneralSize"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Authoring",      "FixedValue"},
                                {"FixedValue",     "11"},
                                {"MinRandomValue", "1"},
                                {"MaxRandomValue", "1"},
                                {"CurveVariation", "0"},
                                {"CurveEndValue",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourStartPalette"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Index", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourMiddle"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1.0"},
                                {"G", "0.75"},
                                {"B", "0.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourMiddlePalette"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Index", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourEnd"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1.0"},
                                {"G", "0.55"},
                                {"B", "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ColourEndPalette"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Index", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE.SCENE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_R"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_G"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.820000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "pointLight1", "Name", "COL_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "0.200000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE/BHFLARE.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "1.0"},
                                {"Y", "0.82"},
                                {"Z", "0.2"},
                                {"W", "1.0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gCustomParams01Vec4"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "0.0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE/BHGLOW.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"X", "1.0"},
                                {"Y", "0.82"},
                                {"Z", "0.2"},
                                {"W", "1.0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/SPACE/BLACKHOLE/BLACKHOLE/ENTITIES/BLACKHOLE.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FalloffDistanceMin", "2000"},
                                {"FalloffDistanceMax", "30000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "BLACKHOLE"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StrengthScale", "1150"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "BLACKHOLE"},
                            ["PRECEDING_KEY_WORDS"] = {"CapturedData"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShakeStrength", "5.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "BLACKHOLE"},
                            ["PRECEDING_KEY_WORDS"] = {"MechanicalData", "ShakeStrength"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Z", "24"},
                            }
                        },
                    }
                },
            }
        },
    }
}