NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"] = "SublightJetpack",
    ["MOD_AUTHOR"] = "unchaotic",
    ["NMS_VERSION"] = "6.45",
    ["MOD_DESCRIPTION"] = "Go to other planets with your jetpack!",
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
                                {"JetpackMaxSpeed",         "25"},
                                {"JetpackMaxUpSpeed",       "500"},
                                {"JetpackUpForce",          "1000"},
                                {"JetpackFillRate",         "5"},
                                {"JetpackFillRateHardMode", "5"},
                                {"SpacewalkMaxSpeed",       "5000000000"},
                                {"SpacewalkForce",          "5000000000"},
                                {"SpacewalkJetpackForce",   "5000000000"},
                                {"SpacewalkJetpackUpForce", "5000000000"},
                                {"SpacewalkBrake",          "1"},
                            }
                        }
                    }
                }
            }
        }
    }
}