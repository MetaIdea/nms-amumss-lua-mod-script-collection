NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Unlimited Camera Fractals.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.12",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuildingOutdoorsCam", "GcCameraFollowSettings.xml"},
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpeedRange",      "50"},
                                {"UpMinDistance",   "1E+15"},
                                {"UpMaxDistance",   "0"},
                                {"LeftMaxDistance", "1E+15"},
                            }
                        },
                        {
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhotoModeMaxDistance",      "15000000"},
                                {"PhotoModeMaxDistanceSpace", "2E+09"},
                                {"PhotoModeCollisionRadius",  "0"},
                                {"BuildingModeMaxDistance",   "2E+09"},
                            }
                        },
                    }
                },
            }
        },
    }
}
