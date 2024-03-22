NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "dark rooms.pak",
["MOD_AUTHOR"]              = "EliteGamers",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.08",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IndoorsLightingWeightAround",          "1000.1"},
                                {"IndoorsLightingWeightOverhead",        "-0.1"},
                                {"IndoorsLightingWeightGround",          "1000.1"},
                                {"IndoorsLightingTransitionTime",        "0"},
                                {"IndoorsLightingThreshold",             "1000.1"},
                                {"IndoorsLightingPlanetMax",             "1000.1"},
                                {"IndoorsLightingAbandonedFreighterMax", "1000.3"},
                                {"IndoorsLightingNexusMax",              "1000"},
                                {"IndoorsLightingFreighterMax",          "1000.6"},
                                {"SunFactorMin",                         "-1.4"},
                                {"ExposureSurfaceDistMax",               "5"},
                                {"ExposureGroundFactorAddMul",           "0.2"},
                                {"WaterFogHeightMax",                    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudHeightMin", "100"},
                                {"CloudHeightMax", "300"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HandInteractionLightIntensity",    "0"},
                                {"HandInteractionLightIntensityMax", "0"},
                                {"HandInteractionFresnel",           "0"},
                                {"HandInteractionFresnelMax",        "0"},
                                {"HandInteractionLightOffset",       "0"},
                                {"HandInteractionLightOffsetAt",     "0"},
                                {"HandInteractionLightTime",         "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}
