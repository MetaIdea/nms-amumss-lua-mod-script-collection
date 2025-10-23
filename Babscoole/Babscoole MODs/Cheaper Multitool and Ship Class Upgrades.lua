NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Cheaper Multitool and Ship Class Upgrades",
["MOD_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "Cuts multiTool and ship class upgrade costs in half",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "C_WEAP_UPGRADE"},
                                {"Id", "C_CLASS_UPGRADE"},
                            },
                            ["PRECEDING_KEY_WORDS"] = {"Costs"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "@/2"},
                            }
                        },
                    }
                },
            }
        },
    }
}