NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Bodie420.LaddersDontGrab.10.0.pak",
["MOD_AUTHOR"]    = "Bodie420",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LadderDistanceToAutoMount", "-1"}
                            }
                        },
                    }
                },
            }
        }
    }
}