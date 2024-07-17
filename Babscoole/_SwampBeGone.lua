NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_SwampBeGone.pak",
["MOD_AUTHOR"]    = "drkaii",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.68",
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
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/SWAMP/SWAMPBIOME.MXML"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weight", "0"}
                            }
                        },
                    }
                },
            }
        }
    }
}