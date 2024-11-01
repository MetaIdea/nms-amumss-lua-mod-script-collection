NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "noMansSkyFarShipHud.pak",
["MOD_AUTHOR"]    = "hhliow",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.22",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShowVRDistanceWarning", "False"},
                                {"CrosshairScaleHmd",     "70"},
                                {"CrosshairOffsetHmd",    "400"},
                            }
                        },
                    }
                },
            }
        },
    }
}