NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Buy All Frigates",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.73",
["MOD_DESCRIPTION"] = "All frigates can be purchased",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PercentChangeOfFrigateBeingPurchasable", "100"}, -- Original 60
                            }
                        }
                    }
                }
            }
        }
    }
}