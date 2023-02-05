NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_JSTCaveOverhaul2022.pak",
["MOD_AUTHOR"]    = "JuatSpaceThings",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.08",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEDEAD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxScale","1.4",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                                {"MaxScale",                   "1.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxXZRotation","3",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMSTALAGTITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MinScale","0.6",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxScale","0.6",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed","30",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxScale","0.45",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEEMPTY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                                {"MaxScale",                   "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEFULL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",  "0.8"},
                                {"MaxScaleY", "2.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale",                   "0.9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData","QualityVariants"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Coverage","0.26",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScaleY", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData","QualityVariants"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                                {"MaxScale",                   "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData","QualityVariants"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.24"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlatDensity","0.14",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Coverage","0.54",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed","123",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/TINYROCKS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FlatDensity","0.034",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.52"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Coverage","0.08",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLROCKS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEGRASSBUSHES.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/CEILINGPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMWALLSHROOM.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","ULTRA",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScaleY", "2.6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPLANT/SMALLCAVEBUSH.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCAVEBUSH.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/NEWCROSSGRASS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.06"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMEMID.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale","1.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/LARGEFUNGHI.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALAGMITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScale","1.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/HANGINGPLANTS.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed","100",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Seed","101",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.4"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\CAVE\CAVEBIOMESPARSETOXIC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/LARGEPROP/STALACTITES.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.28"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxAngle","20",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MaxAngle","20",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SlopeScaling","0",},
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SlopeScaling","0",},
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLSHRUB.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["INTEGER_TO_FLOAT"] = "Force",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwapPrimaryForRandomColour","True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/MEDIUMPROP/MEDIUMGLOWPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.7"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename","MODELS/PLANETS/BIOMES/CAVE/SMALLPROP/SMALLCIELINGPLANT.SCENE.MBIN",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData",},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0.6"},
                            }
                        },
                    }
                },
            }
        }
    }
}