NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "__Jetpack_Super_Turbo_INTERCEPTOR.pak",
["MOD_AUTHOR"]      = "Tuz1971",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.15",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed",                     "5"},
                                {"GroundRunSpeed",                      "10"},
                                {"JetpackUnderwaterFillRate",           "3"},
                                {"JetpackDrainHorizontalFactor",        "0.5"},
                                {"JetpackForce",                        "61"},
                                {"JetpackBrake",                        "3.5"},
                                {"JetpackMaxSpeed",                     "20"},
                                {"JetpackMaxUpSpeed",                   "55"},
                                {"JetpackUpForce",                      "55"},
                                {"JetpackIgnitionForce",                "100"},
                                {"JetpackIgnitionTime",                 "0.1"},
                                {"JetpackFillRate",                     "10"},
                                {"JetpackFillRateMidair",               "10"},
                                {"JetpackUpForceDeadPlanetExtra",       "25"},
                                {"JetpackForceDeadPlanetExtra",         "50"},
                                {"JetpackIgnitionForceDeadPlanetExtra", "75"},
                                {"MaximumHorizontalOffsetVR",           "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["LINE_OFFSET"] = "+2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "40"},
                            }
                        },
                    }
                }
            }
        }
    }
}