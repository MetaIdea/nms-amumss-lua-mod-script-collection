NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_DUD_TerraFirma_v443-A.pak",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.43",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "32"},
                                {"RegionRatio", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "64"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionRatio",  "0.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "100"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "400"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "80"},
                                {"TileBlendMeters",         "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Underwater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "100"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "1200"},
                                {"HeightVarianceAmplitude", "40"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "80"},
                                {"TileBlendMeters",         "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion",   "0.5"},
                                {"RidgeErosion",      "0.01"},
                                {"Height",            "32"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "275"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"AltitudeErosion",   "0.5"},
                                {"SlopeErosion",      "1"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "275"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeBias",   "0.4"},
                                {"RegionRatio", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "10"},
                                {"RidgeErosion",      "0.01"},
                                {"Width",             "2000"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "2"},
                                {"PlateauSharpness",  "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.11"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion",   "0.5"},
                                {"RidgeErosion",      "0.11"},
                                {"Height",            "32"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "275"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"AltitudeErosion",   "0.5"},
                                {"SlopeErosion",      "1"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "275"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeBias",            "0.4"},
                                {"SharpToRoundFeatures", "1"},
                                {"Height",               "20"},
                                {"RegionRatio",          "0.4"},
                                {"RegionScale",          "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "10"},
                                {"RidgeErosion",      "0.11"},
                                {"Width",             "3000"},
                                {"PlateauStratas",    "4"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "32"},
                                {"RegionRatio", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.1"},
                                {"RegionScale", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0"},
                                {"RegionRatio",  "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0"},
                                {"RegionRatio",  "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0"},
                                {"Height",       "24"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width", "3000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionGain",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "64"},
                                {"RegionRatio", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionSize", "700"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "192"},
                                {"Height", "96"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "192"},
                                {"Height", "96"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "70"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "200"},
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"RegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "4"},
                                {"RegionSize",   "600"},
                                {"HeightOffset", "0"},
                                {"OffsetType",   "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"RegionSize", "150"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "50"},
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"RegionSize", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "4"},
                                {"RegionSize",   "1000"},
                                {"HeightOffset", "0"},
                                {"OffsetType",   "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "20"},
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "75"},
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "50"},
                                {"Height",  "20"},
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",       "64"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"RegionRatio",          "0.1"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "64"},
                                {"MaxWidth",     "64"},
                                {"MinHeight",    "64"},
                                {"MaxHeight",    "64"},
                                {"HeightOffset", "-30"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "64"},
                                {"MaxWidth",     "64"},
                                {"MinHeight",    "64"},
                                {"MaxHeight",    "64"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.15"},
                                {"PerturbFeatures", "0.15"},
                                {"RidgeErosion",    "0.01"},
                                {"Height",          "40"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "6"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "64"},
                                {"MaxWidth",     "64"},
                                {"MinHeight",    "64"},
                                {"MaxHeight",    "64"},
                                {"HeightOffset", "-30"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "64"},
                                {"MaxWidth",     "64"},
                                {"MinHeight",    "64"},
                                {"MaxHeight",    "64"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",   "100"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "60"},
                                {"Octaves",    "3"},
                                {"RegionSize", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "3"},
                                {"RegionSize", "175"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",       "64"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionRatio",  "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"PerturbFeatures", "0"},
                                {"RegionGain",      "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0"},
                                {"RegionRatio",  "0.95"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"PerturbFeatures", "0"},
                                {"RegionGain",      "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "7"},
                                {"Width",       "4000"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"PerturbFeatures", "0.2"},
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"PerturbFeatures", "0.2"},
                                {"AltitudeErosion", "0.5"},
                                {"Height",          "32"},
                                {"Width",           "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"PerturbFeatures", "0.2"},
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"PerturbFeatures", "0.2"},
                                {"AltitudeErosion", "0.5"},
                                {"Height",          "32"},
                                {"Width",           "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "32"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauSharpness",     "6"},
                                {"PlateauRegionSize",    "250"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"Height",            "256"},
                                {"RegionRatio",       "0.3"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "4"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0.1"},
                                {"PerturbFeatures",      "0.1"},
                                {"RidgeErosion",         "0.01"},
                                {"RegionRatio",          "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "10"},
                                {"SharpToRoundFeatures", "0"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "0.3"},
                                {"RegionScale",          "6"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "6"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionScale",  "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "32"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauSharpness",     "6"},
                                {"PlateauRegionSize",    "250"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"Height",            "256"},
                                {"RegionRatio",       "0.3"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"AmplifyFeatures", "0.15"},
                                {"PerturbFeatures", "0.15"},
                                {"RidgeErosion",    "0.01"},
                                {"Height",          "48"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "10"},
                                {"SharpToRoundFeatures", "0"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "0.3"},
                                {"RegionScale",          "6"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "8"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",    "128"},
                                {"MaxWidth",    "192"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",    "128"},
                                {"MaxWidth",    "192"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0.99"},
                                {"RemapToMin",   "0.65"},
                                {"Height",       "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.1"},
                                {"RegionGain",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionRatio",  "0.15"},
                                {"RegionScale",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion",      "0.99"},
                                {"Height",            "200"},
                                {"RegionRatio",       "0.2"},
                                {"PlateauStratas",    "20"},
                                {"PlateauRegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-20"},
                                {"RegionScale",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetType",  "Zero"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "150"},
                                {"Height",       "96"},
                                {"Octaves",      "3"},
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0.99"},
                                {"RemapToMin",   "0.65"},
                                {"Height",       "40"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"RegionRatio",  "0.3"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.3"},
                                {"RegionScale", "6"},
                                {"RegionGain",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"Height",       "16"},
                                {"RegionRatio",  "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion",      "0.99"},
                                {"Height",            "1300"},
                                {"RegionRatio",       "0.3"},
                                {"RegionScale",       "2"},
                                {"PlateauStratas",    "20"},
                                {"PlateauSharpness",  "8"},
                                {"PlateauRegionSize", "600"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-20"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OffsetType",  "Zero"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "250"},
                                {"Height",       "96"},
                                {"Octaves",      "3"},
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "32"},
                                {"RegionRatio", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "1500"},
                                {"RegionScale",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "50"},
                                {"Height",                  "60"},
                                {"RegionSize",              "400"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightOffset",            "90"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "1500"},
                                {"RegionScale",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FloatingIslandsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "70"},
                                {"Height",       "60"},
                                {"RegionSize",   "800"},
                                {"HeightOffset", "90"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",   "0"},
                                {"PerturbFeatures",   "0.201835"},
                                {"Width",             "800"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "425"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeGain",         "0.5"},
                                {"AmplifyFeatures",   "0"},
                                {"AltitudeErosion",   "0.5"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "32"},
                                {"RegionRatio",       "0.3"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"SlopeBias",         "0.5"},
                                {"AltitudeErosion",   "0.5"},
                                {"Width",             "350"},
                                {"RegionRatio",       "0.6"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"OffsetType",        "Base"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "200"},
                                {"TileBlendMeters",   "48"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeBias",         "0.4"},
                                {"AmplifyFeatures",   "0.1"},
                                {"PerturbFeatures",   "0.1"},
                                {"RegionRatio",       "0.1"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "3"},
                                {"PlateauRegionSize", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "10"},
                                {"SlopeGain",         "0.5"},
                                {"RidgeErosion",      "0.25"},
                                {"RemapFromMin",      "0.1"},
                                {"RemapFromMax",      "0.7"},
                                {"RemapToMax",        "1"},
                                {"Height",            "1200"},
                                {"Width",             "3000"},
                                {"RegionRatio",       "0.9"},
                                {"RegionGain",        "0.25"},
                                {"PlateauStratas",    "3"},
                                {"PlateauSharpness",  "10"},
                                {"PlateauRegionSize", "400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",   "0"},
                                {"PerturbFeatures",   "0.201835"},
                                {"Width",             "800"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "425"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeGain",         "0.5"},
                                {"AmplifyFeatures",   "0"},
                                {"AltitudeErosion",   "0.5"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "32"},
                                {"RegionRatio",       "0.3"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"SlopeBias",         "0.5"},
                                {"AltitudeErosion",   "0.5"},
                                {"Width",             "350"},
                                {"RegionRatio",       "0.6"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"OffsetType",        "Base"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "200"},
                                {"TileBlendMeters",   "48"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeBias",            "0.4"},
                                {"SharpToRoundFeatures", "1"},
                                {"AmplifyFeatures",      "0.15"},
                                {"PerturbFeatures",      "0.15"},
                                {"Height",               "20"},
                                {"RegionRatio",          "0.4"},
                                {"RegionScale",          "6"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauSharpness",     "3"},
                                {"PlateauRegionSize",    "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "10"},
                                {"SlopeGain",         "0.7"},
                                {"RidgeErosion",      "0.25"},
                                {"RemapFromMin",      "0.1"},
                                {"RemapFromMax",      "0.7"},
                                {"RemapToMax",        "1"},
                                {"Height",            "1200"},
                                {"Width",             "4000"},
                                {"RegionRatio",       "0.9"},
                                {"RegionScale",       "1.25"},
                                {"RegionGain",        "0.5"},
                                {"PlateauStratas",    "3"},
                                {"PlateauSharpness",  "10"},
                                {"PlateauRegionSize", "400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Continent"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionGain", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GrandCanyonPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0.01"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.3"},
                                {"RegionGain",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "8"},
                                {"SlopeErosion", "0"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "1400"},
                                {"RegionRatio",          "0.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0.01"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.5"},
                                {"RegionGain",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "8"},
                                {"SlopeErosion", "0"},
                                {"Height",       "256"},
                                {"RegionScale",  "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "1400"},
                                {"RegionRatio",          "0.95"},
                                {"RegionScale",          "1.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "1"},
                                {"MinWidth",      "25"},
                                {"MaxWidth",      "25"},
                                {"MinHeight",     "25"},
                                {"MaxHeight",     "25"},
                                {"HeightOffset",  "-12"},
                                {"RegionRatio",   "0.00025"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MountainRavinesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.11"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.11"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.11"},
                                {"Height",       "64"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.11"},
                                {"RegionRatio",  "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",       "4000"},
                                {"RegionRatio", "0.8"},
                                {"RegionScale", "3"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",       "40"},
                                {"RegionSize",   "800"},
                                {"HeightOffset", "24"},
                                {"OffsetType",   "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",       "40"},
                                {"RegionSize",   "900"},
                                {"HeightOffset", "24"},
                                {"OffsetType",   "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.31"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.31"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.31"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.31"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Gain",        "0.3"},
                                {"Width",       "4000"},
                                {"RegionRatio", "0.6"},
                                {"RegionScale", "2"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "1"},
                                {"MinWidth",      "25"},
                                {"MaxWidth",      "25"},
                                {"MinHeight",     "25"},
                                {"MaxHeight",     "25"},
                                {"HeightOffset",  "-12"},
                                {"RegionRatio",   "0.00025"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HugeArchesPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "144"},
                                {"Height",       "40"},
                                {"HeightOffset", "24"},
                                {"OffsetType",   "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "144"},
                                {"Height",       "40"},
                                {"HeightOffset", "24"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "4"},
                                {"RegionRatio", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.01"},
                                {"Height",       "64"},
                                {"RegionRatio",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "5"},
                                {"Gain",        "0.3"},
                                {"Height",      "1500"},
                                {"RegionRatio", "0.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "1"},
                                {"MinWidth",      "25"},
                                {"MaxWidth",      "25"},
                                {"MinHeight",     "25"},
                                {"MaxHeight",     "25"},
                                {"HeightOffset",  "-12"},
                                {"RegionRatio",   "0.00025"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "1500"},
                                {"RegionRatio", "0.8"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlienPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                                {"Height",          "32"},
                                {"RegionRatio",     "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.2"},
                                {"RegionRatio",  "0.15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"RegionRatio",          "0.1"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauRegionSize",    "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-210"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "1"},
                                {"MinWidth",      "25"},
                                {"MaxWidth",      "25"},
                                {"MinHeight",     "25"},
                                {"MaxHeight",     "25"},
                                {"HeightOffset",  "-12"},
                                {"RegionRatio",   "0.00025"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                                {"RegionScale",     "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "6"},
                                {"AmplifyFeatures",   "0.15"},
                                {"PerturbFeatures",   "0.15"},
                                {"RidgeErosion",      "0.01"},
                                {"Height",            "40"},
                                {"RegionRatio",       "0.2"},
                                {"RegionScale",       "6"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-210"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CratersPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "60"},
                                {"Octaves",    "3"},
                                {"RegionSize", "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "3"},
                                {"RegionSize", "175"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlateauStratas",    "3"},
                                {"PlateauRegionSize", "650"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "32"},
                                {"RegionRatio",  "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.31"},
                                {"Height",       "64"},
                                {"RegionRatio",  "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionRatio",  "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "4"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "4"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "1"},
                                {"MinWidth",      "25"},
                                {"MaxWidth",      "25"},
                                {"MinHeight",     "25"},
                                {"MaxHeight",     "25"},
                                {"HeightOffset",  "-12"},
                                {"RegionRatio",   "0.00025"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlateauStratas",    "3"},
                                {"PlateauRegionSize", "650"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.99"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "4"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "8"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CavernsPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "1300"},
                                {"Width",       "7500"},
                                {"RegionRatio", "0.95"},
                                {"RegionScale", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "7"},
                                {"Height",      "1300"},
                                {"Width",       "9500"},
                                {"RegionScale", "7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "1"},
                                {"MinWidth",      "25"},
                                {"MaxWidth",      "25"},
                                {"MinHeight",     "25"},
                                {"MaxHeight",     "25"},
                                {"HeightOffset",  "-12"},
                                {"RegionRatio",   "0.00025"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AlpinePrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "4"},
                                {"AltitudeErosion", "0.5"},
                                {"Width",           "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "4"},
                                {"AltitudeErosion", "0.5"},
                                {"Width",           "7000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Copper"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "1"},
                                {"MinWidth",      "25"},
                                {"MaxWidth",      "25"},
                                {"MinHeight",     "25"},
                                {"MaxHeight",     "25"},
                                {"HeightOffset",  "-12"},
                                {"RegionRatio",   "0.00025"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"LilyPadPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "32"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauSharpness",     "6"},
                                {"PlateauRegionSize",    "250"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"Height",            "256"},
                                {"RegionRatio",       "0.3"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "4"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0.1"},
                                {"PerturbFeatures",      "0.1"},
                                {"RidgeErosion",         "0.01"},
                                {"RegionRatio",          "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "5"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "20.99"},
                                {"RegionRatio",       "0.5"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "10"},
                                {"SharpToRoundFeatures", "0"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "1200"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "0.3"},
                                {"RegionScale",          "6"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "6"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Min", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RegionScale",  "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "32"},
                                {"RegionRatio",          "0.3"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauSharpness",     "6"},
                                {"PlateauRegionSize",    "250"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"Height",            "256"},
                                {"RegionRatio",       "0.3"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "6"},
                                {"PlateauRegionSize", "200"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "5"},
                                {"AmplifyFeatures", "0.15"},
                                {"PerturbFeatures", "0.15"},
                                {"RidgeErosion",    "0.01"},
                                {"Height",          "48"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PerturbFeatures",  "0.3"},
                                {"AltitudeErosion",  "0.2"},
                                {"Height",           "99.99"},
                                {"RegionScale",      "3"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "10"},
                                {"SharpToRoundFeatures", "0"},
                                {"AltitudeErosion",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "0.3"},
                                {"RegionScale",          "6"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "8"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",    "128"},
                                {"MaxWidth",    "192"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",    "128"},
                                {"MaxWidth",    "192"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Heridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Heridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Iridium"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Iridium"},
                            ["VALUE_MATCH"] = "2",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Copper"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "5"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Copper", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Nickel"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "1"},
                                {"Active",  "True"},
                                {"Height",  "3"},
                                {"Width",   "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Nickel", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Nickel", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Aluminium"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",        "True"},
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
                                {"VaryYaw",         "45"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Aluminium", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "5"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Aluminium", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "0.25"},
                                {"Thickness",      "0.25"},
                                {"CornerRadiusXY", "1"},
                                {"CornerRadiusZ",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Gold"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DesertPrime", "TkVoxelGeneratorSettingsElement.xml", "Max", "TkVoxelGeneratorData.xml", "Resources_Gold", "TkNoiseGridData.xml", "VaryRoll", "0"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "10"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Emeril"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",     "True"},
                                {"MinWidth",     "30"},
                                {"MinHeight",    "20"},
                                {"MaxHeight",    "20"},
                                {"HeightOffset", "-25"},
                                {"OffsetType",   "Base"},
                                {"RegionRatio",  "0.05"},
                                {"RegionScale",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "True"},
                                {"Height", "5"},
                                {"Width",  "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Resources_Emeril", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Depth",          "1"},
                                {"Thickness",      "1"},
                                {"CornerRadiusXY", "0"},
                                {"CornerRadiusZ",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",  "20"},
                                {"Octaves", "3"},
                            }
                        },
                    }
                },
            }
        },
    }
}