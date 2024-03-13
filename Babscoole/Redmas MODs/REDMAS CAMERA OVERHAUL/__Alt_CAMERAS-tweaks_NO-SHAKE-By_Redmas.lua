NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "__Alt_CAMERAS-tweaks_NO-SHAKE-By_Redmas.pak",
["MOD_DESCRIPTION"]         = "Overhaul of all the cameras-No Shake",
["MOD_AUTHOR"]              = "Redmas",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "3.99",
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
                            ["SPECIAL_KEY_WORDS"] = {"CharacterUnarmedCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "4.2"},
                                {"BackMaxDistance", "5.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRunCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "3.5"},
                                {"BackMaxDistance", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterAirborneCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "3.5"},
                                {"BackMaxDistance", "17.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterMeleeBoostCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "8.5"},
                                {"BackMaxDistance", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "8.5"},
                                {"BackMaxDistance", "12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterRocketBootsChargeCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "8.5"},
                                {"BackMaxDistance", "15.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterSpaceCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "2"},
                                {"BackMaxDistance", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CharacterGrabbedCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance", "1.5"},
                                {"BackMaxDistance", "5.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuggyFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "3.8"},
                                {"BackMinDistance", "3"},
                                {"BackMaxDistance", "5"},
                                {"UpMinDistance",   "0"},
                                {"UpMaxDistance",   "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HovercraftFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",   "10"},
                                {"OffsetY",    "3.8"},
                                {"OffsetYAlt", "5"},
                                {"PanNear",    "-1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SubmarineFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "3.8"},
                                {"OffsetZFlat",     "-2.5"},
                                {"BackMinDistance", "8"},
                                {"BackMaxDistance", "18.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BikeFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "3.8"},
                                {"OffsetYAlt",      "3.8"},
                                {"OffsetZFlat",     "0.5"},
                                {"BackMinDistance", "8"},
                                {"BackMaxDistance", "18"},
                                {"UpMinDistance",   "0"},
                                {"UpMaxDistance",   "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WheeledBikeFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "0.9"},
                                {"BackMinDistance", "5"},
                                {"BackMaxDistance", "13"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TruckFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",        "10"},
                                {"SpeedRange",      "15"},
                                {"OffsetY",         "3.8"},
                                {"OffsetZFlat",     "1.5"},
                                {"BackMinDistance", "2"},
                                {"BackMaxDistance", "8"},
                                {"UpMinDistance",   "0"},
                                {"UpMaxDistance",   "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpaceshipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",            "0"},
                                {"BackMaxDistance",            "100"},
                                {"UpMinDistance",              "12"},
                                {"UpMaxDistance",              "80"},
                                {"VertRotationMin",            "-380"},
                                {"VertRotationMax",            "380"},
                                {"VertRotationOffsetMinAngle", "-380"},
                                {"VertRotationOffsetMaxAngle", "380"},
                                {"LookStickLimitAngle",        "115"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DropshipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",            "8"},
                                {"BackMaxDistance",            "80"},
                                {"UpMinDistance",              "12"},
                                {"UpMaxDistance",              "80"},
                                {"VertRotationMin",            "-380"},
                                {"VertRotationMax",            "380"},
                                {"VertRotationOffsetMinAngle", "-380"},
                                {"VertRotationOffsetMaxAngle", "380"},
                                {"LookStickLimitAngle",        "115"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShuttleFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",            "2"},
                                {"BackMaxDistance",            "90"},
                                {"UpMinDistance",              "5"},
                                {"UpMaxDistance",              "80"},
                                {"VertRotationMin",            "-380"},
                                {"VertRotationMax",            "380"},
                                {"VertRotationOffsetMinAngle", "-380"},
                                {"VertRotationOffsetMaxAngle", "380"},
                                {"LookStickLimitAngle",        "115"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RoyalShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",            "0"},
                                {"BackMaxDistance",            "80"},
                                {"UpMinDistance",              "12"},
                                {"UpMaxDistance",              "80"},
                                {"VertRotationMin",            "-380"},
                                {"VertRotationMax",            "380"},
                                {"VertRotationOffsetMinAngle", "-380"},
                                {"VertRotationOffsetMaxAngle", "380"},
                                {"LookStickLimitAngle",        "115"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SailShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",            "0"},
                                {"BackMaxDistance",            "80"},
                                {"UpMinDistance",              "12"},
                                {"UpMaxDistance",              "80"},
                                {"VertRotationMin",            "-380"},
                                {"VertRotationMax",            "380"},
                                {"VertRotationOffsetMinAngle", "-380"},
                                {"VertRotationOffsetMaxAngle", "380"},
                                {"LookStickLimitAngle",        "115"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ScienceShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",            "5"},
                                {"BackMaxDistance",            "70"},
                                {"UpMinDistance",              "12"},
                                {"UpMaxDistance",              "80"},
                                {"VertRotationMin",            "-380"},
                                {"VertRotationMax",            "380"},
                                {"VertRotationOffsetMinAngle", "-380"},
                                {"VertRotationOffsetMaxAngle", "380"},
                                {"LookStickLimitAngle",        "115"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienShipFollowCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMinDistance",            "2"},
                                {"BackMaxDistance",            "60"},
                                {"UpMinDistance",              "12"},
                                {"VertRotationMin",            "-380"},
                                {"VertRotationMax",            "380"},
                                {"VertRotationOffsetMinAngle", "-380"},
                                {"VertRotationOffsetMaxAngle", "380"},
                                {"LookStickLimitAngle",        "115"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FirstPersonFoV",  "85"},
                                {"ThirdPersonFoV",  "100"},
                                {"ShipFoVMiniJump", "125"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarpSettings", "GcCameraWarpSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FocusPointDist",   "1E+09"},
                                {"OffsetZStartBias", "100"},
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
                                {"YawRange",           "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ROCKHIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MELEE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MELEE_HIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ATMOSPHERESHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SPEEDSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "THRUSTSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BOOSTSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CRASHING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WARPSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SHOOTABLESHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SMALLPAINSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EXPLOSIONPAINSH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LAND"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "JETPACK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "ROCKETBOOTS"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "STORMSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LASERSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GRENADESHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SHOOTSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "GUNSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SHIPLASERSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SHIPSHOOTSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WALKERWALK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WALKERSTANDUP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "DOCKINGSHAKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "WARP_FRT_ATMOS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LARGECREATUREWA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "RUNNING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "TELEPORTATLASSH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FLYBY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "PORTALOPEN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SLOWRUMBLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VENTBUILDUP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VENTEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "EXTRACTOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime",       "0.001"},
                                {"DecayRate",       "3"},
                                {"StrengthScale",   "8"},
                                {"ThirdPersonDamp", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECHTITANFALL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECHLAND"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SANDWORMEMERGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LIGHTNINGSTRIKE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TotalTime", "0.001"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "FREIGHTERLIFT"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "LIVE_FRG_DEVOUR"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                }
            }
        }
    }
}