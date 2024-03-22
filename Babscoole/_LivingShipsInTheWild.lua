NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_LivingShipsInTheWild.pak",
["MOD_DESCRIPTION"] = "allows you to find living ships in the wild",
["MOD_AUTHOR"]      = "Fartbottum10",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "3.91",
["MODIFICATIONS"]   =
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
                                {"Alien", "50"},
                            },
                        },
                    }
                }
            }
        }
    }
}