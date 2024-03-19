NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "____LUSH_START.pak",
["MOD_AUTHOR"]    = "WoodyMontana",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.25",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMEFILENAMES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Biome", "Scorched"},
                                {"Biome", "Radioactive"},
                                {"Biome", "Frozen"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Biome", "Lush"},
                            }
                        },
                    }
                },
            }
        },
    }
}