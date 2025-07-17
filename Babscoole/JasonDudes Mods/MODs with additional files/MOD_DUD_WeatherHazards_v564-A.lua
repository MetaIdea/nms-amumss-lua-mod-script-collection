--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_WeatherHazards_v564-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.64",
["MODIFICATIONS"]           =
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
                                {"MaxSpawnScale", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SINGLE_METEOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale", "4"},
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
                                {"MaxSpawnScale", "4"},
                                {"MinMeteors",    "2"},
                                {"MaxMeteors",    "8"},
                                {"DamageRadius",  "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LIGHTNING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageRadius",  "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                              {"Id", "TORNADO"},
                              {"Id", "TORNADO_GAS"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale",      "1.5"},
                                {"MoveSpeed",          "7"},
                                {"SuckInRadius",       "50"},
                                {"SuckInStrength",     "8"},
                                {"SuckUpRadius",       "55"},
                                {"SuckUpStrength",     "2.2"},
                                {"SuckUpHeight",       "50"},
                                {"SuckUpHeightCutoff", "100"},
                            }
                        },
                    }
                },
            }
        },
    }
}