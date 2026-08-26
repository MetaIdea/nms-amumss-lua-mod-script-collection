NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "TERRALYSIS_ORGANIC",
["MOD_AUTHOR"]      = "BornTBFast",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Causes the terrain generation to be much more extreme",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TextureFadeDistance",            "8.000000"},
                {"TextureFadePower",               "0.650000"},
                {"TextureScaleMultiplier",         "3.800000"},
                {"TextureScalePower",              "4.200000"},
                {"HeightBlend",                    "0.180000"},
                {"SmoothStepBelow",                "0.018000"},
                {"SmoothStepAbove",                "0.018000"},
                {"SmoothStepStrength",             "0.160000"},
                {"TileBlendMultiplier",            "1.120000"},
                {"NumGeneratorCalls",              "12"},
                {"NumPolygoniseCalls",             "24"},
                {"NumPostPolygoniseCalls",         "12"},
                {"MinHighWaterRegionRatio",        "0.620000"},
                {"MinHighWaterRatio",              "0.260000"},
                {"MaxHighWaterRatio",              "0.460000"},
                {"MinWaterRatio",                  "0.008000"},
                {"MaxWaterRatio",                  "0.040000"},
                {"TextureBlendScale0",             "0.001200"},
                {"TextureBlendScale1",             "0.012000"},
                {"TextureBlendScale2",             "0.650000"},
                {"TextureBlendOffset",             "0.180000"},
                {"TerrainUndoCubesNoiseThreshold", "0.320000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "708.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.517500"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "2048.000000"},
                {"RegionScale",          "1.920000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012725"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.101800"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "5.880000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "104.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "20.700000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "708.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.517500"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "2048.000000"},
                {"RegionScale",          "1.920000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012725"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.101800"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "5.880000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "104.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "20.700000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.535600"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.206000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "2048.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.013175"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "21.280000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.652500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.587250"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.535600"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.206000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "2048.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.013175"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "21.280000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.652500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.587250"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.205920"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.396000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "0.980000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "39.648000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.205920"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.396000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "0.980000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "39.648000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.025450"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "11.760000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "105.600000"},
                {"Height",                  "52.800000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "44.896000"},
                {"HeightVarianceFrequency", "422.400000"},
                {"SmoothRadius",            "11.480000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "97.920000"},
                {"Height",                  "49.920000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "34.843200"},
                {"HeightVarianceFrequency", "470.000000"},
                {"SmoothRadius",            "6.888000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "52.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "10.350000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.025450"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "11.760000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "105.600000"},
                {"Height",                  "52.800000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "44.896000"},
                {"HeightVarianceFrequency", "422.400000"},
                {"SmoothRadius",            "11.480000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "97.920000"},
                {"Height",                  "49.920000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "34.843200"},
                {"HeightVarianceFrequency", "470.000000"},
                {"SmoothRadius",            "6.888000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "52.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "10.350000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Active",               "true"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.522600"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.049700"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.049700"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "1920.000000"},
                {"HeightVarianceAmplitude", "43.776000"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "131.840000"},
                {"RegionSize",              "1800.000000"},
                {"HeightVarianceAmplitude", "19.699200"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "6.054400"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Active",               "true"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.522600"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.049700"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.049700"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "1920.000000"},
                {"HeightVarianceAmplitude", "43.776000"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "131.840000"},
                {"RegionSize",              "1800.000000"},
                {"HeightVarianceAmplitude", "19.699200"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "6.054400"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.203600"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.203600"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "57.400000"},
                {"RegionSize",              "1040.000000"},
                {"HeightVarianceAmplitude", "23.520000"},
                {"HeightVarianceFrequency", "215.600000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "56.000000"},
                {"Height",                  "112.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "14.896000"},
                {"HeightVarianceFrequency", "247.500000"},
                {"SmoothRadius",            "2.700000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "26.000000"},
                {"RegionSize",              "480.000000"},
                {"HeightVarianceAmplitude", "5.175000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "3.440000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "25.750000"},
                {"RegionSize",              "225.000000"},
                {"HeightVarianceAmplitude", "4.657500"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.203600"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.203600"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "57.400000"},
                {"RegionSize",              "1040.000000"},
                {"HeightVarianceAmplitude", "23.520000"},
                {"HeightVarianceFrequency", "215.600000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "56.000000"},
                {"Height",                  "112.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "14.896000"},
                {"HeightVarianceFrequency", "247.500000"},
                {"SmoothRadius",            "2.700000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "26.000000"},
                {"RegionSize",              "480.000000"},
                {"HeightVarianceAmplitude", "5.175000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "3.440000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "25.750000"},
                {"RegionSize",              "225.000000"},
                {"HeightVarianceAmplitude", "4.657500"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.192000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.072000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.983500"},
                {"Gain",                 "0.485000"},
                {"Width",                "1416.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.331200"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.215040"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.053500"},
                {"Gain",                 "0.505000"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.730080"},
                {"AmplifyFeatures",      "1.023408"},
                {"PerturbFeatures",      "0.550541"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.590976"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.103500"},
                {"Gain",                 "0.525000"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.212160"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.771120"},
                {"PerturbFeatures",      "0.387763"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.123500"},
                {"Gain",                 "0.545000"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.408000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.281808"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.314184"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.063500"},
                {"Gain",                 "0.495000"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.313200"},
                {"AmplifyFeatures",      "0.354960"},
                {"PerturbFeatures",      "0.350784"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.225504"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.183500"},
                {"Gain",                 "0.475000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.241920"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.107520"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.023500"},
                {"Gain",                 "0.485000"},
                {"Width",                "5120.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.105600"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.033120"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.953500"},
                {"Gain",                 "0.465000"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012144"},
                {"RegionScale", "1.010000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "82.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "31.388000"},
                {"HeightVarianceFrequency", "630.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.529200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.672000"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.510000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.495000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.445500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.192000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.072000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.983500"},
                {"Gain",                 "0.485000"},
                {"Width",                "1416.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.331200"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.215040"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.053500"},
                {"Gain",                 "0.505000"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.730080"},
                {"AmplifyFeatures",      "1.023408"},
                {"PerturbFeatures",      "0.550541"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.590976"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.103500"},
                {"Gain",                 "0.525000"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.212160"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.771120"},
                {"PerturbFeatures",      "0.387763"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.123500"},
                {"Gain",                 "0.545000"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.408000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.281808"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.314184"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.063500"},
                {"Gain",                 "0.495000"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.313200"},
                {"AmplifyFeatures",      "0.354960"},
                {"PerturbFeatures",      "0.350784"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.225504"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.183500"},
                {"Gain",                 "0.475000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.241920"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.107520"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.023500"},
                {"Gain",                 "0.485000"},
                {"Width",                "5120.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.105600"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.033120"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.953500"},
                {"Gain",                 "0.465000"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012144"},
                {"RegionScale", "1.010000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "82.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "31.388000"},
                {"HeightVarianceFrequency", "630.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.529200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.672000"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.510000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.495000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.445500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1150.000000"},
                {"RegionRatio",          "0.940680"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "1.920000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.012425"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1150.000000"},
                {"RegionRatio",          "0.940680"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "1.920000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.012425"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "4480.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.209040"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.402000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "10240.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "104.960000"},
                {"HeightVarianceAmplitude", "18.636800"},
                {"HeightVarianceFrequency", "394.240000"},
                {"SmoothRadius",            "4.787200"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "960.000000"},
                {"HeightVarianceAmplitude", "43.776000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "11.008000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "131.840000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "19.699200"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "12.108800"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.209040"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.402000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "10240.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "104.960000"},
                {"HeightVarianceAmplitude", "18.636800"},
                {"HeightVarianceFrequency", "394.240000"},
                {"SmoothRadius",            "4.787200"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "960.000000"},
                {"HeightVarianceAmplitude", "43.776000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "11.008000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "131.840000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "19.699200"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "12.108800"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.214240"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.412000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "10240.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012648"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012648"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "104.960000"},
                {"HeightVarianceAmplitude", "13.619200"},
                {"HeightVarianceFrequency", "394.240000"},
                {"SmoothRadius",            "4.787200"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "960.000000"},
                {"HeightVarianceAmplitude", "44.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "11.008000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "131.840000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "30.067200"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "12.108800"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.214240"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.412000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "10240.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012648"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012648"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "104.960000"},
                {"HeightVarianceAmplitude", "13.619200"},
                {"HeightVarianceFrequency", "394.240000"},
                {"SmoothRadius",            "4.787200"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "960.000000"},
                {"HeightVarianceAmplitude", "44.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "11.008000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "131.840000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "30.067200"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "12.108800"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "708.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.502500"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "7680.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012425"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "7.280000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "104.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "17.100000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "708.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.502500"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "7680.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012425"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "7.280000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "104.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "17.100000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.514800"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.198000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.012200"},
                {"RegionScale", "0.980000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "26.880000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.514800"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.198000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.012200"},
                {"RegionScale", "0.980000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "26.880000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "7680.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "34.692000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.517500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "7680.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "34.692000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.517500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.402000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.024850"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "14.560000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "105.600000"},
                {"Height",                  "52.800000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "44.896000"},
                {"HeightVarianceFrequency", "422.400000"},
                {"SmoothRadius",            "11.480000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "97.920000"},
                {"Height",                  "49.920000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "38.161600"},
                {"HeightVarianceFrequency", "470.000000"},
                {"SmoothRadius",            "6.888000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "52.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "8.550000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.402000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.024850"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "14.560000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "105.600000"},
                {"Height",                  "52.800000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "44.896000"},
                {"HeightVarianceFrequency", "422.400000"},
                {"SmoothRadius",            "11.480000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "97.920000"},
                {"Height",                  "49.920000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "38.161600"},
                {"HeightVarianceFrequency", "470.000000"},
                {"SmoothRadius",            "6.888000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "52.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "8.550000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Active",               "true"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.535600"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.309000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "6400.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.052700"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.052700"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "21.280000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "1920.000000"},
                {"HeightVarianceAmplitude", "44.000000"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "131.840000"},
                {"RegionSize",              "1800.000000"},
                {"HeightVarianceAmplitude", "30.067200"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "6.054400"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Active",               "true"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.535600"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.309000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "6400.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.052700"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.052700"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "21.280000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "1920.000000"},
                {"HeightVarianceAmplitude", "44.000000"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "131.840000"},
                {"RegionSize",              "1800.000000"},
                {"HeightVarianceAmplitude", "30.067200"},
                {"HeightVarianceFrequency", "620.000000"},
                {"SmoothRadius",            "6.054400"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.402000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "1280.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.198800"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.198800"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "57.400000"},
                {"RegionSize",              "1040.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "215.600000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "56.000000"},
                {"Height",                  "112.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "16.464000"},
                {"HeightVarianceFrequency", "247.500000"},
                {"SmoothRadius",            "2.700000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "26.000000"},
                {"RegionSize",              "480.000000"},
                {"HeightVarianceAmplitude", "4.275000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "3.440000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "25.750000"},
                {"RegionSize",              "225.000000"},
                {"HeightVarianceAmplitude", "3.847500"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Active",               "true"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.209040"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.402000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "1280.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.198800"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.198800"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "57.400000"},
                {"RegionSize",              "1040.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "215.600000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "56.000000"},
                {"Height",                  "112.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "16.464000"},
                {"HeightVarianceFrequency", "247.500000"},
                {"SmoothRadius",            "2.700000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "26.000000"},
                {"RegionSize",              "480.000000"},
                {"HeightVarianceAmplitude", "4.275000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "3.440000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "25.750000"},
                {"RegionSize",              "225.000000"},
                {"HeightVarianceAmplitude", "3.847500"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "1416.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "82.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "34.692000"},
                {"HeightVarianceFrequency", "630.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.517500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "1416.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "575.000000"},
                {"RegionRatio",          "0.215280"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.414000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "2560.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "82.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "34.692000"},
                {"HeightVarianceFrequency", "630.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.705600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.535500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.517500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1150.000000"},
                {"RegionRatio",          "0.940680"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "1.920000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.012425"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "434.000000"},
                {"RegionRatio",          "0.705000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1150.000000"},
                {"RegionRatio",          "0.940680"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.301500"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "1.920000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.012425"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "164.000000"},
                {"RegionSize",              "2600.000000"},
                {"HeightVarianceAmplitude", "29.120000"},
                {"HeightVarianceFrequency", "616.000000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.205920"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.297000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "3200.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "39.648000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "944.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "124.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.205920"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.297000"},
                {"TileBlendMeters",      "12.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "4480.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "39.648000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.205920"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.396000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "10240.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "104.960000"},
                {"HeightVarianceAmplitude", "17.203200"},
                {"HeightVarianceFrequency", "394.240000"},
                {"SmoothRadius",            "4.787200"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "960.000000"},
                {"HeightVarianceAmplitude", "36.864000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "11.008000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "131.840000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "16.588800"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "12.108800"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "590.000000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "620.000000"},
                {"RegionRatio",          "0.470000"},
                {"TileBlendMeters",      "22.400000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "402.500000"},
                {"RegionRatio",          "0.205920"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "61.000000"},
                {"RegionRatio",          "0.396000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "10240.000000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011712"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "104.960000"},
                {"HeightVarianceAmplitude", "17.203200"},
                {"HeightVarianceFrequency", "394.240000"},
                {"SmoothRadius",            "4.787200"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "266.240000"},
                {"RegionSize",              "960.000000"},
                {"HeightVarianceAmplitude", "36.864000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "11.008000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "131.840000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "16.588800"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "12.108800"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.013175"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.105400"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "5.320000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "52.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "17.400000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.587250"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "20971.520000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.013175"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.105400"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "31.388000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "78.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "19.575000"},
                {"HeightVarianceFrequency", "525.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.587250"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.105400"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "31.388000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.652500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.587250"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.208000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.078000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.995750"},
                {"Gain",                 "0.487500"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.358800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.232960"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.065750"},
                {"Gain",                 "0.507500"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.689520"},
                {"AmplifyFeatures",      "0.966552"},
                {"PerturbFeatures",      "0.563285"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.115750"},
                {"Gain",                 "0.527500"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.728280"},
                {"PerturbFeatures",      "0.396739"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.135750"},
                {"Gain",                 "0.547500"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.305292"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.340366"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.075750"},
                {"Gain",                 "0.497500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.316800"},
                {"AmplifyFeatures",      "0.359040"},
                {"PerturbFeatures",      "0.384384"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.247104"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.195750"},
                {"Gain",                 "0.477500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.262080"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.116480"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.035750"},
                {"Gain",                 "0.487500"},
                {"Width",                "20971.520000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.114400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.035880"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.965750"},
                {"Gain",                 "0.467500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.105400"},
                {"RegionScale", "1.045000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "5.225000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.319000"},
                {"AmplifyFeatures",      "0.261000"},
                {"PerturbFeatures",      "0.286000"},
                {"RidgeErosion",         "0.208000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "31.388000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.431200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.873600"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.663000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.652500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.587250"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "78.080000"},
                {"RegionRatio",          "0.990000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "5242.880000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.097600"},
                {"RegionScale", "0.980000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "39.648000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.144000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.054000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.973000"},
                {"Gain",                 "0.477500"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.248400"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.161280"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.043000"},
                {"Gain",                 "0.497500"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.676000"},
                {"AmplifyFeatures",      "0.947600"},
                {"PerturbFeatures",      "0.382320"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.410400"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.093000"},
                {"Gain",                 "0.517500"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.714000"},
                {"PerturbFeatures",      "0.269280"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.360000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.113000"},
                {"Gain",                 "0.537500"},
                {"Width",                "156.160000"},
                {"RegionRatio",          "0.990000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.211356"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.235638"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.053000"},
                {"Gain",                 "0.487500"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.302400"},
                {"AmplifyFeatures",      "0.342720"},
                {"PerturbFeatures",      "0.254016"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.163296"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.173000"},
                {"Gain",                 "0.467500"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.181440"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.080640"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.013000"},
                {"Gain",                 "0.477500"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.079200"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.024840"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.943000"},
                {"Gain",                 "0.457500"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.097600"},
                {"RegionScale", "0.980000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.900000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.176000"},
                {"AmplifyFeatures",      "0.144000"},
                {"PerturbFeatures",      "0.198000"},
                {"RidgeErosion",         "0.144000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "39.648000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.352800"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.638400"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.484500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.360000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.324000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.025450"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "11.760000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "105.600000"},
                {"Height",                  "52.800000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "44.896000"},
                {"HeightVarianceFrequency", "422.400000"},
                {"SmoothRadius",            "11.480000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "97.920000"},
                {"Height",                  "49.920000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "34.843200"},
                {"HeightVarianceFrequency", "470.000000"},
                {"SmoothRadius",            "6.888000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "52.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "10.350000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.216000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.081000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.985250"},
                {"Gain",                 "0.488750"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.372600"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.241920"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.055250"},
                {"Gain",                 "0.508750"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.757120"},
                {"AmplifyFeatures",      "1.061312"},
                {"PerturbFeatures",      "0.642298"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.600000"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.105250"},
                {"Gain",                 "0.528750"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.799680"},
                {"PerturbFeatures",      "0.452390"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.125250"},
                {"Gain",                 "0.548750"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.317034"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.353457"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.065250"},
                {"Gain",                 "0.498750"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.318600"},
                {"AmplifyFeatures",      "0.361080"},
                {"PerturbFeatures",      "0.401436"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.258066"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.185250"},
                {"Gain",                 "0.478750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.272160"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.120960"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.025250"},
                {"Gain",                 "0.488750"},
                {"Width",                "20971.520000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.118800"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.037260"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.955250"},
                {"Gain",                 "0.468750"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012216"},
                {"RegionScale", "1.015000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.025450"},
                {"RegionScale", "5.075000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.253000"},
                {"AmplifyFeatures",      "0.207000"},
                {"PerturbFeatures",      "0.297000"},
                {"RidgeErosion",         "0.216000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "11.760000"},
                {"HeightVarianceFrequency", "308.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.372400"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "281.600000"},
                {"Height",                  "70.400000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "44.896000"},
                {"HeightVarianceFrequency", "630.000000"},
                {"SmoothRadius",            "11.480000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "130.560000"},
                {"Height",                  "49.920000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "34.843200"},
                {"HeightVarianceFrequency", "512.000000"},
                {"SmoothRadius",            "6.888000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "52.000000"},
                {"RegionSize",              "1600.000000"},
                {"HeightVarianceAmplitude", "10.350000"},
                {"HeightVarianceFrequency", "262.500000"},
                {"SmoothRadius",            "5.504000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.465750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "5242.880000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "1208.320000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.192000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.072000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.983500"},
                {"Gain",                 "0.485000"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.331200"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.215040"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.053500"},
                {"Gain",                 "0.505000"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.730080"},
                {"AmplifyFeatures",      "1.023408"},
                {"PerturbFeatures",      "0.550541"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.590976"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.103500"},
                {"Gain",                 "0.525000"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.771120"},
                {"PerturbFeatures",      "0.387763"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.123500"},
                {"Gain",                 "0.545000"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.281808"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.314184"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.063500"},
                {"Gain",                 "0.495000"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.313200"},
                {"AmplifyFeatures",      "0.354960"},
                {"PerturbFeatures",      "0.350784"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.225504"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.183500"},
                {"Gain",                 "0.475000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.241920"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.107520"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.023500"},
                {"Gain",                 "0.485000"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.105600"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.033120"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.953500"},
                {"Gain",                 "0.465000"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.202400"},
                {"RegionScale", "1.010000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.202400"},
                {"RegionScale", "1.010000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "57.400000"},
                {"RegionSize",              "1560.000000"},
                {"HeightVarianceAmplitude", "21.280000"},
                {"HeightVarianceFrequency", "215.600000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "56.000000"},
                {"Height",                  "112.000000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "21.168000"},
                {"HeightVarianceFrequency", "247.500000"},
                {"SmoothRadius",            "2.700000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.672000"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.510000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "26.000000"},
                {"RegionSize",              "480.000000"},
                {"HeightVarianceAmplitude", "4.950000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "3.440000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "25.750000"},
                {"RegionSize",              "225.000000"},
                {"HeightVarianceAmplitude", "4.455000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.192000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.072000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.983500"},
                {"Gain",                 "0.485000"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.331200"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.215040"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.053500"},
                {"Gain",                 "0.505000"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.730080"},
                {"AmplifyFeatures",      "1.023408"},
                {"PerturbFeatures",      "0.550541"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.590976"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.103500"},
                {"Gain",                 "0.525000"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.771120"},
                {"PerturbFeatures",      "0.387763"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.123500"},
                {"Gain",                 "0.545000"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.281808"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.314184"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.063500"},
                {"Gain",                 "0.495000"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.313200"},
                {"AmplifyFeatures",      "0.354960"},
                {"PerturbFeatures",      "0.350784"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.225504"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.183500"},
                {"Gain",                 "0.475000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.241920"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.107520"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.023500"},
                {"Gain",                 "0.485000"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.105600"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.033120"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.953500"},
                {"Gain",                 "0.465000"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.202400"},
                {"RegionScale", "1.010000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.202400"},
                {"RegionScale", "1.010000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "57.400000"},
                {"RegionSize",              "1560.000000"},
                {"HeightVarianceAmplitude", "21.280000"},
                {"HeightVarianceFrequency", "215.600000"},
                {"SmoothRadius",            "2.992000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "56.000000"},
                {"Height",                  "112.000000"},
                {"RegionSize",              "2100.000000"},
                {"HeightVarianceAmplitude", "21.168000"},
                {"HeightVarianceFrequency", "247.500000"},
                {"SmoothRadius",            "2.700000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.672000"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.510000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "26.000000"},
                {"RegionSize",              "480.000000"},
                {"HeightVarianceAmplitude", "4.950000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "3.440000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "25.750000"},
                {"RegionSize",              "225.000000"},
                {"HeightVarianceAmplitude", "4.455000"},
                {"HeightVarianceFrequency", "175.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.011928"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "82.000000"},
                {"RegionSize",              "1300.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "630.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.011928"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "164.000000"},
                {"RegionSize",              "1950.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "630.000000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "20971.520000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.192000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.072000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.983500"},
                {"Gain",                 "0.485000"},
                {"Width",                "302.080000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.331200"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.215040"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.053500"},
                {"Gain",                 "0.505000"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.730080"},
                {"AmplifyFeatures",      "1.023408"},
                {"PerturbFeatures",      "0.550541"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.590976"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.103500"},
                {"Gain",                 "0.525000"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.771120"},
                {"PerturbFeatures",      "0.387763"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.123500"},
                {"Gain",                 "0.545000"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.281808"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.314184"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.063500"},
                {"Gain",                 "0.495000"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.313200"},
                {"AmplifyFeatures",      "0.354960"},
                {"PerturbFeatures",      "0.350784"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.225504"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.183500"},
                {"Gain",                 "0.475000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.241920"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.107520"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.023500"},
                {"Gain",                 "0.485000"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.105600"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.033120"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.953500"},
                {"Gain",                 "0.465000"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012144"},
                {"RegionScale", "5.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012144"},
                {"RegionScale", "5.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "31.388000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.529200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.672000"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.510000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.495000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.445500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.192000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.072000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.983500"},
                {"Gain",                 "0.485000"},
                {"Width",                "604.160000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.331200"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.215040"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.053500"},
                {"Gain",                 "0.505000"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.730080"},
                {"AmplifyFeatures",      "1.023408"},
                {"PerturbFeatures",      "0.550541"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.590976"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.103500"},
                {"Gain",                 "0.525000"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.760000"},
                {"AmplifyFeatures",      "0.771120"},
                {"PerturbFeatures",      "0.387763"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.480000"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.123500"},
                {"Gain",                 "0.545000"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.281808"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.314184"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.063500"},
                {"Gain",                 "0.495000"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.313200"},
                {"AmplifyFeatures",      "0.354960"},
                {"PerturbFeatures",      "0.350784"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.225504"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.183500"},
                {"Gain",                 "0.475000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.241920"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.107520"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.023500"},
                {"Gain",                 "0.485000"},
                {"Width",                "20971.520000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.105600"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.033120"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.953500"},
                {"Gain",                 "0.465000"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012144"},
                {"RegionScale", "5.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012144"},
                {"RegionScale", "5.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.242000"},
                {"AmplifyFeatures",      "0.198000"},
                {"PerturbFeatures",      "0.264000"},
                {"RidgeErosion",         "0.192000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "31.388000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.529200"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.672000"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.510000"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.495000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.445500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "1208.320000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "1177.600000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "78.080000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "10485.760000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.636400"},
                {"SlopeBias",            "0.456000"},
                {"SharpToRoundFeatures", "0.050000"},
                {"AmplifyFeatures",      "0.320000"},
                {"PerturbFeatures",      "0.168000"},
                {"AltitudeErosion",      "0.080400"},
                {"RidgeErosion",         "0.063000"},
                {"SlopeErosion",         "0.097200"},
                {"Lacunarity",           "1.978250"},
                {"Gain",                 "0.481250"},
                {"Width",                "1208.320000"},
                {"TileBlendMeters",      "21.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.710800"},
                {"SlopeBias",            "0.432000"},
                {"SharpToRoundFeatures", "0.212400"},
                {"AmplifyFeatures",      "0.609000"},
                {"PerturbFeatures",      "0.289800"},
                {"AltitudeErosion",      "0.125840"},
                {"RidgeErosion",         "0.188160"},
                {"SlopeErosion",         "0.138672"},
                {"Lacunarity",           "2.048250"},
                {"Gain",                 "0.501250"},
                {"Width",                "1269.760000"},
                {"RegionRatio",          "0.940000"},
                {"TileBlendMeters",      "44.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.797600"},
                {"SlopeBias",            "0.404000"},
                {"SharpToRoundFeatures", "0.621920"},
                {"AmplifyFeatures",      "0.871792"},
                {"PerturbFeatures",      "0.410357"},
                {"AltitudeErosion",      "0.208120"},
                {"RidgeErosion",         "0.440496"},
                {"SlopeErosion",         "0.185600"},
                {"Lacunarity",           "2.098250"},
                {"Gain",                 "0.521250"},
                {"Width",                "2355.200000"},
                {"TileBlendMeters",      "41.600000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.847200"},
                {"SlopeBias",            "0.388000"},
                {"SharpToRoundFeatures", "0.700672"},
                {"AmplifyFeatures",      "0.656880"},
                {"PerturbFeatures",      "0.289027"},
                {"AltitudeErosion",      "0.207000"},
                {"RidgeErosion",         "0.386400"},
                {"SlopeErosion",         "0.159616"},
                {"Lacunarity",           "2.118250"},
                {"Gain",                 "0.541250"},
                {"Width",                "156.160000"},
                {"TileBlendMeters",      "4.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.698400"},
                {"SlopeBias",            "0.436000"},
                {"SharpToRoundFeatures", "0.241680"},
                {"AmplifyFeatures",      "0.456000"},
                {"PerturbFeatures",      "0.246582"},
                {"AltitudeErosion",      "0.155820"},
                {"RidgeErosion",         "0.274911"},
                {"SlopeErosion",         "0.129360"},
                {"Lacunarity",           "2.058250"},
                {"Gain",                 "0.491250"},
                {"Width",                "295.000000"},
                {"TileBlendMeters",      "20.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.686000"},
                {"SlopeBias",            "0.440000"},
                {"SharpToRoundFeatures", "0.307800"},
                {"AmplifyFeatures",      "0.348840"},
                {"PerturbFeatures",      "0.301644"},
                {"AltitudeErosion",      "0.121200"},
                {"RidgeErosion",         "0.193914"},
                {"SlopeErosion",         "0.118000"},
                {"Lacunarity",           "2.178250"},
                {"Gain",                 "0.471250"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.673600"},
                {"SlopeBias",            "0.444000"},
                {"SharpToRoundFeatures", "0.110000"},
                {"AmplifyFeatures",      "0.472500"},
                {"PerturbFeatures",      "0.211680"},
                {"AltitudeErosion",      "0.094176"},
                {"RidgeErosion",         "0.094080"},
                {"SlopeErosion",         "0.124080"},
                {"Lacunarity",           "2.018250"},
                {"Gain",                 "0.481250"},
                {"Width",                "20971.520000"},
                {"RegionScale",          "0.980000"},
                {"TileBlendMeters",      "24.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.611600"},
                {"SlopeBias",            "0.464000"},
                {"SharpToRoundFeatures", "0.017600"},
                {"AmplifyFeatures",      "0.235000"},
                {"PerturbFeatures",      "0.092400"},
                {"AltitudeErosion",      "0.065988"},
                {"RidgeErosion",         "0.028980"},
                {"SlopeErosion",         "0.080724"},
                {"Lacunarity",           "1.948250"},
                {"Gain",                 "0.461250"},
                {"RegionScale",          "4.700000"},
                {"TileBlendMeters",      "28.800000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.099400"},
                {"RegionScale", "0.995000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "true"},
                {"RegionRatio", "0.300000"},
                {"RegionScale", "4.975000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SharpToRoundFeatures", "0.209000"},
                {"AmplifyFeatures",      "0.171000"},
                {"PerturbFeatures",      "0.231000"},
                {"RidgeErosion",         "0.168000"},
                {"Lacunarity",           "2.060000"},
                {"Gain",                 "0.520000"},
                {"Active",               "true"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "82.000000"},
                {"RegionSize",              "780.000000"},
                {"HeightVarianceAmplitude", "42.952000"},
                {"HeightVarianceFrequency", "577.500000"},
                {"SmoothRadius",            "11.968000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.200000"},
                {"Height",                  "2.800000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.411600"},
                {"HeightVarianceFrequency", "110.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "11.000000"},
                {"Height",                  "2.750000"},
                {"RegionSize",              "175.000000"},
                {"HeightVarianceAmplitude", "0.772800"},
                {"HeightVarianceFrequency", "132.000000"},
                {"SmoothRadius",            "2.100000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.200000"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.586500"},
                {"HeightVarianceFrequency", "120.000000"},
                {"SmoothRadius",            "2.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.600000"},
                {"RegionSize",              "160.000000"},
                {"HeightVarianceAmplitude", "0.427500"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.400000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Height",                  "2.575000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.384750"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "2.640000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "6.000000"},
                {"HeightVarianceFrequency", "80.000000"},
                {"SmoothRadius",            "8.800000"},
                {"SeedOffset",              "2147483647"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HeightVarianceAmplitude", "38.000000"},
                {"HeightVarianceFrequency", "520.000000"},
                {"SmoothRadius",            "3.520000"},
                {"SeedOffset",              "2147483647"},
              }
            },
          }
        },
      }
    },
  }
}
