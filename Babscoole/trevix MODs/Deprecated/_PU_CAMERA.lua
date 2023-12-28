NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_PU_CAMERA.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.38",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"VehicleCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PanNear", "-12"},
                                {"PanFar",  "-12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechFirstPersonCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PanNear", "-20"},
                                {"PanFar",  "-20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnarmedCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",                      "4"},
                                {"SpeedRange",                    "20"},
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "1"},
                                {"BackMinDistance",               "10"},
                                {"BackMaxDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"SpringSpeed",                   "0.18"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRunCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",                      "4"},
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "1"},
                                {"BackMinDistance",               "10"},
                                {"BackMaxDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"SpringSpeed",                   "0.08"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0.8"},
                                {"OffsetY",                       "-0.7"},
                                {"BackMinDistance",               "2"},
                                {"BackMaxDistance",               "3"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterMiningCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0.8"},
                                {"OffsetY",                       "-0.7"},
                                {"BackMaxDistance",               "3"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterIndoorCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0.8"},
                                {"OffsetY",                       "-0.7"},
                                {"BackMinDistance",               "2"},
                                {"BackMaxDistance",               "3"},
                                {"PanNear",                       "-2"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"SpringSpeed",                   "0.1"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpring",               "0.1"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseSpeedBasedSpring",           "False"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAbandCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0.8"},
                                {"OffsetY",            "-0.7"},
                                {"BackMinDistance",    "2"},
                                {"BackMaxDistance",    "3"},
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAbandCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0.8"},
                                {"OffsetY",            "-0.1"},
                                {"BackMaxDistance",    "3"},
                                {"SpringSpeed",        "0.1"},
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterNexusCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",                      "10"},
                                {"SpeedRange",                    "1"},
                                {"OffsetX",                       "0.8"},
                                {"OffsetY",                       "-0.7"},
                                {"BackMinDistance",               "2"},
                                {"BackMaxDistance",               "3"},
                                {"PanNear",                       "-2"},
                                {"PanFar",                        "-1"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"SpringSpeed",                   "0.1"},
                                {"CenterStartTime",               "120"},
                                {"CenterBlendTime",               "1"},
                                {"CenterMaxSpring",               "0.1"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseSpeedBasedSpring",           "False"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "1"},
                                {"BackMinDistance",               "10"},
                                {"BackMaxDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterMeleeBoostCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "1"},
                                {"BackMinDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",         "0"},
                                {"OffsetY",         "1"},
                                {"BackMinDistance", "10"},
                                {"BackMaxDistance", "10"},
                                {"CustomBlendTime", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsChargeCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CustomBlendTime", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterFallingCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0"},
                                {"OffsetY",            "1"},
                                {"BackMinDistance",    "10"},
                                {"BackMaxDistance",    "10"},
                                {"CenterStartTime",    "120"},
                                {"CenterMaxSpeed",     "0"},
                                {"CenterStartSpeed",   "0"},
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "-0.7"},
                                {"BackMinDistance",               "10"},
                                {"BackMaxDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterSpaceCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "1"},
                                {"BackMinDistance",               "10"},
                                {"BackMaxDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterSteepSlopeCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "1"},
                                {"BackMinDistance",               "10"},
                                {"BackMaxDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",                       "0"},
                                {"OffsetY",                       "1"},
                                {"BackMinDistance",               "10"},
                                {"BackMaxDistance",               "10"},
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterJetpackCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterGrabbedCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CustomBlendTime", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterSitCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HorizRotationAngleMaxPerFrame", "0"},
                                {"CenterStartTime",               "120"},
                                {"CenterMaxSpeed",                "0"},
                                {"CenterStartSpeed",              "0"},
                                {"UseCustomBlendTime",            "True"},
                                {"CustomBlendTime",               "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime",    "120"},
                                {"CenterMaxSpeed",     "0"},
                                {"CenterStartSpeed",   "0"},
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamMedium", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime",    "120"},
                                {"CenterMaxSpeed",     "0"},
                                {"CenterStartSpeed",   "0"},
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamLarge", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime",    "120"},
                                {"CenterMaxSpeed",     "0"},
                                {"CenterStartSpeed",   "0"},
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamHuge", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime",    "120"},
                                {"CenterMaxSpeed",     "0"},
                                {"CenterStartSpeed",   "0"},
                                {"UseCustomBlendTime", "True"},
                                {"CustomBlendTime",    "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceshipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "3.25"},
                                {"OffsetYSlopeExtra",   "1.5"},
                                {"BackMaxDistance",     "30"},
                                {"UpMinDistance",       "6"},
                                {"UpMaxDistance",       "15"},
                                {"VelocityAnticipate",  "0.07"},
                                {"LookStickLimitAngle", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DropshipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "3.25"},
                                {"OffsetYSlopeExtra",   "1.5"},
                                {"BackMinDistance",     "20"},
                                {"BackMaxDistance",     "30"},
                                {"UpMinDistance",       "6"},
                                {"UpMaxDistance",       "15"},
                                {"VelocityAnticipate",  "0.07"},
                                {"LookStickLimitAngle", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShuttleFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "4"},
                                {"BackMinDistance",     "20"},
                                {"BackMaxDistance",     "20"},
                                {"UpMinDistance",       "6"},
                                {"UpMaxDistance",       "15"},
                                {"LookStickLimitAngle", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoyalShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "3.25"},
                                {"OffsetYSlopeExtra",   "1.5"},
                                {"BackMinDistance",     "20"},
                                {"BackMaxDistance",     "30"},
                                {"UpMinDistance",       "6"},
                                {"UpMaxDistance",       "15"},
                                {"VelocityAnticipate",  "0.07"},
                                {"LookStickLimitAngle", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SailShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name",                       "SPACESHIP"},
                                {"SpeedRange",                 "200"},
                                {"OffsetY",                    "3.25"},
                                {"OffsetYAlt",                 "0"},
                                {"OffsetYSlopeExtra",          "1.5"},
                                {"OffsetZFlat",                "3"},
                                {"BackMinDistance",            "20"},
                                {"BackMaxDistance",            "30"},
                                {"UpMinDistance",              "6"},
                                {"UpMaxDistance",              "15"},
                                {"PanNear",                    "-2"},
                                {"PanFar",                     "-4"},
                                {"VertRotationOffset",         "14"},
                                {"VertRotationOffsetMinAngle", "-30"},
                                {"VertRotationOffsetMaxAngle", "30"},
                                {"VelocityAnticipate",         "0.07"},
                                {"LookStickLimitAngle",        "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScienceShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "3.25"},
                                {"OffsetYSlopeExtra",   "1.5"},
                                {"BackMinDistance",     "20"},
                                {"BackMaxDistance",     "30"},
                                {"UpMinDistance",       "6"},
                                {"UpMaxDistance",       "15"},
                                {"VelocityAnticipate",  "0.07"},
                                {"LookStickLimitAngle", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "3.25"},
                                {"OffsetYSlopeExtra",   "1.5"},
                                {"BackMinDistance",     "20"},
                                {"UpMinDistance",       "6"},
                                {"UpMaxDistance",       "15"},
                                {"VelocityAnticipate",  "0.07"},
                                {"LookStickLimitAngle", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RobotShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Name",                "SPACESHIP"},
                                {"OffsetY",             "3.25"},
                                {"OffsetYSlopeExtra",   "1.5"},
                                {"OffsetZFlat",         "3"},
                                {"BackMinDistance",     "20"},
                                {"BackMaxDistance",     "30"},
                                {"UpMinDistance",       "6"},
                                {"UpMaxDistance",       "15"},
                                {"PanNear",             "-2"},
                                {"PanFar",              "-4"},
                                {"VertRotationOffset",  "14"},
                                {"VelocityAnticipate",  "0.07"},
                                {"LookStickLimitAngle", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShopInteractionOffsetExtraVR", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"z", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShopInteractionOffsetExtraVRSeated", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"z", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"PhotoModeVRFPOffset", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0"},
                                {"z", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCameraShakeData.xml"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VRStrength", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATMOSPHERESHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShakeStrength",    "0.005"},
                                {"ShakeFrequency",   "4"},
                                {"VibrateFrequency", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATMOSPHERESHAKE", "ShakeStrength", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.006"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATMOSPHERESHAKE", "ShakeFrequency", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "2"},
                                {"y", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATMOSPHERESHAKE", "ExtraShakeFrequency", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "4"},
                                {"y", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CameraCreatureCustomiseFront", "TkModelRendererData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Rotate", "183.04016"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CameraCreatureCustomiseBack", "TkModelRendererData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Pitch", "21.960007"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarpSettings", "GcCameraWarpSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetZStartBias", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FreighterWarpSettings", "GcCameraWarpSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetZFrequency_1", "1.1"},
                                {"OffsetZFrequency_2", "0.9"},
                                {"OffsetZStartBias",   "10"},
                                {"OffsetZBias",        "-7"},
                                {"OffsetYFrequency_1", "1.1"},
                                {"OffsetYFrequency_2", "0.9"},
                                {"OffsetXFrequency",   "0.25"},
                                {"RollRange",          "1"},
                                {"YawnRange",          "600"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinFirstPersonCameraPitch",        "80"},
                                {"MaxFirstPersonCameraPitch",        "89"},
                                {"FrigateCaptainLateralShiftAmount", "0"},
                                {"PilotDetailsLateralShiftAmount",   "0"},
                                {"RunningFoVAdjust",                 "0"},
                                {"MeleeBoostedFoV",                  "70"},
                                {"AerialViewPause",                  "0"},
                                {"VRShakeMultiplier",                "1.2"},
                                {"BobAmountAbandFreighter",          "0.09"},
                                {"BobFactorAbandFreighter",          "0.21"},
                                {"BobAmount",                        "0.09"},
                                {"BobFactor",                        "0.21"},
                            }
                        },
                    }
                }
            }
        }
    }
}