NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "_DeadlyFrigates.pak",
    ["MOD_BATCHNAME"] = "_Deadly.pak",
    ["MOD_AUTHOR"]    = "gh0stwizard",
    ["NMS_VERSION"]   = "4.44",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                --
                -- GCFLEETGLOBALS.GLOBAL.MBIN
                --
                {
                    ["MBIN_FILE_SOURCE"]  = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxPurchaseDistance",                  300 }, -- 1000
                                { "DistanceForPurchaseReset",             600 }, -- 2000
                                -- ???
                                --{ "DistanceForSingleShipFlybyCommsReset", 850 }, -- 850
                            }
                        }
                    }
                },
            }
        }
    }
}
