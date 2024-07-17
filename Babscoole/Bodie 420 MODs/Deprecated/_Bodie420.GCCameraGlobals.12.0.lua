NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.GCCameraGlobals.12.0.pak",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["MOD_VERSION"]     = "2.0",
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
                            ["PRECEDING_KEY_WORDS"] = {"Cameras", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",   "0"},
                                {"SpeedRange", "200"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhotoModeMaxDistance",      "999999"},
                                {"PhotoModeMaxDistanceSpace", "999999"},
                                {"BuildingModeMaxDistance",   "999999"},
                            }
                        },
                    }
                }
            }
        }
    }
}