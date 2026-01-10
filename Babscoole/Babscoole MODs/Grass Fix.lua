MINSCALE_MULTIPLIER = 1.1  --1.0
MAXSCALE_MULTIPLIER = 1.5  --1.3
DENSITY_MULTIPLIER = 0.67  --0.77
LUSH_MINSCALE_MULTIPLIER = 1.0
LUSH_MAXSCALE_MULTIPLIER = 1.3
LUSH_DENSITY_MULTIPLIER = 0.77


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Grass Fix",
["MOD_AUTHOR"]      = "Exosolar & Babscoole",
["NMS_VERSION"]     = "6.18",
["MOD_DESCRIPTION"] = "The Grass Fix mod replaces the patchy grass with fields of velvet on most Lush planets!",
["MODIFICATIONS"]   =
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MatchGroundColour",   "true"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
                {"PatchEdgeScaling",    "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",             "0.210000"},
                {"FlatDensity",          "0.360000"},
                {"SlopeDensity",         "0.400000"},
                {"SlopeMultiplier",      "1.100000"},
                {"MaxRegionRadius",      "6"},
                {"MaxImposterRadius",    "6"},
                {"FadeOutStartDistance", "35.000000"},
                {"FadeOutEndDistance",   "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "2.010000"},
                {"MaxScale",            "2.020000"},
                {"MinScaleY",           "0.810000"},
                {"MaxScaleY",           "0.820000"},
                {"SlopeScaling",        "1.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "4.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "2.010000"},
                {"MaxScale",            "2.020000"},
                {"MinScaleY",           "0.810000"},
                {"MaxScaleY",           "0.820000"},
                {"SlopeScaling",        "1.100000"},
                {"PatchEdgeScaling",    "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWLUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MatchGroundColour",   "true"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
                {"PatchEdgeScaling",    "0.500000"},
                {"CreaturesCanEat",     "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "6"},
                {"MaxImposterRadius",     "6"},
                {"FadeOutStartDistance",  "35.000000"},
                {"FadeOutEndDistance",    "45.000000"},
                {"FadeOutOffsetDistance", "5.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/TALLGRASSBILLBOARD.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
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
            <Property name="Coverage" value="0.210000" />
            <Property name="FlatDensity" value="0.360000" />
            <Property name="SlopeDensity" value="0.400000" />
            <Property name="SlopeMultiplier" value="1.100000" />
            <Property name="LodDistances">
              <Property value="0.000000" />
              <Property value="10.000000" />
              <Property value="20.000000" />
              <Property value="35.000000" />
              <Property value="180.000000" />
            </Property>
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80.000000" />
            <Property name="FadeOutEndDistance" value="120.000000" />
            <Property name="FadeOutOffsetDistance" value="15.000000" />
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
                {"MaxAngle",         "46.000000"},
                {"MinScale ",        "1.510000"},
                {"MaxScale",         "1.520000"},
                {"MinScaleY",        "0.751000"},
                {"MaxScaleY",        "0.752000"},
                {"SlopeScaling",     "1.100000"},
                {"PatchEdgeScaling", "0.850000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.185000"},
                {"FlatDensity",       "0.320000"},
                {"SlopeDensity",      "0.360000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.185000"},
                {"FlatDensity",       "0.320000"},
                {"SlopeDensity",      "0.360000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
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
            <Property name="Coverage" value="0.185000" />
            <Property name="FlatDensity" value="0.320000" />
            <Property name="SlopeDensity" value="0.360000" />
            <Property name="SlopeMultiplier" value="1.100000" />
            <Property name="LodDistances">
              <Property value="0.000000" />
              <Property value="8.000000" />
              <Property value="15.000000" />
              <Property value="25.000000" />
              <Property value="180.000000" />
            </Property>
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80.000000" />
            <Property name="FadeOutEndDistance" value="120.000000" />
            <Property name="FadeOutOffsetDistance" value="15.000000" />
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
                {"MaxAngle",     "46.000000"},
                {"MinScale " ,   "1.660000"},
                {"MaxScale",     "1.670000"},
                {"MinScaleY",    "0.700000"},
                {"MaxScaleY",    "0.750000"},
                {"SlopeScaling", "1.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
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
            <Property name="Coverage" value="0.210000" />
            <Property name="FlatDensity" value="0.360000" />
            <Property name="SlopeDensity" value="0.400000" />
            <Property name="SlopeMultiplier" value="1.100000" />
            <Property name="LodDistances">
              <Property value="0.000000" />
              <Property value="10.000000" />
              <Property value="20.000000" />
              <Property value="35.000000" />
              <Property value="180.000000" />
            </Property>
            <Property name="MaxRegionRadius" value="8" />
            <Property name="MaxImposterRadius" value="8" />
            <Property name="FadeOutStartDistance" value="80.000000" />
            <Property name="FadeOutEndDistance" value="120.000000" />
            <Property name="FadeOutOffsetDistance" value="15.000000" />
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
                {"MaxAngle",            "46.000000"},
                {"MatchGroundColour",   "true"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
                {"PatchEdgeScaling",    "0.500000"},
                {"ShearWindStrength",   "0.750000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "6"},
                {"MaxImposterRadius",     "6"},
                {"FadeOutStartDistance",  "35.000000"},
                {"FadeOutOffsetDistance", "5.000000"},
                {"FadeOutEndDistance",    "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MatchGroundColour",   "true"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
                {"PatchEdgeScaling",    "0.500000"},
                {"ShearWindStrength",   "0.750000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
                {"IGNORE", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "6"},
                {"MaxImposterRadius",     "6"},
                {"FadeOutStartDistance",  "35.000000"},
                {"FadeOutOffsetDistance", "5.000000"},
                {"FadeOutEndDistance",    "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/NEWCROSSGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
                {"PatchEdgeScaling",    "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
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
                {"MaxAngle",            "46.000000"},
                {"MinScale ",           "1.660000"},
                {"MaxScale",            "1.670000"},
                {"MinScaleY",           "0.700000"},
                {"MaxScaleY",           "0.750000"},
                {"SlopeScaling",        "1.100000"},
                {"PatchEdgeScaling",    "0.500000"},
                {"ShearWindStrength",   "0.750000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariantData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
                {"MaxImposterRadius", "8"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",          "0.210000"},
                {"FlatDensity",       "0.360000"},
                {"SlopeDensity",      "0.400000"},
                {"SlopeMultiplier",   "1.100000"},
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
                {"IGNORE", "0.000000"},
                {"IGNORE", "8.000000"},
                {"IGNORE", "15.000000"},
                {"IGNORE", "25.000000"},
                {"IGNORE", "180.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Coverage",              "0.210000"},
                {"FlatDensity",           "0.360000"},
                {"SlopeDensity",          "0.400000"},
                {"SlopeMultiplier",       "1.100000"},
                {"MaxRegionRadius",       "8"},
                {"MaxImposterRadius",     "8"},
                {"FadeOutStartDistance",  "80.000000"},
                {"FadeOutOffsetDistance", "15.000000"},
                {"FadeOutEndDistance",    "120.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Filename", "MODELS/PLANETS/BIOMES/COMMON/GRASS/BUBBLELUSHGRASS.SCENE.MBIN"},
              ["SECTION_UP_SPECIAL"] = 1,
              ["PRECEDING_KEY_WORDS"] = {"QualityVariants", "QualityVariants", "QualityVariants", "LodDistances"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.000000"},
                {"IGNORE", "10.000000"},
                {"IGNORE", "20.000000"},
                {"IGNORE", "35.000000"},
                {"IGNORE", "180.000000"},
              }
            },
          }
        },
      }
    }
  }
}