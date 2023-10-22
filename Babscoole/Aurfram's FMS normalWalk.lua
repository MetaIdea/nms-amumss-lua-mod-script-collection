NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Aurfram's FMS normalWalk.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
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
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed",           "5"},
                                {"GroundRunSpeed",            "32"},
                                {"UnderwaterMaxSpeed",        "16"},
                                {"UnderwaterMaxJetpackSpeed", "32"},
                                {"UnderwaterJetpackForce",    "50"},
                                {"JetpackMaxSpeed",           "16"},
                                {"SpaceJetpackMaxSpeed",      "30"},
                            }
                        },
                    }
                },
            }
        },
    }
}
