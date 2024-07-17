NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "BetterCameras.pak",
["MOD_AUTHOR"]              = "Burryaga",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.70",
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
                            ["SPECIAL_KEY_WORDS"] = {"FreighterCustomisationStandardCamera", "TkModelRendererData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                 {"Distance", "50"},
                                {"Pitch",     "30"},
                                {"Fov",       "90"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"VehicleCamHmd", "GcCameraFollowSettings.xml"},
                                {"VehicleCam", "GcCameraFollowSettings.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",         "4"},
                                {"BackMinDistance", "20.2"},
                                {"BackMaxDistance", "26"},
                                {"VertRotationMin", "-89.5"},
                                {"VertRotationMax", "89.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnarmedCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanNear",              "0"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRunCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanNear",              "0"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterIndoorCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "0.1"},
                                {"BackMinDistance",    "5.2"},
                                {"BackMaxDistance",    "6"},
                                {"PanNear",            "0"},
                                {"PanFar",             "0"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAbandCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0.4"},
                                {"OffsetY",            "0.1"},
                                {"BackMinDistance",    "5.2"},
                                {"BackMaxDistance",    "6"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAbandCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0.4"},
                                {"OffsetY",            "0.1"},
                                {"BackMinDistance",    "5.2"},
                                {"BackMaxDistance",    "6"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterNexusCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "0.1"},
                                {"BackMinDistance",    "5.2"},
                                {"BackMaxDistance",    "6"},
                                {"PanNear",            "0"},
                                {"PanFar",             "0"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterMeleeBoostCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanNear",              "0"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsChargeCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanNear",              "0"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterFallingCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanNear",              "0"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterSpaceCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnderwaterJetpackCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterSitCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",              "0"},
                                {"OffsetY",              "0.9"},
                                {"BackMinDistance",      "7.2"},
                                {"BackMaxDistance",      "8"},
                                {"PanNear",              "0"},
                                {"PanFar",               "0"},
                                {"VertRotationMin",      "-89.5"},
                                {"VertRotationMax",      "89.5"},
                                {"VertRotationOffset",   "0"},
                                {"PushForwardDropoffLR", "0"},
                                {"PushForwardDropoffUD", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamMedium", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamLarge", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "5"},
                                {"BackMinDistance",    "40.2"},
                                {"BackMaxDistance",    "46"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRideCamHuge", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "5"},
                                {"BackMinDistance",    "40.2"},
                                {"BackMaxDistance",    "46"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuggyFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HovercraftFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BikeFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WheeledBikeFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0"},
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechCombatCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0"},
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MechJetpackCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetX",            "0"},
                                {"OffsetY",            "4"},
                                {"BackMinDistance",    "20.2"},
                                {"BackMaxDistance",    "26"},
                                {"VertRotationMin",    "-89.5"},
                                {"VertRotationMax",    "89.5"},
                                {"VertRotationOffset", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceshipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "7"},
                                {"BackMinDistance",     "34"},
                                {"BackMaxDistance",     "36"},
                                {"VertRotationMax",     "14"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DropshipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "7"},
                                {"BackMinDistance",     "34"},
                                {"BackMaxDistance",     "36"},
                                {"VertRotationMax",     "20"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShuttleFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "7"},
                                {"BackMinDistance",     "34"},
                                {"BackMaxDistance",     "36"},
                                {"VertRotationMax",     "14"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoyalShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "14"},
                                {"BackMinDistance",     "36"},
                                {"BackMaxDistance",     "38"},
                                {"VertRotationMax",     "13"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SailShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "7"},
                                {"BackMinDistance",     "34"},
                                {"BackMaxDistance",     "36"},
                                {"VertRotationMax",     "14"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScienceShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "7"},
                                {"BackMinDistance",     "34"},
                                {"BackMaxDistance",     "36"},
                                {"VertRotationMax",     "14"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "7"},
                                {"BackMinDistance",     "34"},
                                {"BackMaxDistance",     "36"},
                                {"VertRotationMax",     "20"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RobotShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetY",             "7"},
                                {"BackMinDistance",     "34"},
                                {"BackMaxDistance",     "36"},
                                {"VertRotationMax",     "20"},
                                {"CenterMaxSpring",     "150"},
                                {"LookStickLimitAngle", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"OffsetCamRotation", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarpSettings", "GcCameraWarpSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetZStartBias", "-10"},
                                {"OffsetZBias",      "-10"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpecialVehicleMouseRecentreTime", "0.1"},
                                {"PhotoModeMaxDistance",            "750"},
                                {"BuildingModeMaxDistance",         "180"},
                                {"ThirdPersonFoV",                  "80"},
                            }
                        },
                    }
                }
            }
        }
    }
}