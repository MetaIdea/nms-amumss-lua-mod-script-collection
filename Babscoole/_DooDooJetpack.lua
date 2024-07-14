NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_DooDooJetpack.pak",
["MOD_AUTHOR"]    = "DooDooDevan",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.87",
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
                                {"JetpackForce",          "41"},
                                {"JetpackMaxSpeed",       "41"},
                                {"JetpackMaxUpSpeed",     "41"},
                                {"JetpackUpForce",        "60"},
                                {"JetpackIgnitionTime",   "0.1"},
                                {"JetpackFillRate",       "999"},
                                {"JetpackFillRateMidair", "999"},
                            }
                        },
                    }
                },
            }
        }
    }
}