NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstrosNPCSitStill.pak",
["MOD_AUTHOR"]    = "AstronautinOrbit",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.84",
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
                                {"NPCUseBehaviourTree", "False"}
                            }
                        },
                    }
                },
            }
        }
    }
}