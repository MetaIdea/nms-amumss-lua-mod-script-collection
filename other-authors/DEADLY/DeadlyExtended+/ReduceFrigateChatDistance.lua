NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "ReduceFrigateChatDistance.pak",
    ["MOD_AUTHOR"]      = "gh0stwizard",
    ["MOD_DESCRIPTION"] = "Reduces distance to chat with Frigates.",
    ["NMS_VERSION"]     = "4.46",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCFLEETGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                { "MaxPurchaseDistance",      350 },             -- 1000
                                { "DistanceForPurchaseReset", 700 },             -- 2000
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
