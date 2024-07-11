NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BuildCameraNoClip.pak",
["MOD_AUTHOR"]    = "Gumsk and Babscoole",
["NMS_VERSION"]   = "4.48",
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
                            ["SPECIAL_KEY_WORDS"] = {"BuildingIndoorsCam", "GcCameraFollowSettings.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnableCollisionDetection", "False"},
                            }
                        },
                    }
                },
            }
        },
    }
}
