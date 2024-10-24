--Place MODELS folder from mod .pak into AMUMSS\ModScript\GlobalMEFTI for the ANIM files to be added

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_FlyLikeIronManV1.5FullPowerLimtedFuel.pak",
["MOD_AUTHOR"]    = "DooDooDevan",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.20",
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
                                {"TeleportRecentre",                    "False"},
                                {"JetpackUnderwaterDrainRate",          "0"},
                                {"JetpackUnderwaterFillRate",           "99999"},
                                {"UnderwaterMaxJetpackSpeed",           "20"},
                                {"UnderwaterJetpackForce",              "15"},
                                {"UnderwaterMaxJetpackEscapeSpeed",     "40"},
                                {"ShowLowAmmoWarning",                  "True"},
                                {"JetpackJetAnimateOutTime",            "-2"},
                                {"JetpackJetAnimateInTime",             "-2"},
                                {"FreeJetpackRange",                    "3"},
                                {"FreeJetpackRangePrime",               "3"},
                                {"FreeJetpackRangeNonTerrain",          "3"},
                                {"JetpackDrainHorizontalFactor",        "0.25"},
                                {"RocketBootsImpulse",                  "3"},
                                {"RocketBootsMinDesiredHeight",         "2"},
                                {"RocketBootsMaxDesiredHeight",         "6"},
                                {"RocketBootsHeightAdjustUpStrength",   "0.57"},
                                {"RocketBootsHeightAdjustDownStrength", "0.3"},
                                {"RocketBootsBoostTankDrainSpeed",      "6"},
                                {"RocketBootsDriftTankDrainSpeed",      "1"},
                                {"RocketBootsDriftDownwardForce",       "0.5"},
                                {"JetpackForce",                        "21"},
                                {"JetpackBrake",                        "9"},
                                {"JetpackMaxSpeed",                     "99"},
                                {"JetpackMaxUpSpeed",                   "99"},
                                {"JetpackUpForce",                      "27"},
                                {"JetpackFillRate",                     "0.3"},
                                {"JetpackFillRateMidair",               "0.3"},
                                {"SpaceJetpackForce",                   "9999"},
                                {"SpaceJetpackMaxSpeed",                "99"},
                                {"SpaceJetpackDrainRate",               "0.3"},
                                {"UpgradeExosuitWithProduct",           "True"},
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
                                {"Curve", "Squared"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMaxDistance", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterFallingCam", "GcCameraFollowSettings.xml"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpeedRange",                    "10"},
                                {"OffsetX",                       "0"},
                                {"BackMaxDistance",               "2"},
                                {"UpMaxDistance",                 "0"},
                                {"PanNear",                       "0"},
                                {"PanFar",                        "10"},
                                {"HorizRotationAngleMaxPerFrame", "10"},
                                {"DistSpeedOutsideMainRange",     "15"},
                                {"SpringSpeed",                   "0.07"},
                                {"CenterStartTime",               "2"},
                                {"CenterBlendTime",               "2"},
                                {"CenterMaxSpring",               "2.2"},
                                {"CenterMaxSpeed",                "2.8"},
                                {"VelocityAnticipate",            "0.17"},
                                {"VelocityAnticipateSpringSpeed", "0.4"},
                                {"UseSpeedBasedSpring",           "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}