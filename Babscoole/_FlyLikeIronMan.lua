NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_FlyLikeIronMan.pak",
["MOD_AUTHOR"]    = "DooDooDevan",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
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
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JetpackUnderwaterDrainRate",      "0"},
                                {"JetpackUnderwaterFillRate",       "99999"},
                                {"UnderwaterMaxJetpackSpeed",       "20"},
                                {"UnderwaterJetpackForce",          "15"},
                                {"UnderwaterMaxJetpackEscapeSpeed", "40"},
                                {"JetpackDrainHorizontalFactor",    "0"},
                                {"JetpackForce",                    "21"},
                                {"JetpackMaxSpeed",                 "99"},
                                {"JetpackMaxUpSpeed",               "99"},
                                {"JetpackFillRate",                 "9999"},
                                {"JetpackFillRateMidair",           "99999"},
                                {"SpaceJetpackForce",               "9999"},
                                {"SpaceJetpackMaxSpeed",            "99"},
                            }
                        },
                    }
                },
            }
        }
    }
}