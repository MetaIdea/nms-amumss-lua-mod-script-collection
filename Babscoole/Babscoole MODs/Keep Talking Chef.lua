NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Keep Talking Chef",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Makes NPC Cronus dialogue stay open when trading food for nanites",
["NMS_VERSION"]     = "6.00",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "%?CHEF_JUDGE1", "Cost", "C_NEXUSCHEF1"},
                                {"Id", "%?CHEF_JUDGE1", "Cost", "C_NEXUSCHEF2"},
                                {"Id", "%?CHEF_JUDGE1", "Cost", "C_NEXUSCHEF3"},
                                {"Id", "%?CHEF_JUDGE2", "Cost", "C_NEXUSCHEF1"},
                                {"Id", "%?CHEF_JUDGE2", "Cost", "C_NEXUSCHEF2"},
                                {"Id", "%?CHEF_JUDGE2", "Cost", "C_NEXUSCHEF3"},
                                {"Id", "%?CHEF_JUDGE3", "Cost", "C_NEXUSCHEF1"},
                                {"Id", "%?CHEF_JUDGE3", "Cost", "C_NEXUSCHEF2"},
                                {"Id", "%?CHEF_JUDGE3", "Cost", "C_NEXUSCHEF3"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "false",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "true"},
                            },
                        },
                    }
                },
            }
        },
    }
}