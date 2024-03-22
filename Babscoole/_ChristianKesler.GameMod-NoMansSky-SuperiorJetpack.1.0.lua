NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "SuperiorJetpack.pak",
["MOD_AUTHOR"]    = "KnowOneActual",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.37",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TimeNotOnGroundToUseFallingCamera", "999999"},
                                {"TimeFallingUntilPanic",             "999999"},
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
                                {"JetpackUnderwaterDrainRate",            "0.1"},
                                {"JetpackUnderwaterFillRate",             "4"},
                                {"UnderwaterMaxJetpackSpeed",             "32"},
                                {"UnderwaterJetpackForce",                "64"},
                                {"UnderwaterMaxJetpackEscapeSpeed",       "32"},
                                {"UnderwaterJetpackEscapeForce",          "64"},
                                {"JetpackDrainHorizontalFactor",          "0.16"},
                                {"JetpackForce",                          "48"},
                                {"JetpackBrake",                          "4"},
                                {"JetpackMinLevel",                       "0.4"},
                                {"JetpackMaxSpeed",                       "64"},
                                {"JetpackMaxUpSpeed",                     "32"},
                                {"JetpackUpForce",                        "64"},
                                {"JetpackIgnitionForce",                  "100"},
                                {"JetpackIgnitionTime",                   "0.1"},
                                {"JetpackMinIgnitionTime",                "0.05"},
                                {"JetpackFillRate",                       "8"},
                                {"JetpackFillRateMidair",                 "8"},
                                {"JetpackFillRateSpaceStationMultiplier", "16"},
                                {"JetpackFillRateFleetMultiplier",        "8"},
                                {"JetpackFillRateNexusMultiplier",        "32"},
                                {"JetpackUpForceDeadPlanetExtra",         "32"},
                                {"JetpackForceDeadPlanetExtra",           "64"},
                                {"JetpackIgnitionForceDeadPlanetExtra",   "0"},
                                {"SpaceJetpackForce",                     "48"},
                                {"SpaceJetpackUpForce",                   "64"},
                                {"SpaceJetpackIgnitionForce",             "100"},
                                {"SpaceJetpackMaxSpeed",                  "64"},
                                {"SpaceJetpackDrainRate",                 "0.1"},
                                {"MaxFallSpeed",                          "16"},
                                {"GroundWalkSpeed",                       "2.2"},
                                {"GroundRunSpeed",                        "6"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "32"},
                                {"IGNORE", "64"},
                                {"IGNORE", "128"},
                            }
                        },
                    }
                },
            }
        },
    }
}