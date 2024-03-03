--Must get the TEXTURES folder from the orignal .pak and place into ModScript\GlobalMEFTI

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_WeatherHazards_v452-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.52",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
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
                                {"MinSpawnScale", "0.5"},
                                {"MaxSpawnScale", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SINGLE_METEOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpawnScale", "0.5"},
                                {"MaxSpawnScale", "4"},
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
                                {"MinSpawnScale", "0.5"},
                                {"MaxSpawnScale", "4"},
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
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TORNADO"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpawnScale",      "1.5"},
                                {"MoveSpeed",          "7"},
                                {"SuckInRadius",       "60"},
                                {"SuckInStrength",     "10"},
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