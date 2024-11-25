NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "nmmotion.pak",
["MOD_AUTHOR"]    = "Draymunker and Fuch",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.28",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LoadingTravelDistance",    "0.025"},
                                {"LoadingScreenTravelSpeed", "0.025"},
                                {"LoadingScreenTime",        "0.001"},
                            }
                        },
                    }
                },
            }
        }
    }
}