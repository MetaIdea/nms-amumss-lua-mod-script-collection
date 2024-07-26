NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralEnvironments.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.1.1",
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
                                {"DetailScale",     "10"},
                                {"CloudDistortion", "24"},
                                {"MaxIterations",   "256"},
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