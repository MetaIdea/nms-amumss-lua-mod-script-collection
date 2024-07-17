NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NerfedBuildCam.pak",
["MOD_AUTHOR"]    = "Vulkan1k",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.91",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhotoModeMoveSpeed",       "3"},
                                {"PhotoModeCollisionRadius", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}