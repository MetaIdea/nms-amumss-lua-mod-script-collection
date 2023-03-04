NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Moon Boots Fractals update1.pak",
["MOD_AUTHOR"]              = "EliteGamers",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.12",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
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
                                {"RocketBootsBoostForce",                 "68"},
                                {"RocketBootsBoostTankDrainSpeed",        "6"},
                                {"RocketBootsDriftTankDrainSpeed",        "1"},
                                {"JetpackMaxSpeed",                       "5"},
                                {"JetpackMaxUpSpeed",                     "30"},
                                {"JetpackFillRate",                       "10.5"},
                                {"JetpackFillRateMidair",                 "10.5"},
                                {"JetpackFillRateSpaceStationMultiplier", "10.5"},
                                {"JetpackFillRateFleetMultiplier",        "10.5"},
                                {"JetpackFillRateNexusMultiplier",        "10.5"},
                                {"SpaceJetpackForce",                     "70"},
                                {"SpaceJetpackMaxSpeed",                  "70"},
                                {"SpaceJetpackDrainRate",                 "0"},
                                {"MaxFallSpeed",                          "4"},
                            }
                        },
                    }
                },
            }
        },
    }
}
