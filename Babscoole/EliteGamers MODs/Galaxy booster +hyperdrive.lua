NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Galaxy booster +hyperdrive.pak",
["MOD_AUTHOR"]              = "EliteGamers",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.08",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CameraFOV",                    "130"},
                                {"MovementBlendRateFree",        "7"},
                                {"FreePanSpeed",                 "10.8"},
                                {"FreePanSpeedTurbo",            "12.75"},
                                {"FreeUpDownSpeed",              "7.8"},
                                {"FreeUpDownSpeedTurbo",         "8.75"},
                                {"FreeRotateSpeed",              "10.5"},
                                {"FreeElevationBlendRate",       "10.9"},
                                {"ZoomOutSpin",                  "10.1"},
                                {"ZoomOutPushDist",              "10.8"},
                                {"ZoomOutRate",                  "10.4"},
                                {"ZoomInRate",                   "13"},
                                {"MaxZoomDistance",              "200"},
                                {"MinPushingZoomDistance",       "55"},
                                {"MinPushingZoomDistanceScaler", "25"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","MIRROR",},
							["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID", "MAGNET"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StatsType","Ship_Hyperdrive_JumpDistance",},
							["SECTION_ACTIVE"] = {1,2},
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StatsType","Freighter_Hyperdrive_JumpDistance",},
							["SECTION_ACTIVE"] = 1,
							["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1000000"},
                            }
                        },
                    }
                },
            }
        },
    }
}
