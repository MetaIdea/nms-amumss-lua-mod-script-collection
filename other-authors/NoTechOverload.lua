NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "_NoTechOverload.pak",
    ["MOD_AUTHOR"]      = "jesuschrist",
    ["LUA_AUTHOR"]      = "jesuschrist",	
    ["NMS_VERSION"]     = "3.91",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {

                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MaxNumSameGroupTech","999"}
                            },
                        },
                    }
                }
            }
        }
    }
}