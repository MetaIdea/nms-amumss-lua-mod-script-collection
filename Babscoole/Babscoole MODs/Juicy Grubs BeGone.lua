NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Juicy Grubs BeGone",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Removes Titan burrow spawns from Infested planets",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\RARE\BUGGRUBS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DebugName", "GRUBS"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}