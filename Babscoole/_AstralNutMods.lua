NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralNutMods.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnableFlyingSnakeTails",           "True"},
                                {"SmallCreatureFleePlayerDistance",  "1.5"},
                                {"LargeCreatureFleePlayerDistance",  "0.5"},
                                {"LargeCreatureAvoidPlayerDistance", "10"},
                                {"AllowSleeping",                    "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThirdPersonIsDefaultCameraForPlayer", "False"},
                                {"RenderCreatureDetails",               "True"},
                                {"CreatureChatter",                     "True"},
                                {"CreatureErrors",                      "True"},
                                {"DrawCreaturesInRoutines",             "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaterChangeTime",              "142"},
                                {"WaterConditionTransitionTime", "42"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CloudProperties", "GcCloudProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimationScale",  "24"},
                                {"DetailScale",     "9"},
                                {"CloudDistortion", "30"},
                                {"MaxIterations",   "256"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainAnisoUlt",         "16"},
                                {"TargetTextureMemUsageMB", "2042"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DayLength",           "5400"},
                                {"StormTransitionTime", "42"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",          "0"},
                                {"AutoLevelMinAngle", "0"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCWATERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaveHeight", "2.4"},
                                {"WaveCutoff", "1"},
                            }
                        },
                    }
                },
            }
        }
    }
}