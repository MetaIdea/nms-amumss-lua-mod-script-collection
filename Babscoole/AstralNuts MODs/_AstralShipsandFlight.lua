NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralShipsandFlight.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",          "0"},
                                {"AutoLevelMinAngle", "0"}
                            }
                        },
                    }
                },
            }
        }
    }
}