NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MessageRemove.pak",
["MOD_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\TUTORIALMISSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Message", "UI_CORE_NAV_DROP_MSG"},
                                {"Message", "UI_STARCHART_HINT_MSG"},
                                {"Message", "UI_NOTIFY_SHIP_SUMMON"},
                                {"Message", "UI_NOTIFY_TAKEOFF"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Message", ""},
                            }
                        },
                    }
                },
            }
        },
    }
}
