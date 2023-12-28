NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "BNS-Decisions 3.91.pak",
    ["MOD_DESCRIPTION"] = "",
    ["MOD_AUTHOR"]      = "ThatBomberBoi",
    ["NMS_VERSION"]     = "3.91",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JudgementWaitTimeMin", "90"},
                                {"JudgementWaitTimeMax", "320"},
                            }
                        }
                    }
                }
            }
        }
    }
}