NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_XSS_Scanner_Speed_Ease.pak",
["MOD_AUTHOR"]    = "Xodarap777",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.29",
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BinocTimeBeforeScan",                "0.1"},
                                {"BinocMinScanTime",                   "0.5"},
                                {"BinocScanTime",                      "0.5"}, 
                                {"BinocCreatureScanTime",              "0.5"},
                                {"BinocularScanTargetInitialFadeTime", "0.1"}, 
                                {"BinocularScanTargetFadeTime",        "1"},
                                {"CreatureScanStickyDecay",            "1"},
                                {"CreatureScanAngle",                  "0.1"},
                                {"CreatureMinScanTime",                "0.5"},
                                {"HoverTimeToScan",                    "0.1"},
                                {"HoverTimeToScanCreatures",           "0.1"},
                            }
                        },
                    }
                },
            }
        }
    }
}