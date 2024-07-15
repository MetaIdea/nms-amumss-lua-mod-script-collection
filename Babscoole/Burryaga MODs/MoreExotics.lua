NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MoreExotics.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Royal", "50"}
                            }
                        },
                    }
                },
            }
        }
    }
}