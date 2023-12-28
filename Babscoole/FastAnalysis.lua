NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_FastAnalysis.pak",
["MOD_AUTHOR"]    = "DwellerBenthos",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.40",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BinocMinScanTime",      "0.9"},  -- Original "2.2"
                                {"BinocScanTime",         "0.9"},  -- Original "2.2"
                                {"BinocCreatureScanTime", "0.9"},  -- Original "1.9"
                            }
                        },
                    }
                }
            }
        }
    }
}