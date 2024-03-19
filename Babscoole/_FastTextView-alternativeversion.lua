Version = "4.48b"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_FastTextView"..Version..".pak",
["MOD_AUTHOR"]              = "UserPro66",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = Version,
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\SPECIALTEXTPUNCTUATIONDELAYDATA.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDelay", "0.002"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Punctuation", "."},
                                {"Punctuation", "!?"},
                                {"Punctuation", ","},
                                {"Punctuation", ":;"},
                                {"Punctuation", "-"},
                                {"Punctuation", "azyxv"},
                                {"Punctuation", "."},
                                {"Punctuation", "'"},
                                {"Punctuation", "ktgr"},
                                {"Punctuation", "!"},
                                {"Punctuation", "?"},
                                {"Punctuation", ":"},
                                {"Punctuation", "fo"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Delay", "0.01"},
                            }
                        },
                    }
                },
            }
        },
    }
}