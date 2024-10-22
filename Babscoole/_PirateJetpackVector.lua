NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_PirateJetpackVector.pak",
["MOD_AUTHOR"]    = "PirateHub",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.0",
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
                                {"GroundWalkSpeed",       "6.4"},
                                {"GroundRunSpeed",        "10"},
                                {"JetpackForce",          "51"},
                                {"JetpackMaxSpeed",       "10"},
                                {"JetpackMaxUpSpeed",     "40"},
                                {"JetpackUpForce",        "40"},
                                {"JetpackFillRate",       "50"},
                                {"JetpackFillRateMidair", "25"},
                                {"SpaceJetpackMaxSpeed",  "1000000"},
                                {"SpaceJetpackDrainRate", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "80"},
                                {"IGNORE", "60"},
                                {"IGNORE", "8"},
                            }
                        },
                    }
                },
            }
        }
    }
}