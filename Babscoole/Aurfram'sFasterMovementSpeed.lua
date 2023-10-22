NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Aurfram'sFasterMovementSpeed.pak",
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
                                {"GroundWalkSpeed",           "10"},
                                {"GroundRunSpeed",            "25"},
                                {"UnderwaterMaxSpeed",        "15"},
                                {"UnderwaterForce",           "30"},
                                {"UnderwaterMaxJetpackSpeed", "40"},
                                {"UnderwaterJetpackForce",    "50"},
                                {"JetpackMaxSpeed",           "50"},
                                {"SpaceJetpackMaxSpeed",      "50"},
                            }
                        },
                    }
                },
            }
        },
    }
}
