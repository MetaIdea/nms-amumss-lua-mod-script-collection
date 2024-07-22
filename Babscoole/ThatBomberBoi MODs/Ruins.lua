NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Ruins.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BiomeFiles"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/RUINS/RUINSBIOME.MBIN"}
                            }
                        },
                    }
                },
            }
        }
    }
}