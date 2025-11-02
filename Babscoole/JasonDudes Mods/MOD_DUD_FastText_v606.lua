NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_FastText_v606",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.06",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Delay",        "0.01"},
                                {"DefaultDelay", "0.002"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Punctuation", "{%}%"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Delay", "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}