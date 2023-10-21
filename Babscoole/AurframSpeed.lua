NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "AurframSpeed.pak",
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
                                {"GroundWalkSpeed",           "15"},
                                {"GroundRunSpeed",            "30"},
                                {"UnderwaterMaxSpeed",        "15"},
                                {"UnderwaterMaxJetpackSpeed", "30"},
                                {"JetpackMaxSpeed",           "30"},
                                {"SpaceJetpackMaxSpeed",      "30"},
                            }
                        },
                    }
                },
            }
        },
    }
}
