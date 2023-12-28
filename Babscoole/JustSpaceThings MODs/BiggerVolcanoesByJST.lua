NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "JustSpaceThings_Volcanoes2023.pak",
["MOD_AUTHOR"]    = "JustSpaceThings",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.38",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVAOBJECTSFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "8"},   -- Original "3"
                                {"MaxScaleY", "2"},   -- Original "1"
                                {"Coverage",  "0.4"}, -- Original "0.2"
                            }
                        }
                    }
                }
            }
        }
    }
}