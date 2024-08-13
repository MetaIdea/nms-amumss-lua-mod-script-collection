NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralEnvironments.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
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
                                {"WaterChangeTime",              "142"},
                                {"WaterConditionTransitionTime", "42"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CloudProperties", "GcCloudProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimationScale",  "18"},
                                {"DetailScale",     "12"},
                                {"CloudDistortion", "42"},
                                {"MaxIterations",   "384"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"EnvironmentProperties", "GcEnvironmentProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudHeightMin",            "525"},
                                {"CloudHeightMax",            "1000"},
                                {"PlanetObjectSwitch",        "800"},
                                {"PlanetLodSwitch0",          "400"},
                                {"PlanetLodSwitch0Elevation", "800"},
                                {"PlanetLodSwitch1",          "3000"},
                                {"PlanetLodSwitch2",          "20000"},
                                {"PlanetLodSwitch3",          "30000"},
                                {"AtmosphereStartHeight",     "525"},
                                {"StratosphereHeight",        "4200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"EnvironmentProperties", "GcEnvironmentProperties.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"SkyHeight"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Large",  "200"},
                                {"Medium", "900"},
                                {"Small",  "800"},
                                {"Moon",   "600"},
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
                    ["MBIN_FILE_SOURCE"] = "GCWATERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
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