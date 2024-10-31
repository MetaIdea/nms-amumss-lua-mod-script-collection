NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Keep Talking Polo E7.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Keep Talking Polo E7 makes Polo's Expedition 7 Leviathan dialogue stay open when turning in Liquid Sun, Ancestral Memories and Somnal Dust.",
["NMS_VERSION"]     = "5.22",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TABLES\SEASONALBESPOKEMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = 
                            {
                                {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M1"},
                                {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M2"},
                                {"Id", "D_ROGUE_REPEAT_2", "Cost", "C_ROGUE_M3"},
                                {"Id", "D_ROGUE_INTRO_3",  "Cost", "C_ROGUE_M1"},
                                {"Id", "D_ROGUE_INTRO_3",  "Cost", "C_ROGUE_M2"},
                                {"Id", "D_ROGUE_INTRO_3",  "Cost", "C_ROGUE_M3"},
                            },
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True",},
                            },
                        },
                    },
                }
            },
        }
    },
}