NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "JSTBiggerVolcanoes.pak",
["MOD_AUTHOR"]    = "JustSpaceThings",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
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
                            }
                        }
                    }
                }
            }
        }
    }
}