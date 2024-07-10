NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "IAH - QuickJourneyMilestones.pak",
["MOD_AUTHOR"]    = "PCMystic",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"StatId", "DIST_WALKED"},
                                {"StatId", "ALIENS_MET"},
                                {"StatId", "WORDS_LEARNT"},
                                {"StatId", "MONEY"},
                                {"StatId", "ENEMIES_KILLED"},
                                {"StatId", "SENTINEL_KILLS"},
                                {"StatId", "LONGEST_LIFE_EX"},
                                {"StatId", "DIST_WARP"},
                                {"StatId", "DISC_ALL_CREATU"},
                                {"StatId", "TUTORIAL"},
                                {"StatId", "PIRATES_KILLED"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StatMessageType", "Quick"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\STATS\LEVELEDSTATSTABLESURVIVALMODE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"StatId", "DIST_WALKED"},
                                {"StatId", "ALIENS_MET"},
                                {"StatId", "WORDS_LEARNT"},
                                {"StatId", "MONEY"},
                                {"StatId", "ENEMIES_KILLED"},
                                {"StatId", "SENTINEL_KILLS"},
                                {"StatId", "LONGEST_LIFE_EX"},
                                {"StatId", "DIST_WARP"},
                                {"StatId", "DISC_ALL_CREATU"},
                                {"StatId", "TUTORIAL"},
                                {"StatId", "PIRATES_KILLED"},
                                {"StatId", "PROC_PRODS"},
                                {"StatId", "FIENDS_KILLED"},
                                {"StatId", "DISC_FLORA"},
                                {"StatId", "NANITES_EVER"},
                                {"StatId", "SMUGGLE_VALUE"},
                                {"StatId", "WALKERS_KILLED"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StatMessageType", "Quick"}
                            }
                        },
                    }
                },                
            }
        }
    }
}