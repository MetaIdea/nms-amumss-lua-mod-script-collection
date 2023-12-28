NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NoMansStroll1.4Walk5Run [Interceptor].pak",
["MOD_AUTHOR"]      = "Dr Kaii",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.15",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed", "1.4"},
                                {"GroundRunSpeed",  "5"},
                            }
                        },
                    }
                }
            }
        }
    }
}