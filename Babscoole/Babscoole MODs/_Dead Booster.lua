NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Dead Booster",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.73",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dead", "1000001"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "LifeChance",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dead", "1000000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "AbandonedLifeChance",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dead", "1000000"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ConvertDeadToWeird", "0.05"},
                            }
                        },
                    }
                }
            }
        }
    }
}