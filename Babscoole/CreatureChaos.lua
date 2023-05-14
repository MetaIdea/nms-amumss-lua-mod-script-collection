NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Creature_Chaos_v01.pak",
["MOD_AUTHOR"]              = "quinn",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.23",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FISH",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "4.2"},
                                {"FurLengthModifierAtMinScale", "0.6"},
                                {"FurLengthModifierAtMaxScale", "2.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FISHFLOCK",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SWIMCOW",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "3.7"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SWIMRODENT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "3.7"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","JELLYFISH",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "4"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "3.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","CRAB",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "4.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SEASNAKE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "4.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SHARK",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "4.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","BIRD",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "8.5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FLYINGSNAKE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "9.8"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "8.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FLYINGLIZARD",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "9.8"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "8.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","BUTTERFLY",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SMALLBIRD",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.25"},
                                {"MaxScale", "1.8"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","BUTTERFLOCK",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","LARGEBUTTERFLY",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "6"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FLYINGBEETLE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "12"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ANTELOPE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ROBOTANTELOPE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OnlySpawnWhenIdIsForced", "False"},
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMinScale", "0.4"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ROBOTANTELOPE","RarityOverride","GcCreatureRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRarity", "SuperRare"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ROBOTANTELOPE","Rarity","GcCreatureRarity.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CreatureRarity", "SuperRare"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","TRICERATOPS",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "10.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","RODENT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "6.5"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "5.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","MOLE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "7"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "5.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","COW",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","CAT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","BONECAT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMinScale", "0.4"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","STRIDER",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FurLengthModifierAtMinScale", "0.4"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","TREX",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","TWOLEGANTELOPE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                                {"FurLengthModifierAtMaxScale", "9.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SIXLEGCOW",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SIXLEGCAT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","GRUNT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SPIDER",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FLOATSPIDER",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                                {"FurLengthModifierAtMaxScale", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PROTOROLLER",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "10"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PROTOFLYER",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.3"},
                                {"MaxScale", "11"},
                                {"FurLengthModifierAtMinScale", "0.3"},
                                {"FurLengthModifierAtMaxScale", "9.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PROTODIGGER",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "8"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "6.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","PLOUGH",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "5"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","DRILL",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "5"},
                                {"FurLengthModifierAtMinScale", "0.1"},
                                {"FurLengthModifierAtMaxScale", "3.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","WEIRDROLL",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "8"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","WEIRDFLOAT",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "8"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","WEIRDCRYSTAL",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "8"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","WEIRDBUTTERFLY",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "3.8"},
                                {"FurLengthModifierAtMinScale", "0.2"},
                                {"FurLengthModifierAtMaxScale", "2.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FIEND",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.8"},
                                {"MaxScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SLUG",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.8"},
                                {"MaxScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","MINIFIEND",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.8"},
                                {"MaxScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FIENDFISHSMALL",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","FLOATER",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","MINIDRONE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.2"},
                                {"MaxScale", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","ROCKCREATURE",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "0.8"},
                                {"MaxScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id","SANDWORM",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale", "35"},
                                {"MaxScale", "70"},
                            }
                        },
                    }
                },
            }
        },
    }
}