NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Keep Mapping",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Keeps map seller dialog open, so you can buy multiple maps in the same session",
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
                            ["SPECIAL_KEY_WORDS"] = {"Name", "NPC_MAPSHOP_OPT_C"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "False",
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
