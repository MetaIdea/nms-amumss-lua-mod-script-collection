NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MasterOverseer.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.60",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\MISSIONS\GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JudgementWaitTimeMin",                  "300"},
                                {"JudgementWaitTimeMax",                  "1200"},
                                {"SettlementMiniExpeditionSuccessChance", "1"},
                                {"DailyDebtPaymentModifier",              "100000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone",     "120"},
                                {"Settlement_Bar",             "120"},
                                {"Settlement_Tower",           "120"},
                                {"Settlement_Market",          "120"},
                                {"Settlement_Small",           "120"},
                                {"Settlement_SmallIndustrial", "120"},
                                {"Settlement_Medium",          "120"},
                                {"Settlement_Large",           "120"},
                                {"Settlement_SheriffsOffice",  "120"},
                                {"Settlement_Double",          "120"},
                                {"Settlement_Farm",            "120"},
                                {"Settlement_Factory",         "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION3_MSG3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "900"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Message","UI_BIO_SHIP_MISSION4_MSG3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "900"}
                            }
                        },
                    }
                },
            }
        }
    }
}