NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_JSTMeteors.pak",
["MOD_AUTHOR"]    = "JustSpaceThings",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
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
                                {"MaxSpawnScale", "3"},
                                {"MoveSpeed",     "9"},
                                {"MaxMeteors",    "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SINGLE_METEOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale", "3"},
                                {"MoveSpeed",     "9"},
                                {"MaxMeteors",    "7"},
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
                                {"MaxHazardsOfThisTypeActive", "2"},
                                {"MaxSpawnScale",              "3"},
                                {"MoveSpeed",                  "9"},
                            }
                        },
                    }
                },
            }
        }
    }
}