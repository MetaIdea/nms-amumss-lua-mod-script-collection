NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "UnderwaterCreepy.pak",
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
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "UNDERGROUND"},
                                {"Name", "UNDERWATER"},
                                {"Name", "MOUNTAIN"},
                                {"Name", "CRYSTALSCAVE"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/UNDERWATER/UNDERWATERCREEPY.MBIN"}
                            }
                        },
                    }
                },
            }
        }
    }
}