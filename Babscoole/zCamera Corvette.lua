NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "zCamera Corvette",
["MOD_AUTHOR"]      = "JMZ",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.17",
["MOD_DESCRIPTION"] = "zCamera Corvette is for players who like to build BIG Corvettes and fly in 3rd Person. It moves the camera back so you can see the whole Corvette while flying.",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CorvetteFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",            "200.000000"},
                                {"SpeedRange",          "600.000000"},
                                {"OffsetX",             "0.000000"},
                                {"OffsetY",             "18.000000"},
                                {"OffsetYMinSpeed",     "6.000000"},
                                {"BackMinDistance",     "56.000000"},
                                {"BackMaxDistance",     "80.000000"},
                                {"LookStickLimitAngle", "125.000000"},
                            }
                        },
                    }
                },
            }
        },
    }
}
