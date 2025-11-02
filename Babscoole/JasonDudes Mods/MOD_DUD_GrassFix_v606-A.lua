NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_GrassFix_v606-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.06",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGELUSH\HUGELUSHOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/FLOWERS/SCABIOUS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", "1"},
                                {"MaxScale",  "1.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/FLOWERS/YARROW.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", "1"},
                                {"MaxScale",  "1.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"FadeOutStartDistance", "45"},
                                {"FadeOutEndDistance",   "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "40"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle",   "50"},
                                {"MinScale ",  "1.8"},
                                {"MaxScale",   "3"},
                                {"MaxScaleY",  "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",        "0.7"},
                                {"FlatDensity",     "0.3"},
                                {"SlopeDensity",    "0.3"},
                                {"SlopeMultiplier", "1"},
                                {"MaxRegionRadius", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "4"},
                                {"IGNORE", "8"},
                                {"IGNORE", "15"},
                                {"IGNORE", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeMultiplier", "2.8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "50"},
                                {"MaxScale", "1.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle",  "50"},
                                {"MinScale ", "1.8"},
                                {"MaxScale",  "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "50"},
                                {"MaxScale", "1.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"FadeOutStartDistance", "40"},
                                {"FadeOutEndDistance",   "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "12"},
                                {"IGNORE", "20"},
                                {"IGNORE", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.7"},
                                {"FlatDensity",          "0.3"},
                                {"SlopeDensity",         "0.3"},
                                {"SlopeMultiplier",      "1"},
                                {"FadeOutStartDistance", "45"},
                                {"FadeOutEndDistance",   "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "40"},
                            }
                        },
                    }
                },
            }
        },
    }
}