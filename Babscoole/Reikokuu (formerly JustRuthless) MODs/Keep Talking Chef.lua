NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Keep Talking Chef.pak",
["MOD_AUTHOR"]      = "Reikokuu & Babscoole",
["MOD_DESCRIPTION"] = "Makes NPC Cronus dialogue stay open when trading food for nanites",
["NMS_VERSION"]     = "4.52",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "EXOTIC_CHEF", "Cost", "C_NEXUSCHEF1"},
                                {"Id", "EXOTIC_CHEF", "Cost", "C_NEXUSCHEF2"},
                                {"Id", "EXOTIC_CHEF", "Cost", "C_NEXUSCHEF3"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "False",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"KeepOpen", "True"},
                            },
                        },
                    }
                },
            }
        },
    }
}