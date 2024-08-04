--Place MODELS folder from mod .pak into AMUMSS\ModScript\GlobalMEFTI for the ANIM files to be added

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_FlyLikeIronMan V1.1 (Half Power).pak",
["MOD_AUTHOR"]    = "DooDooDevan",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
["MODIFICATIONS"] =
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
                                {"TeleportRecentre",                    "True"},
                                {"JetpackUnderwaterDrainRate",          "0"},
                                {"JetpackUnderwaterFillRate",           "99999"},
                                {"UnderwaterMaxJetpackSpeed",           "20"},
                                {"UnderwaterJetpackForce",              "15"},
                                {"UnderwaterMaxJetpackEscapeSpeed",     "40"},
                                {"ShowLowAmmoWarning",                  "False"},
                                {"JetpackJetAnimateOutTime",            "-2"},
                                {"JetpackJetAnimateInTime",             "-2"},
                                {"FreeJetpackRange",                    "999"},
                                {"FreeJetpackRangePrime",               "999"},
                                {"FreeJetpackRangeNonTerrain",          "999"},
                                {"JetpackDrainHorizontalFactor",        "-99"},
                                {"RocketBootsMinDesiredHeight",         "10"},
                                {"RocketBootsMaxDesiredHeight",         "10"},
                                {"RocketBootsHeightAdjustUpStrength",   "20"},
                                {"RocketBootsHeightAdjustDownStrength", "-20"},
                                {"RocketBootsBoostTankDrainSpeed",      "0"},
                                {"RocketBootsDriftTankDrainSpeed",      "0"},
                                {"RocketBootsDriftDownwardForce",       "20"},
                                {"JetpackForce",                        "21"},
                                {"JetpackBrake",                        "8"},
                                {"JetpackMaxSpeed",                     "25"},
                                {"JetpackMaxUpSpeed",                   "25"},
                                {"JetpackUpForce",                      "27"},
                                {"JetpackFillRate",                     "9999"},
                                {"JetpackFillRateMidair",               "99999"},
                                {"SpaceJetpackForce",                   "9999"},
                                {"SpaceJetpackMaxSpeed",                "99"},
                                {"SpaceJetpackDrainRate",               "0"},
                                {"UpgradeExosuitWithProduct",           "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"StickCurve",          "TkCurveType.xml"},
                                {"WeaponBobBlendCurve", "TkCurveType.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Curve", "SmoothInOut"},
                            }
                        },
                    }
                },
            }
        }
    }
}