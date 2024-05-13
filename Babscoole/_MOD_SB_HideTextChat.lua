NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_SB_HideTextChat.pak",
["MOD_AUTHOR"]    = "EsbeeSB",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.65",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TextChatMaxDisplayTime",        "0"},
                                {"TextChatStayBigAfterTextInput", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}