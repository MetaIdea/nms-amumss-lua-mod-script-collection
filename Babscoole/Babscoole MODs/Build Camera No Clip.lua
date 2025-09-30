NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Build Camera No Clip",
["MOD_AUTHOR"]      = "Gumsk and Babscoole",
["NMS_VERSION"]     = "4.48",
["MOD_DESCRIPTION"] = "Removes build camera clipping",
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
                            ["SPECIAL_KEY_WORDS"] = {"BuildingIndoorsCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnableCollisionDetection", "false"},
                            }
                        },
                    }
                },
            }
        },
    }
}
