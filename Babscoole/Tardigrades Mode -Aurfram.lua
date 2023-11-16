NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Tardigrades Mode -Aurfram.pak",
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
                                {"EnergyDischargeRateFloatingInSpace", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\HAZARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ProtectionTime"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "2.1474836E+09"},
                                {"y", "2.1474836E+09"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"None", "GcPlayerHazardData.xml"},
                            ["PRECEDING_KEY_WORDS"] = {"ProtectionTime"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}
