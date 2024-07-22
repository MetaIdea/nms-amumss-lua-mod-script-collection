NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "HiddenCapeAttachment.pak",
["MOD_AUTHOR"]    = "Wavermack",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\CAPEATTACHMAT.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class",      "Transparent"},
                                {"CastShadow", "False"},
                            }
                        },
                    }
                },
            }
        }
    }
}