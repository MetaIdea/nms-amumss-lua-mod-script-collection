NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BTF_TERRAIN.pak",
["MOD_AUTHOR"]    = "Jenga67",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.75",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["AMUMSS_SUPPRESS_MSG"] = "DONOT_REPORT_NEW_EQUAL_OLD_VALUE",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures", "0.201835"},
                                {"Width",           "800"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Height",     "8"},
                                {"Width",      "100"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"NoiseVoxelType",  "RandomRock"},
                                {"RegionScale",     "2"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",        "5"},
                                {"NoiseVoxelType", "RandomRock"},
                                {"RegionRatio",    "0.3"},
                                {"RegionGain",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "2"},
                                {"AmplifyFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"Width",           "2500"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "1"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Hemisphere",      "True"},
                                {"MinWidth",        "15"},
                                {"MaxWidth",        "20"},
                                {"MinHeight",       "5"},
                                {"MinHeightOffset", "-5"},
                                {"MaxHeightOffset", "-1"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "False"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "True"},
                                {"NoiseVoxelType",  "RandomRock"},
                                {"MaxHeightOffset", "20"},
                                {"HeightOffset",    "50"},
                                {"RegionRatio",     "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",         "True"},
                                {"NoiseVoxelType",   "Substance_3"},
                                {"NoiseGridType",    "Torus"},
                                {"MinWidth",         "50"},
                                {"MaxWidth",         "50"},
                                {"MinHeight",        "30"},
                                {"MaxHeight",        "30"},
                                {"MinHeightOffset",  "-15"},
                                {"MaxHeightOffset",  "-15"},
                                {"HeightOffset",     "0"},
                                {"RegionRatio",      "0.002"},
                                {"RegionScale",      "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "32"},
                                {"Octaves",    "5"},
                                {"RegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "9"},
                                {"Height",  "4"},
                                {"Octaves", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",                  "False"},
                                {"FeatureType",             "Tube"},
                                {"Width",                   "10"},
                                {"Height",                  "2.5"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "100"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "0"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                                {"OffsetType", "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures", "0.201835"},
                                {"Height",          "96"},
                                {"Width",           "800"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Height",     "8"},
                                {"Width",      "100"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"NoiseVoxelType",  "Base"},
                                {"RegionScale",     "2"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "5"},
                                {"RegionRatio", "0.3"},
                                {"RegionGain",  "0"},
                                {"OffsetType",  "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "2"},
                                {"AmplifyFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"Width",           "3000"},
                                {"RegionRatio",     "1"},
                                {"RegionScale",     "1"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"Hemisphere",      "True"},
                                {"MinWidth",        "15"},
                                {"MaxWidth",        "20"},
                                {"MinHeight",       "5"},
                                {"MinHeightOffset", "-5"},
                                {"MaxHeightOffset", "-1"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "False"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "True"},
                                {"MaxHeightOffset", "20"},
                                {"HeightOffset",    "50"},
                                {"RegionRatio",     "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "32"},
                                {"Octaves",    "5"},
                                {"RegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "9"},
                                {"Height",  "4"},
                                {"Octaves", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",                  "False"},
                                {"Width",                   "10"},
                                {"Height",                  "2.5"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "100"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "0"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0.201835"},
                                {"RidgeErosion",    "0"},
                                {"Width",           "800"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"SlopeGain",       "0"},
                                {"SlopeBias",       "0"},
                                {"AmplifyFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"Height",          "8"},
                                {"Width",           "100"},
                                {"RegionScale",     "2"},
                                {"RegionGain",      "0"},
                                {"OffsetType",      "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",        "5"},
                                {"SlopeGain",      "0"},
                                {"SlopeBias",      "0"},
                                {"NoiseVoxelType", "RandomRock"},
                                {"Width",          "350"},
                                {"RegionRatio",    "0.2"},
                                {"RegionScale",    "1"},
                                {"RegionGain",     "0"},
                                {"PlateauStratas", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeGain",        "0"},
                                {"SlopeBias",        "0"},
                                {"MaximumLOD",       "4"},
                                {"Width",            "25"},
                                {"RegionScale",      "6"},
                                {"RegionGain",       "0"},
                                {"PlateauSharpness", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",        "2"},
                                {"RidgeErosion",   "0"},
                                {"Width",          "2500"},
                                {"RegionRatio",    "0.2"},
                                {"RegionGain",     "0"},
                                {"PlateauStratas", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",      "True"},
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.025"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0.201835"},
                                {"RidgeErosion",    "0"},
                                {"Height",          "96"},
                                {"Width",           "800"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"AmplifyFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"Height",          "8"},
                                {"Width",           "100"},
                                {"RegionScale",     "2"},
                                {"RegionGain",      "0"},
                                {"OffsetType",      "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",        "5"},
                                {"NoiseVoxelType", "Base"},
                                {"RegionRatio",    "1"},
                                {"RegionScale",    "1"},
                                {"RegionGain",     "0"},
                                {"PlateauStratas", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",       "4"},
                                {"Width",            "25"},
                                {"RegionScale",      "6"},
                                {"RegionGain",       "0"},
                                {"PlateauSharpness", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",        "2"},
                                {"RidgeErosion",   "0"},
                                {"Width",          "3000"},
                                {"RegionGain",     "0"},
                                {"PlateauStratas", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",      "True"},
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.025"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"SlopeGain",       "0"},
                                {"SlopeBias",       "0"},
                                {"PerturbFeatures", "0"},
                                {"SlopeErosion",    "0"},
                                {"NoiseVoxelType",  "RandomRock"},
                                {"Width",           "350"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "RandomRock"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "2"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Width",                "2500"},
                                {"RegionRatio",          "0.2"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain",      "0"},
                                {"MaximumLOD",      "3"},
                                {"NoiseGridType",   "Cube"},
                                {"MinWidth",        "10"},
                                {"MaxWidth",        "30"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-8"},
                                {"MaxHeightOffset", "-5"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.025"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "32"},
                                {"Octaves",    "5"},
                                {"RegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "9"},
                                {"Height",  "4"},
                                {"Octaves", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Height",               "96"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"PerturbFeatures", "0"},
                                {"SlopeErosion",    "0"},
                                {"NoiseVoxelType",  "Base"},
                                {"Width",           "350"},
                                {"RegionRatio",     "0.8"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "Base"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "2"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "1"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseGridType",   "Puck"},
                                {"MinWidth",        "10"},
                                {"MaxWidth",        "30"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-8"},
                                {"MaxHeightOffset", "-5"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.025"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "32"},
                                {"Octaves",    "5"},
                                {"RegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "9"},
                                {"Height",  "4"},
                                {"Octaves", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"PerturbFeatures", "0"},
                                {"SlopeErosion",    "0"},
                                {"Active",          "True"},
                                {"NoiseVoxelType",  "RandomRock"},
                                {"Width",           "350"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "RandomRock"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "2"},
                                {"SharpToRoundFeatures", "0"},
                                {"RegionRatio",          "0.2"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-14"},
                                {"MaxHeightOffset", "-14"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "90"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "True"},
                                {"NoiseVoxelType", "Base"},
                                {"MinHeight",      "128"},
                                {"MaxHeight",      "128"},
                                {"RegionRatio",    "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Active",     "False"},
                                {"Width",      "100"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",         "0"},
                                {"SmoothRadius",    "20"},
                                {"RandomPrimitive", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "RandomRock"},
                                {"Width",                   "50"},
                                {"Height",                  "25"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "30"},
                                {"HeightVarianceFrequency", "200"},
                                {"HeightOffset",            "0"},
                                {"OffsetType",              "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "RandomRock"},
                                {"Width",                   "30"},
                                {"Height",                  "15"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "5"},
                                {"HeightVarianceFrequency", "50"},
                                {"HeightOffset",            "10"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",                  "False"},
                                {"FeatureType",             "Tube"},
                                {"Width",                   "10"},
                                {"Height",                  "2.5"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "100"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "0"},
                                {"SmoothRadius",            "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Height",               "96"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"PerturbFeatures", "0"},
                                {"Active",          "True"},
                                {"NoiseVoxelType",  "Base"},
                                {"Width",           "350"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "Base"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "2"},
                                {"SharpToRoundFeatures", "0"},
                                {"Width",                "3000"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-14"},
                                {"MaxHeightOffset", "-14"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "90"},
                                {"SmoothRadius", "5"},
                            }
                        },
                      {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "True"},
                                {"NoiseVoxelType", "Base"},
                                {"MinHeight",      "128"},
                                {"MaxHeight",      "128"},
                                {"RegionRatio",    "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Active",     "False"},
                                {"Width",      "100"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",         "45"},
                                {"VaryPitch",       "45"},
                                {"SmoothRadius",    "20"},
                                {"RandomPrimitive", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "50"},
                                {"Height",                  "25"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "30"},
                                {"HeightVarianceFrequency", "200"},
                                {"HeightOffset",            "40"},
                                {"OffsetType",              "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "30"},
                                {"Height",                  "15"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "5"},
                                {"HeightVarianceFrequency", "50"},
                                {"HeightOffset",            "10"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",                  "False"},
                                {"FeatureType",             "Tube"},
                                {"Width",                   "10"},
                                {"Height",                  "2.5"},
                                {"RegionSize",              "100"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "0"},
                                {"SmoothRadius",            "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0.201835"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "-1"},
                                {"Active",               "True"},
                                {"NoiseVoxelType",       "RandomRock"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "True"},
                                {"NoiseVoxelType", "RandomRock"},
                                {"RegionGain",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "2"},
                                {"RegionRatio", "0.2"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",  "Base"},
                                {"MinWidth",        "60"},
                                {"MaxWidth",        "60"},
                                {"MinHeight",       "60"},
                                {"MaxHeight",       "60"},
                                {"MinHeightOffset", "-20"},
                                {"MaxHeightOffset", "10"},
                                {"HeightOffset",    "-30"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "0"},
                                {"RandomPrimitive", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "6.247684"},
                                {"Form_n1", "2.712962"},
                                {"Form_n2", "4.574076"},
                                {"Form_n3", "13.84258"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "5.113516"},
                                {"Form_n1", "2.064866"},
                                {"Form_n2", "5.870267"},
                                {"Form_n3", "6.71353"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",  "Base"},
                                {"NoiseGridType",   "SuperFormula_02"},
                                {"MinHeightOffset", "-32"},
                                {"HeightOffset",    "-128"},
                                {"RegionRatio",     "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "0"},
                                {"RandomPrimitive", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "6.180825"},
                                {"Form_n1", "4.19296"},
                                {"Form_n2", "8.36165"},
                                {"Form_n3", "5.493932"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "6.860413"},
                                {"Form_n2", "6.049693"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",                  "False"},
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "10"},
                                {"Height",                  "2.5"},
                                {"RegionSize",              "100"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "0"},
                                {"OffsetType",              "Base"},
                                {"SmoothRadius",            "0"},
                                {"SeedOffset",              "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",       "False"},
                                {"FeatureType",  "Tube"},
                                {"Width",        "10"},
                                {"Height",       "2.5"},
                                {"RegionSize",   "100"},
                                {"HeightOffset", "0"},
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0.201835"},
                                {"Height",          "96"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "-1"},
                                {"Active",               "True"},
                                {"NoiseVoxelType",       "Base"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "True"},
                                {"NoiseVoxelType", "Base"},
                                {"RegionGain",     "0"},
                                {"OffsetType",     "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "2"},
                                {"Width",      "3000"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",  "Base"},
                                {"NoiseGridType",   "SuperFormula_08"},
                                {"MinWidth",        "60"},
                                {"MaxWidth",        "60"},
                                {"MinHeight",       "60"},
                                {"MaxHeight",       "60"},
                                {"MinHeightOffset", "-20"},
                                {"MaxHeightOffset", "10"},
                                {"HeightOffset",    "-30"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "0"},
                                {"RandomPrimitive", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "6.247684"},
                                {"Form_n1", "2.712962"},
                                {"Form_n2", "4.574076"},
                                {"Form_n3", "13.84258"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "5.113516"},
                                {"Form_n1", "2.064866"},
                                {"Form_n2", "5.870267"},
                                {"Form_n3", "6.71353"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",  "Base"},
                                {"MinHeightOffset", "-32"},
                                {"HeightOffset",    "-128"},
                                {"RegionRatio",     "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "0"},
                                {"RandomPrimitive", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "6.180825"},
                                {"Form_n1", "4.19296"},
                                {"Form_n2", "8.36165"},
                                {"Form_n3", "5.493932"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "6.860413"},
                                {"Form_n2", "6.049693"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",                  "False"},
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "10"},
                                {"Height",                  "2.5"},
                                {"RegionSize",              "100"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "0"},
                                {"OffsetType",              "Base"},
                                {"SmoothRadius",            "0"},
                                {"SeedOffset",              "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",       "False"},
                                {"FeatureType",  "Tube"},
                                {"Width",        "10"},
                                {"Height",       "2.5"},
                                {"RegionSize",   "100"},
                                {"HeightOffset", "0"},
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Height",               "32"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Active",               "False"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "8"},
                                {"SharpToRoundFeatures", "-1"},
                                {"Active",               "True"},
                                {"NoiseVoxelType",       "RandomRock"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Height",               "50"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.1"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "2"},
                                {"AltitudeErosion", "0"},
                                {"SlopeErosion",    "0"},
                                {"Width",           "2500"},
                                {"RegionRatio",     "0.2"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "False"},
                                {"NoiseVoxelType", "Base"},
                                {"NoiseGridType",  "Cone"},
                                {"MinWidth",       "20"},
                                {"MaxWidth",       "20"},
                                {"MinHeight",      "10"},
                                {"MaxHeight",      "10"},
                                {"HeightOffset",   "-5"},
                                {"OffsetType",     "All"},
                                {"RegionRatio",    "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "2"},
                                {"Active",       "True"},
                                {"Height",       "3"},
                                {"RegionGain",   "0"},
                                {"SmoothRadius", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "0"},
                                {"SeedOffset",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "0"},
                                {"Height", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "False"},
                                {"Subtract",       "False"},
                                {"NoiseVoxelType", "Base"},
                                {"NoiseGridType",  "Torus"},
                                {"MinWidth",       "200"},
                                {"MaxWidth",       "200"},
                                {"MinHeight",      "100"},
                                {"MaxHeight",      "100"},
                                {"HeightOffset",   "0"},
                                {"RegionRatio",    "0.01"},
                                {"RegionScale",    "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw", "90"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "150"},
                                {"Height",                  "25"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "10"},
                                {"HeightOffset",            "0"},
                                {"SmoothRadius",            "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Trench",                  "True"},
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "125"},
                                {"Height",                  "50"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "10"},
                                {"OffsetType",              "Zero"},
                                {"SmoothRadius",            "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Trench",       "True"},
                                {"Octaves",      "1"},
                                {"RegionSize",   "300"},
                                {"OffsetType",   "Base"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Height",               "96"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Active",               "False"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "8"},
                                {"SharpToRoundFeatures", "-1"},
                                {"Active",               "True"},
                                {"NoiseVoxelType",       "Base"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Height",               "50"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.1"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "2"},
                                {"AltitudeErosion", "0"},
                                {"SlopeErosion",    "0"},
                                {"Width",           "3000"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "False"},
                                {"NoiseVoxelType", "Base"},
                                {"NoiseGridType",  "Cone"},
                                {"MinWidth",       "20"},
                                {"MaxWidth",       "20"},
                                {"MinHeight",      "10"},
                                {"MaxHeight",      "10"},
                                {"HeightOffset",   "-5"},
                                {"OffsetType",     "All"},
                                {"RegionRatio",    "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "2"},
                                {"Active",       "True"},
                                {"Height",       "3"},
                                {"RegionGain",   "0"},
                                {"SmoothRadius", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "0"},
                                {"SeedOffset",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "0"},
                                {"Height", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "False"},
                                {"Subtract",       "False"},
                                {"NoiseVoxelType", "Base"},
                                {"NoiseGridType",  "Torus"},
                                {"MinWidth",       "200"},
                                {"MaxWidth",       "200"},
                                {"MinHeight",      "100"},
                                {"MaxHeight",      "100"},
                                {"HeightOffset",   "0"},
                                {"RegionRatio",    "0.01"},
                                {"RegionScale",    "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw", "90"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "7"},
                                {"Form_n1", "20.45"},
                                {"Form_n2", "-0.33"},
                                {"Form_n3", "-3.54"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                               {"NoiseVoxelType",          "Base"},
                                {"Width",                   "150"},
                                {"Height",                  "25"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "10"},
                                {"HeightOffset",            "0"},
                                {"SmoothRadius",            "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Trench",                  "True"},
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "125"},
                                {"Height",                  "50"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "10"},
                                {"OffsetType",              "Zero"},
                                {"SmoothRadius",            "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Trench",       "True"},
                                {"Octaves",      "1"},
                                {"RegionSize",   "300"},
                                {"OffsetType",   "Base"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Height",     "32"},
                                {"Width",      "800"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Active",               "False"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"PerturbFeatures", "0"},
                                {"SlopeErosion",    "0"},
                                {"NoiseVoxelType",  "RandomRock"},
                                {"RegionGain",      "0"},
                                {"OffsetType",      "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Active",               "False"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "RandomRock"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "400"},
                                {"Width",       "2500"},
                                {"RegionRatio", "0.2"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "False"},
                                {"MaximumLOD",      "3"},
                                {"MinWidth",        "10"},
                                {"MaxWidth",        "30"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-8"},
                                {"MaxHeightOffset", "-5"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.025"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Rock"},
                                {"Octaves",        "8"},
                                {"RegionSize",     "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "20"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Height",     "96"},
                                {"Width",      "800"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Active",               "False"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"PerturbFeatures", "0"},
                                {"NoiseVoxelType",  "Base"},
                                {"RegionRatio",     "0.7"},
                                {"RegionGain",      "0"},
                                {"OffsetType",      "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Active",               "False"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "Base"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "400"},
                                {"Width",       "3000"},
                                {"RegionRatio", "1"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "False"},
                                {"MaximumLOD",      "3"},
                                {"MinWidth",        "10"},
                                {"MaxWidth",        "30"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-8"},
                                {"MaxHeightOffset", "-5"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.025"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Rock"},
                                {"Octaves",        "8"},
                                {"RegionSize",     "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"PerturbFeatures", "0.201835"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures", "0"},
                                {"AltitudeErosion", "0"},
                                {"RidgeErosion",    "0"},
                                {"SlopeErosion",    "1"},
                                {"NoiseVoxelType",  "RandomRock"},
                                {"Width",           "350"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "2"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "True"},
                                {"NoiseVoxelType", "RandomRock"},
                                {"RegionGain",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "2"},
                                {"AltitudeErosion", "0"},
                                {"RidgeErosion",    "0"},
                                {"RegionRatio",     "0.9"},
                                {"RegionScale",     "1"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",      "True"},
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Hemisphere",      "False"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "10"},
                                {"MinHeightOffset", "10"},
                                {"MaxHeightOffset", "10"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Height",     "10"},
                                {"RegionGain", "0"},
                                {"OffsetType", "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Trench",                  "False"},
                                {"NoiseVoxelType",          "Rock"},
                                {"Width",                   "100"},
                                {"Height",                  "40"},
                                {"Octaves",                 "8"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "25"},
                                {"HeightVarianceFrequency", "600"},
                                {"SmoothRadius",            "20"},
                                {"SeedOffset",              "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"PerturbFeatures", "0.201835"},
                                {"Height",          "96"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.5"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures", "0"},
                                {"AltitudeErosion", "0"},
                                {"RidgeErosion",    "0"},
                                {"SlopeErosion",    "1"},
                                {"NoiseVoxelType",  "Base"},
                                {"Width",           "500"},
                                {"RegionRatio",     "0.8"},
                                {"RegionScale",     "2"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "2"},
                                {"AltitudeErosion", "0"},
                                {"RidgeErosion",    "0"},
                                {"Width",           "3000"},
                                {"RegionScale",     "1"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",      "True"},
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.05"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Hemisphere",      "False"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "10"},
                                {"MinHeightOffset", "10"},
                                {"MaxHeightOffset", "10"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "5"},
                                {"Height",     "10"},
                                {"RegionGain", "0"},
                                {"OffsetType", "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Trench",                  "False"},
                                {"NoiseVoxelType",          "Rock"},
                                {"Width",                   "100"},
                                {"Height",                  "40"},
                                {"Octaves",                 "8"},
                                {"RegionSize",              "600"},
                                {"HeightVarianceAmplitude", "25"},
                                {"HeightVarianceFrequency", "600"},
                                {"SmoothRadius",            "20"},
                                {"SeedOffset",              "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "RandomRock"},
                                {"RegionGain",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Rock"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "70"},
                                {"MaxHeight",       "70"},
                                {"MinHeightOffset", "20"},
                                {"MaxHeightOffset", "50"},
                                {"HeightOffset",    "-60"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "0.5"},
                                {"Height",             "0.5"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "20"},
                                {"MaxHeight",       "20"},
                                {"MinHeightOffset", "20"},
                                {"MaxHeightOffset", "50"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Base"},
                                {"RegionGain",     "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",       "3000"},
                                {"RegionRatio", "1"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Rock"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "70"},
                                {"MaxHeight",       "70"},
                                {"MinHeightOffset", "20"},
                                {"MaxHeightOffset", "50"},
                                {"HeightOffset",    "-60"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "0.5"},
                                {"Height",             "0.5"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "20"},
                                {"MaxHeight",       "20"},
                                {"MinHeightOffset", "20"},
                                {"MaxHeightOffset", "50"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "0.02"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "1"},
                                {"PerturbFeatures",      "0.2"},
                                {"SlopeErosion",         "1"},
                                {"NoiseVoxelType",       "RandomRock"},
                                {"Width",                "500"},
                                {"RegionRatio",          "0.3"},
                                {"RegionScale",          "2"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "RandomRock"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "2"},
                                {"SharpToRoundFeatures", "0"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Width",                "2500"},
                                {"RegionRatio",          "0.2"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",  "Rock"},
                                {"MinWidth",        "10"},
                                {"MaxWidth",        "30"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-8"},
                                {"MaxHeightOffset", "-5"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.0125"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                                {"SeedOffset",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Hemisphere",     "True"},
                                {"NoiseVoxelType", "Base"},
                                {"NoiseGridType",  "Sphere"},
                                {"MinWidth",       "60"},
                                {"MaxWidth",       "60"},
                                {"MinHeight",      "100"},
                                {"MaxHeight",      "100"},
                                {"HeightOffset",   "-15"},
                                {"OffsetType",     "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "3"},
                                {"Active",     "True"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "1"},
                                {"Height", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VaryYaw",      "45"},
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"MinWidth",      "40"},
                                {"MaxWidth",      "40"},
                                {"MinHeight",     "60"},
                                {"MaxHeight",     "60"},
                                {"HeightOffset",  "-25"},
                                {"RegionRatio",   "0.0002"},
                                {"RegionScale",   "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "1"},
                                {"Thickness", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Base"},
                                {"Width",          "50"},
                                {"Height",         "25"},
                                {"Octaves",        "8"},
                                {"RegionSize",     "600"},
                                {"HeightOffset",   "0"},
                                {"OffsetType",     "Base"},
                                {"SmoothRadius",   "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FeatureType",  "Tube"},
                                {"Width",        "10"},
                                {"Height",       "2.5"},
                                {"Octaves",      "3"},
                                {"RegionSize",   "100"},
                                {"HeightOffset", "0"},
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoSeaBaseLevel",          "0"},
                                {"BuildingSmoothingRadius", "25"},
                                {"BuildingSmoothingHeight", "25"},
                                {"WaterFadeInDistance",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"PerturbFeatures",      "0.201835"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"Height",               "96"},
                                {"Width",                "800"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Height",               "8"},
                                {"Width",                "100"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "1"},
                                {"PerturbFeatures",      "0.2"},
                                {"SlopeErosion",         "1"},
                                {"NoiseVoxelType",       "Base"},
                                {"Width",                "500"},
                                {"RegionRatio",          "0.7"},
                                {"RegionScale",          "2"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "5"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"MaximumLOD",           "4"},
                                {"NoiseVoxelType",       "Base"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"OffsetType",           "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "2"},
                                {"SharpToRoundFeatures", "0"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "1"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",  "Rock"},
                                {"MinWidth",        "10"},
                                {"MaxWidth",        "30"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-8"},
                                {"MaxHeightOffset", "-5"},
                                {"OffsetType",      "All"},
                                {"RegionRatio",     "0.0125"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                                {"SeedOffset",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Hemisphere",     "True"},
                                {"NoiseVoxelType", "Base"},
                                {"NoiseGridType",  "Sphere"},
                                {"MinWidth",       "60"},
                                {"MaxWidth",       "60"},
                                {"MinHeight",      "100"},
                                {"MaxHeight",      "100"},
                                {"HeightOffset",   "-15"},
                                {"OffsetType",     "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "3"},
                                {"Active",     "True"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "1"},
                                {"Height", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Heridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "20"},
                                {"MaxWidth",     "20"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "30"},
                                {"HeightOffset", "-2"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Heridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Iridium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseGridType", "Cube"},
                                {"MinWidth",      "20"},
                                {"MaxWidth",      "20"},
                                {"MinHeight",     "20"},
                                {"MaxHeight",     "20"},
                                {"HeightOffset",  "-10"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Iridium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "1"},
                                {"MinWidth",     "25"},
                                {"MaxWidth",     "25"},
                                {"MinHeight",    "25"},
                                {"MaxHeight",    "25"},
                                {"HeightOffset", "-12"},
                                {"RegionRatio",  "0.00025"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Copper"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Nickel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"NoiseVoxelType",  "Substance_2"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-15"},
                                {"RegionRatio",     "0.005"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "1"},
                                {"Active",     "True"},
                                {"Height",     "3"},
                                {"Width",      "10"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Nickel"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
                                {"NoiseVoxelType",  "Substance_3"},
                                {"NoiseGridType",   "Torus"},
                                {"MinWidth",        "50"},
                                {"MaxWidth",        "50"},
                                {"MinHeight",       "30"},
                                {"MaxHeight",       "30"},
                                {"MinHeightOffset", "-15"},
                                {"MaxHeightOffset", "-15"},
                                {"HeightOffset",    "0"},
                                {"RegionRatio",     "0.002"},
                                {"RegionScale",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Aluminium"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",     "0.25"},
                                {"Thickness", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Gold"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"MinWidth",     "40"},
                                {"MaxWidth",     "40"},
                                {"MinHeight",    "60"},
                                {"MaxHeight",    "60"},
                                {"HeightOffset", "-25"},
                                {"RegionRatio",  "0.0002"},
                                {"RegionScale",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Gold"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Substance_3"},
                                {"MinWidth",       "30"},
                                {"MinHeight",      "20"},
                                {"MaxHeight",      "20"},
                                {"HeightOffset",   "-25"},
                                {"OffsetType",     "Base"},
                                {"RegionRatio",    "0.05"},
                                {"RegionScale",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"Height",     "5"},
                                {"Width",      "30"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType", "Base"},
                                {"Width",          "50"},
                                {"Height",         "25"},
                                {"Octaves",        "8"},
                                {"RegionSize",     "600"},
                                {"HeightOffset",   "0"},
                                {"OffsetType",     "Base"},
                                {"SmoothRadius",   "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FeatureType",  "Tube"},
                                {"Width",        "10"},
                                {"Height",       "2.5"},
                                {"Octaves",      "3"},
                                {"RegionSize",   "100"},
                                {"HeightOffset", "0"},
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "3"},
                                {"HeightOffset", "30"},
                                {"OffsetType",   "Zero"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",              "3"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "30"},
                                {"OffsetType",              "Zero"},
                            }
                        },
                    }
                },
            }
        },
    }
}