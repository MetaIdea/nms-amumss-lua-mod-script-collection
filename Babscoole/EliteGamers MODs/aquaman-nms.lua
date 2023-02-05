NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "aquaman-nms.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JetpackUnderwaterDrainRate", "0.1"},
                                {"JetpackUnderwaterFillRate",  "9"},
                                {"UnderwaterMargin",           "10000000"},
                                {"UnderwaterMinDepth",         "10000000"},
                                {"UnderwaterSurfaceTension",   "1000000"},
                                {"UnderwaterImpact",           "100000"},
                                {"UnderwaterForce",            "0"},
                                {"UnderwaterMaxJetpackSpeed",  "100000000"},
                                {"UnderwaterJetpackForce",     "2100000"},
                                {"UnderwaterFloatForce",       "1000000"},
                                {"UnderwaterFloatRange",       "100000000"},
                                {"UnderwaterFloatFreq",        "1E+09"},
                                {"DeepWaterDepth",             "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}
