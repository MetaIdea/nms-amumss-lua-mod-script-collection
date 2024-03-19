NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BLOB_BIOWEAPON-SnakeVaccinated.pak",
["MOD_AUTHOR"]    = "JustInNovel",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\BLOBRIG\BLOB.DESCRIPTOR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "_BODY_BLOB"},
                                {"Id", "_BODY_EYEBALLPLANT"},
                                {"Id", "_BODY_JELLY"},
                                {"Id", "_BODY_OCTO"},
                                {"Id", "_BODY_PLANT"},
                                {"Id", "_BODY_SHROOM"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        },
    }
}