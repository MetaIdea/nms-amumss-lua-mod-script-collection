NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "JST Better Meteors.pak",
["MOD_AUTHOR"]    = "JustSpaceThings",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHEREFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "METEOR_EFFECT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale",          "4"},
                                {"SpawnAttemptsPerRegion", "4"},
                                {"MaxSpawnDistance",       "2200"},
                                {"MoveSpeed",              "8"},
                                {"MaxMeteors",             "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SINGLE_METEOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale", "3"},
                                {"MaxMeteors",    "3"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
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