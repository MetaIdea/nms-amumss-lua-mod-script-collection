MINSCALE_MULTIPLIER = 1.1  --1.0
MAXSCALE_MULTIPLIER = 1.5  --1.3
DENSITY_MULTIPLIER = 0.67  --0.77
LUSH_MINSCALE_MULTIPLIER = 1.0
LUSH_MAXSCALE_MULTIPLIER = 1.3
LUSH_DENSITY_MULTIPLIER = 0.77


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Grass Fix",
["MOD_AUTHOR"]              = "Exosolar & Babscoole",
["NMS_VERSION"]             = "6.00",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SelectableObjects"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\CRYSTALS\FULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "0.8",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MinScale ", "1.04"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "1",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "1.3"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "0.7",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MinScale ", "0.91"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "0.9",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "1.17"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "1",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MinScale ", "1.3"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "1.2",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "1.56"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "0.6",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MinScale ", "0.78"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "1.5",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "1.95"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "1.9",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MinScale ", "2.47"},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["VALUE_MATCH"] = "2.1",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MaxScale", "2.73"},
                            -- }
                        -- },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BUILDINGDRESSING.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DetailObjects"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SelectableObjects"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\OBJECTS\ROCK\BUILDINGDRESSINGGLOW.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DetailObjects"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SelectableObjects"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                    }
                },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGELUSH\HUGELUSHOBJECTSFULL.MBIN",
                    -- ["MXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["MATH_OPERATION"] = "*F:MaxScale",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MinScale ", MINSCALE_MULTIPLIER},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["MATH_OPERATION"] = "*",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"FlatDensity",  DENSITY_MULTIPLIER},
                                -- {"SlopeDensity", DENSITY_MULTIPLIER},
                                -- {"MaxScale",     MAXSCALE_MULTIPLIER},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["VALUE_MATCH_TYPE"] = "STRING",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Seed", "1"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            -- ["CREATE_HOES"] = "TRUE",
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"LargeObjectCoverage", "AlwaysPlace"},
                                -- {"MaxAngle",            "46"},
                                -- {"MinScale ",           "1.66"},
                                -- {"MaxScale",            "1.67"},
                                -- {"MinScaleY",           "0.7"},
                                -- {"MaxScaleY",           "0.75"},
                                -- {"SlopeScaling",        "1.1"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",          "0.21"},
                                -- {"FlatDensity",       "0.36"},
                                -- {"SlopeDensity",      "0.4"},
                                -- {"SlopeMultiplier",   "1.1"},
                                -- {"MaxImposterRadius", "8"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",          "0.21"},
                                -- {"FlatDensity",       "0.36"},
                                -- {"SlopeDensity",      "0.4"},
                                -- {"SlopeMultiplier",   "1.1"},
                                -- {"MaxRegionRadius",   "6"},
                                -- {"MaxImposterRadius", "6"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            -- ["REPLACE_TYPE"] = "ONCEINSIDE",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"IGNORE", "0"},
                                -- {"IGNORE", "8"},
                                -- {"IGNORE", "15"},
                                -- {"IGNORE", "25"},
                                -- {"IGNORE", "180"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariantData", "QualityVariants"},
                            -- ["ADD_OPTION"] = "ADDafterSECTION",
                            -- ["ADD"] =
-- [[
          -- <Property value="QualityVariants">
            -- <Property name="ID" value="ULTRA" />
            -- <Property name="Coverage" value="0.21" />
            -- <Property name="FlatDensity" value="0.36" />
            -- <Property name="SlopeDensity" value="0.4" />
            -- <Property name="SlopeMultiplier" value="1.1" />
            -- <Property name="MaxRegionRadius" value="8" />
            -- <Property name="MaxImposterRadius" value="8" />
            -- <Property name="FadeOutStartDistance" value="80" />
            -- <Property name="FadeOutEndDistance" value="120" />
            -- <Property name="FadeOutOffsetDistance" value="15" />
            -- <Property name="LodDistances">
              -- <Property value="0" />
              -- <Property value="10" />
              -- <Property value="20" />
              -- <Property value="35" />
              -- <Property value="180" />
            -- </Property>
          -- </Property>
-- ]]
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"SelectableObjects"},
                            -- ["CREATE_HOES"] = "TRUE",
                        -- },
                    -- }
                -- },
                -- {
                    -- ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGOBJECTSFULL.MBIN",
                    -- ["MXML_CHANGE_TABLE"] =
                    -- {
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["MATH_OPERATION"] = "*F:MaxScale",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"MinScale ", MINSCALE_MULTIPLIER},
                            -- }
                        -- },
                        -- {
                            -- ["REPLACE_TYPE"] = "ALL",
                            -- ["MATH_OPERATION"] = "*",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"FlatDensity",  DENSITY_MULTIPLIER},
                                -- {"SlopeDensity", DENSITY_MULTIPLIER},
                                -- {"MaxScale",     MAXSCALE_MULTIPLIER},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData", "Seed"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Seed", "1"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData", "Samplers"},
                            -- ["CREATE_HOES"] = "TRUE",
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Placement",           "GRASS"},
                                -- {"LargeObjectCoverage", "AlwaysPlace"},
                                -- {"MaxAngle",            "46"},
                                -- {"MatchGroundColour",   "true"},
                                -- {"MinScale ",           "1.66"},
                                -- {"MaxScale",            "1.67"},
                                -- {"MinScaleY",           "0.7"},
                                -- {"MaxScaleY",           "0.75"},
                                -- {"SlopeScaling",        "1.1"},
                                -- {"PatchEdgeScaling",    "0.5"},
                                -- {"CreaturesCanEat",     "false"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData", "QualityVariantData"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",          "0.21"},
                                -- {"FlatDensity",       "0.36"},
                                -- {"SlopeDensity",      "0.4"},
                                -- {"SlopeMultiplier",   "1.1"},
                                -- {"MaxImposterRadius", "8"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData", "QualityVariants", "QualityVariants"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",              "0.21"},
                                -- {"FlatDensity",           "0.36"},
                                -- {"SlopeDensity",          "0.4"},
                                -- {"SlopeMultiplier",       "1.1"},
                                -- {"MaxRegionRadius",       "6"},
                                -- {"MaxImposterRadius",     "6"},
                                -- {"FadeOutStartDistance",  "35"},
                                -- {"FadeOutEndDistance",    "45"},
                                -- {"FadeOutOffsetDistance", "5"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData", "QualityVariants", "LodDistances"},
                            -- ["REPLACE_TYPE"] = "ONCEINSIDE",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"IGNORE", "0"},
                                -- {"IGNORE", "8"},
                                -- {"IGNORE", "15"},
                                -- {"IGNORE", "25"},
                                -- {"IGNORE", "180"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData", "QualityVariants", "QualityVariants", "QualityVariants"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",              "0.21"},
                                -- {"FlatDensity",           "0.36"},
                                -- {"SlopeDensity",          "0.4"},
                                -- {"SlopeMultiplier",       "1.1"},
                                -- {"MaxRegionRadius",       "8"},
                                -- {"MaxImposterRadius",     "8"},
                                -- {"FadeOutStartDistance",  "80"},
                                -- {"FadeOutEndDistance",    "120"},
                                -- {"FadeOutOffsetDistance", "15"},
                            -- }
                        -- },
                        -- {
                            -- ["PRECEDING_KEY_WORDS"] = {"DetailObjects", "GcObjectSpawnData", "GcObjectSpawnData", "QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            -- ["REPLACE_TYPE"] = "ONCEINSIDE",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"IGNORE", "0"},
                                -- {"IGNORE", "10"},
                                -- {"IGNORE", "20"},
                                -- {"IGNORE", "35"},
                                -- {"IGNORE", "180"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP"] = 1,
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"LargeObjectCoverage", "AlwaysPlace"},
                                -- {"MaxAngle",            "46"},
                                -- {"MinScale ",           "1.51"},
                                -- {"MaxScale",            "1.52"},
                                -- {"MinScaleY",           "0.751"},
                                -- {"MaxScaleY",           "0.752"},
                                -- {"SlopeScaling",        "1.1"},
                                -- {"PatchEdgeScaling",    "0.85"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",          "0.185"},
                                -- {"FlatDensity",       "0.32"},
                                -- {"SlopeDensity",      "0.36"},
                                -- {"SlopeMultiplier",   "1.1"},
                                -- {"MaxImposterRadius", "8"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",          "0.185"},
                                -- {"FlatDensity",       "0.32"},
                                -- {"SlopeDensity",      "0.36"},
                                -- {"SlopeMultiplier",   "1.1"},
                                -- {"MaxRegionRadius",   "8"},
                                -- {"MaxImposterRadius", "8"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            -- ["REPLACE_TYPE"] = "ONCEINSIDE",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"IGNORE", "0"},
                                -- {"IGNORE", "8"},
                                -- {"IGNORE", "15"},
                                -- {"IGNORE", "25"},
                                -- {"IGNORE", "180"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"Coverage",              "0.185"},
                                -- {"FlatDensity",           "0.32"},
                                -- {"SlopeDensity",          "0.36"},
                                -- {"SlopeMultiplier",       "1.1"},
                                -- {"MaxRegionRadius",       "8"},
                                -- {"MaxImposterRadius",     "8"},
                                -- {"FadeOutStartDistance",  "80"},
                                -- {"FadeOutEndDistance",    "120"},
                                -- {"FadeOutOffsetDistance", "15"},
                            -- }
                        -- },
                        -- {
                            -- ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            -- ["SECTION_UP_SPECIAL"] = 1,
                            -- ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            -- ["REPLACE_TYPE"] = "ONCEINSIDE",
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"IGNORE", "0"},
                                -- {"IGNORE", "8"},
                                -- {"IGNORE", "15"},
                                -- {"IGNORE", "25"},
                                -- {"IGNORE", "180"},
                            -- }
                        -- },
                    -- }
                -- },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MatchGroundColour",   "true"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLEOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/TOXIC/SMALL/TOXICGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["MATH_OPERATION"] = "*",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                                {"PatchEdgeScaling",    "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",             "0.21"},
                                {"FlatDensity",          "0.36"},
                                {"SlopeDensity",         "0.4"},
                                {"SlopeMultiplier",      "1.1"},
                                {"MaxRegionRadius",      "6"},
                                {"MaxImposterRadius",    "6"},
                                {"FadeOutStartDistance", "35"},
                                {"FadeOutEndDistance",   "45"},
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
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", LUSH_MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  LUSH_DENSITY_MULTIPLIER},
                                {"SlopeDensity", LUSH_DENSITY_MULTIPLIER},
                                {"MaxScale",     LUSH_MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "2.01"},
                                {"MaxScale",            "2.02"},
                                {"MinScaleY",           "0.81"},
                                {"MaxScaleY",           "0.82"},
                                {"SlopeScaling",        "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "4"},
                                {"IGNORE", "8"},
                                {"IGNORE", "15"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
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
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", LUSH_MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  LUSH_DENSITY_MULTIPLIER},
                                {"SlopeDensity", LUSH_DENSITY_MULTIPLIER},
                                {"MaxScale",     LUSH_MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "2.01"},
                                {"MaxScale",            "2.02"},
                                {"MinScaleY",           "0.81"},
                                {"MaxScaleY",           "0.82"},
                                {"SlopeScaling",        "1.1"},
                                {"PatchEdgeScaling",    "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
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
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSFULL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSLOW.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Placement",           "GRASS"},
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MatchGroundColour",   "true"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                                {"PatchEdgeScaling",    "0.5"},
                                {"CreaturesCanEat",     "false"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "6"},
                                {"MaxImposterRadius",     "6"},
                                {"FadeOutStartDistance",  "35"},
                                {"FadeOutEndDistance",    "45"},
                                {"FadeOutOffsetDistance", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "8"},
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.21" />
            <Property name="FlatDensity" value="0.36" />
            <Property name="SlopeDensity" value="0.4" />
            <Property name="SlopeMultiplier" value="1.1" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="10" />
              <Property value="20" />
              <Property value="35" />
              <Property value="180" />
            </Property>
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="15" />
          </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OptionName", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle",         "46"},
                                {"MinScale ",        "1.51"},
                                {"MaxScale",         "1.52"},
                                {"MinScaleY",        "0.751"},
                                {"MaxScaleY",        "0.752"},
                                {"SlopeScaling",     "1.1"},
                                {"PatchEdgeScaling", "0.85"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.185"},
                                {"FlatDensity",       "0.32"},
                                {"SlopeDensity",      "0.36"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.185"},
                                {"FlatDensity",       "0.32"},
                                {"SlopeDensity",      "0.36"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "8"},
                                {"MaxImposterRadius", "8"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.185" />
            <Property name="FlatDensity" value="0.32" />
            <Property name="SlopeDensity" value="0.36" />
            <Property name="SlopeMultiplier" value="1.1" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="8" />
              <Property value="15" />
              <Property value="25" />
              <Property value="180" />
            </Property>
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="15" />
          </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHOBJECTSMID.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAngle",     "46"},
                                {"MinScale " ,   "1.66"},
                                {"MaxScale",     "1.67"},
                                {"MinScaleY",    "0.7"},
                                {"MaxScaleY",    "0.75"},
                                {"SlopeScaling", "1.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
          <Property name="QualityVariants" value="GcObjectSpawnDataVariant" _id="ULTRA">
            <Property name="ID" value="ULTRA" />
            <Property name="Coverage" value="0.21" />
            <Property name="FlatDensity" value="0.36" />
            <Property name="SlopeDensity" value="0.4" />
            <Property name="SlopeMultiplier" value="1.1" />
            <Property name="LodDistances">
              <Property value="0" />
              <Property value="10" />
              <Property value="20" />
              <Property value="35" />
              <Property value="180" />
            </Property>
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80" />
            <Property name="FadeOutEndDistance" value="120" />
            <Property name="FadeOutOffsetDistance" value="15" />
          </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlacementPriority",   "Low"},
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"OverlapStyle",        "All"},
                                {"MaxAngle",            "46"},
                                {"MatchGroundColour",   "True"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                                {"PatchEdgeScaling",    "0.5"},
                                {"ShearWindStrength",   "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "6"},
                                {"MaxImposterRadius",     "6"},
                                {"FadeOutStartDistance",  "35"},
                                {"FadeOutOffsetDistance", "5"},
                                {"FadeOutEndDistance",    "45"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlacementPriority",   "Low"},
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"OverlapStyle",        "All"},
                                {"MaxAngle",            "46"},
                                {"MatchGroundColour",   "true"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                                {"PatchEdgeScaling",    "0.5"},
                                {"ShearWindStrength",   "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "6"},
                                {"MaxImposterRadius",     "6"},
                                {"FadeOutStartDistance",  "35"},
                                {"FadeOutOffsetDistance", "5"},
                                {"FadeOutEndDistance",    "45"},
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
                                {"IGNORE", "15"},
                                {"IGNORE", "25"},
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMAOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                                {"PatchEdgeScaling",    "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
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
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBOBJECTS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*F:MaxScale",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinScale ", MINSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["MATH_OPERATION"] = "*",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FlatDensity",  DENSITY_MULTIPLIER},
                                {"SlopeDensity", DENSITY_MULTIPLIER},
                                {"MaxScale",     MAXSCALE_MULTIPLIER},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["PRECEDING_KEY_WORDS"] = {"Samplers"},
                            ["CREATE_HOES"] = "TRUE",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LargeObjectCoverage", "AlwaysPlace"},
                                {"MaxAngle",            "46"},
                                {"MinScale ",           "1.66"},
                                {"MaxScale",            "1.67"},
                                {"MinScaleY",           "0.7"},
                                {"MaxScaleY",           "0.75"},
                                {"SlopeScaling",        "1.1"},
                                {"PatchEdgeScaling",    "0.5"},
                                {"ShearWindStrength",   "0.75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxImposterRadius", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",          "0.21"},
                                {"FlatDensity",       "0.36"},
                                {"SlopeDensity",      "0.4"},
                                {"SlopeMultiplier",   "1.1"},
                                {"MaxRegionRadius",   "6"},
                                {"MaxImposterRadius", "6"},
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
                                {"IGNORE", "180"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Coverage",              "0.21"},
                                {"FlatDensity",           "0.36"},
                                {"SlopeDensity",          "0.4"},
                                {"SlopeMultiplier",       "1.1"},
                                {"MaxRegionRadius",       "8"},
                                {"MaxImposterRadius",     "8"},
                                {"FadeOutStartDistance",  "80"},
                                {"FadeOutOffsetDistance", "15"},
                                {"FadeOutEndDistance",    "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "10"},
                                {"IGNORE", "20"},
                                {"IGNORE", "35"},
                                {"IGNORE", "180"},
                            }
                        },
                    }
                },
            }
        }
    }
}