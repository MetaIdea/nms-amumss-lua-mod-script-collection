NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.UnrestrictedCamera.12.1.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.72",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhotoModeMaxDistance",      "999999"},
                                {"PhotoModeMaxDistanceSpace", "999999"},
                                {"BuildingModeMaxDistance",   "999999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuildingIndoorsCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BackMaxDistance", "999999"},
                                {"UpMaxDistance",   "999999"},
                                {"LeftMaxDistance", "999999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuildingOutdoorsCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpeedRange",      "100"},
                                {"BackMaxDistance", "999999"},
                                {"UpMaxDistance",   "999999"},
                                {"LeftMaxDistance", "999999"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuildingUnderwaterCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpeedRange",      "100"},
                                {"BackMaxDistance", "999999"},
                                {"UpMaxDistance",   "999999"},
                                {"LeftMaxDistance", "999999"},
                            }
                        },
                    }
                },
            }
        }
    }
}