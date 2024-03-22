NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "_Bodie420.SplitStacksFaster.5.0.pak",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["MOD_VERSION"]     = "5.0",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StackSizeRateChangeRate", "6"},    --Original 1.25
                                {"StackSizeChangeMaxRate",  "1000"}, --Original 60
                            }
                        }
                    }
                }
            }
        }
    }
}