NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Better Meteors",
["MOD_AUTHOR"]    = "JustSpaceThings and Babscoole",
["NMS_VERSION"]   = "5.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHEREFFECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "METEOR_EFFECT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale",          "4.000000"},
                                {"SpawnAttemptsPerRegion", "4"},
                                {"MaxSpawnDistance",       "2200.000000"},
                                {"MoveSpeed",              "8.000000"},
                                {"MaxMeteors",             "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SINGLE_METEOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale", "3.000000"},
                                {"MaxMeteors",    "3"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "METEOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxMeteors", "8"},
                            }
                        },
                    }
                },
            }
        }
    }
}