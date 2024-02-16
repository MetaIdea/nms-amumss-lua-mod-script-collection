NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "___MOD_BETTER_BIOME_REPARTITION.pak",
["MOD_AUTHOR"]    = "WoodyMontana",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.50",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Yellow", "BiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "1"},
                                {"Lava",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Yellow", "PrimeBiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "0.5"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Green", "BiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "1"},
                                {"Lava",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Green", "PrimeBiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Blue", "BiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "1"},
                                {"Lava",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Blue", "PrimeBiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "0.5"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Red", "BiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "1"},
                                {"Lava",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Red", "PrimeBiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LushYellow", "BiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "1"},
                                {"Lava",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LushYellow", "PrimeBiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "0.5"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AbandonedYellow", "BiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "1"},
                                {"Lava",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AbandonedYellow", "PrimeBiomeProbability"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Swamp", "0.5"},
                                {"Lava",  "0.5"},
                            }
                        },
                    }
                },
            }
        },
    }
}