NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "IAH - DarkerNights.pak",
["MOD_AUTHOR"]              = "PCMystic",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.08",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\NIGHTSKYCOLOURS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"SkyColour",       "Colour.xml"},
                                {"SkyUpperColour",  "Colour.xml"},
                                {"SkySolarColour",  "Colour.xml"},
                                {"HorizonColour",   "Colour.xml"},
                                {"FogColour",       "Colour.xml"},
                                {"HeightFogColour", "Colour.xml"},
                                {"LightColour",     "Colour.xml"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.11"},
                                {"G", "0.11"},
                                {"B", "0.22"},
                                {"A", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"CloudColour1", "Colour.xml"},
                                {"CloudColour2", "Colour.xml"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.05"},
                                {"G", "0.05"},
                                {"B", "0.05"},
                                {"A", "0.1"},
                            }
                        },
                    }
                },
            }
        }
    }
}