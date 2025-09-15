NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "nPwka.firstmod.pak",
["MOD_AUTHOR"]              = "nPwka",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.48",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ExtremePlanetChance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Blue", "0.2"},
                                {"Red",  "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AbandonedSystemProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Green", "0"},
                                {"Blue",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EmptySystemProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Green", "0"},
                                {"Blue",  "0"},
                                {"Red",   "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Poor"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "49"},
                                {"B", "35"},
                                {"A", "15"},
                                {"S", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Settlement_Hub", "GcBuildingDefinitionData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dead",                               "0.2"},  --original 0
                                {"Low",                                "0.2"},  --original 0.05
                                {"Mid",                                "0.2"},  --original 0.05
                                {"Full",                               "0.2"},  --original 0.05
                                {"Weird",                              "0.2"},  --original 0
                                {"HalfWeird",                          "0.2"},  --original 0
                                {"GasGiant",                           "0.2"},  --original 0
                                {"NumOverridesToGenerate",               "1"},  --original 0
                                {"NumOverridesToGenerateWaterworlds",    "1"},  --original 0
								{"EnabledWhenPlanetHasNoNPCs",        "true"},  --original 0
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BIOMELISTPERSTARTYPE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Yellow", "BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3"},
                                {"Dead",  "0"},
                                {"Swamp", "0.5"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Yellow", "PrimeBiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush", "3"},
                                {"Dead", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Green", "BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Green", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Green", "PrimeBiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3.5"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Swamp", "1"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Blue", "BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Blue",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Blue", "PrimeBiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3.5"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Red", "BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Red",   "3"},
                                {"Swamp", "0.5"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarType", "Red", "PrimeBiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3.5"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Lava",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LushYellow", "BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "4.5"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Red",   "0.5"},
                                {"Green", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LushYellow", "PrimeBiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "4.5"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Blue",  "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AbandonedYellow", "BiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3"},
                                {"Dead",  "0"},
                                {"Weird", "0"},
                                {"Swamp", "0.5"},
                                {"Lava",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AbandonedYellow", "PrimeBiomeProbability"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Lush",  "3"},
                                {"Dead",  "0"},
                                {"Red",   "0"},
                                {"Green", "0"},
                                {"Blue",  "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}
