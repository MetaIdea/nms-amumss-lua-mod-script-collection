NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "FasterFauna.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RideSpeedSlow",                      "0.625"},
                                {"RideSpeedFast",                      "3.1"},
                                {"FishSpeedMax",                       "6.25"},
                                {"MaxSpeed",                           "37.5"},
                                {"SpawnDistanceModifierForUnderwater", "0.5"},
                                {"DefaultSwimSpeed",                   "1.25"},
                                {"FastSwimSpeed",                      "3.75"},
                                {"DefaultWalkMoveSpeed",               "1.25"},
                                {"DefaultTrotMoveSpeed",               "3.125"},
                                {"DefaultRunMoveSpeed",                "6.25"},
                                {"PredatorWalkMoveSpeed",              "1.25"},
                                {"PredatorTrotMoveSpeed",              "3.75"},
                                {"PredatorRunMoveSpeed",               "7.5"},
                                {"SpawnDistAtMinSize",                 "100"},
                                {"MaxBirdsProportion",                 "0.2"},
                                {"HerdGroupSizeMultiplier",            "5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxPetSpeedScale", "1.5"},
                            }
                        },
                    }
                },
            }
        }
    }
}