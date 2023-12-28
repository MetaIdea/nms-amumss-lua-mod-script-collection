NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_NoSpaceRocks.pak",
["MOD_AUTHOR"]    = "Bookworm",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.25",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetInvalidAsteroidZone", "1000000"},
                            }
                        },
                    }
                }
            }
        }
    }
}
