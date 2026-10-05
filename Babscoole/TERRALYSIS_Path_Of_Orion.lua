NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "TERRALYSIS_Path_Of_Orion",
["MOD_AUTHOR"]      = "BornTBFast",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.05",
["MOD_DESCRIPTION"] = "Causes the terrain generation to be much more extreme",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "600.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "233531211"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "409892274"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1441000813"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.269000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "354405234"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "524308968"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "1.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.570000"},
                {"RegionScale",          "2.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1906476126"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "792307450"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1891252562"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1417011033"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1852582082"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1434523512"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "100.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "449689572"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1515837196"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "600.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1571007512"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1234685677"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "90668149"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.379000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1719095341"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1613579874"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "1.000000"},
                {"Height",               "500.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.762500"},
                {"RegionScale",          "2.000000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "221435639"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1014775891"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1088113961"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1805646401"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1437183450"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1798627328"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "100.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1288002751"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1288645626"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.090000"},
                {"Remap From Max",       "0.970000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "937214156"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "844945969"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.269000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"SeedOffset",           "1840523209"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"SeedOffset",           "791829745"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1726039490"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.900000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Remap From Max",       "0.940000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "970094075"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "264807263"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.500000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1864022379"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "57381373"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1420552806"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1456722033"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1090277475"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1260055059"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.090000"},
                {"Remap From Max",       "0.970000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "276875159"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1671782766"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.401000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"SeedOffset",           "1449243345"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "12.000000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.244000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"SeedOffset",           "154346414"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "667701832"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.900000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "500.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "714576722"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1983945206"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.500000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1097125140"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1407178981"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "111117182"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "38896889"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1922222912"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1586577121"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1363959043"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1439662074"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1114641646"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1254015290"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "992313781"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.570000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1921772975"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1043644171"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1260574353"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "669857498"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "166197569"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "78005193"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1751952812"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "848261028"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "574797408"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "70698149"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "430293494"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "416832101"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "81855027"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "500.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.762500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1640893190"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "788144546"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1701636842"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "244566978"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "546899033"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1450118977"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "388392695"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1159283538"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1349210687"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1441810630"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "183335134"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1495201286"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1165028145"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1416190887"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "475222275"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.025000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "719098545"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "476812010"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "845241713"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1228133655"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1195958936"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "251462024"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "26405220"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "631690137"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "875060678"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "149376345"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "256252087"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Height",               "500.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1194114318"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "160919466"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.025000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "380796618"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "890597362"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "455057513"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "5278111"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "380721611"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "478391670"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "274206498"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1670232539"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.269000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "482371282"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.179000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "155937563"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1154315972"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1573831036"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "586804192"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "246848108"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "230515942"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "599239549"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "111670271"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "32.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "128.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1923806089"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "194261016"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "939849853"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "846463624"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.401000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1129673674"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.289000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "790205512"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "98191686"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Height",               "500.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1317742545"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "305464693"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1511342611"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "616798718"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "180967013"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1416707959"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "32.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "128.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1088661718"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "505406694"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "508672043"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "147440338"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1378207921"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "633164818"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "43095158"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "1.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.120000"},
                {"Remap From Max",       "0.940000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1740259464"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "690383396"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "70.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1275988054"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "50.000000"},
                {"Height",                  "100.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1429717637"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1798440222"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1410049559"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "191850628"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "620239333"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1296655224"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1496349069"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "69575081"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1440071501"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "985001972"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "1.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.120000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "500.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1962911277"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1005094025"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "70.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1946481709"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "50.000000"},
                {"Height",                  "100.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1843271581"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1407438854"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1790865055"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1546105823"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "309388567"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "1200.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1779804199"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "149946078"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1631024226"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1667238942"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "89118932"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Width",                "4000.000000"},
                {"RegionRatio",          "0.390000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "531584518"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1359303842"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1627862351"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1176868438"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1747933645"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "691450433"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "100697232"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "506388268"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "1200.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1005327228"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "795675009"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "44617082"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "848934721"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "997632854"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Height",               "375.000000"},
                {"Width",                "4000.000000"},
                {"RegionRatio",          "0.582500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "241924271"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1111536139"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1325277496"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1868262222"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1095869653"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "394492617"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "751805395"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "163189722"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1317218620"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1492530113"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.449000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1026792038"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.179000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1435993345"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "312557282"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Remap From Max",       "0.910000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "2.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "439803023"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1452133931"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1928702084"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "742748242"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "373045193"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "396273085"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1533376915"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "140675816"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "487289447"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "152012958"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.581000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "340617086"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.289000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "637472350"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1368152424"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "500.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "2.000000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "183763494"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1170745474"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1293925627"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "315647306"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "752460497"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "959208757"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "204284624"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1813041686"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "900686465"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "833255548"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "851076732"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.179000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "777764540"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "270866619"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.255000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1811386766"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "887135018"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1383114251"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "933717072"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "430812119"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "221330455"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1150399018"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "853668009"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "246556126"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1616102183"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "156988260"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.289000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "100516327"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1362241341"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "500.000000"},
                {"Width",                "3500.000000"},
                {"RegionRatio",          "0.582500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "24961831"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1209939331"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "114884212"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "517577048"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "819156687"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1307842719"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1929996661"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1214692443"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.045000"},
                {"Remap From Max",       "0.880000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1332896417"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1527208028"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1990870840"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1174914716"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "8408286"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.910000"},
                {"Width",                "8000.000000"},
                {"RegionRatio",          "0.390000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "349809688"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1543667380"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "1719441767"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1939293444"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1570605723"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1463411349"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "16.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "128.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1481757194"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "442801909"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.045000"},
                {"Remap From Max",       "0.880000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "512481790"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "210748167"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1298895408"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "402554311"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1100444508"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "500.000000"},
                {"Width",                "8000.000000"},
                {"RegionRatio",          "0.582500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "127683261"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1229479961"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "1242727712"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1525266460"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1961064323"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "40867357"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "16.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "128.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "162031957"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "215765511"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.045000"},
                {"Remap From Max",       "0.880000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1583943230"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1221602503"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1511399093"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1706390023"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "608199230"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "520.000000"},
                {"Width",                "8000.000000"},
                {"RegionRatio",          "0.390000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1616177893"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "813678657"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "59155267"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1325608065"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1628037914"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "159597965"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "16.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "128.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1267170965"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "532558286"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.045000"},
                {"Remap From Max",       "0.880000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "221349217"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "422156188"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "164243373"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "366815580"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1700224444"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "520.000000"},
                {"Width",                "8000.000000"},
                {"RegionRatio",          "0.582500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1930497104"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1035673324"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "1455770428"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1719521689"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1215766018"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1378226437"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "16.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "128.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "470750666"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "171304256"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "600.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "971298057"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "743761908"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "658417545"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.269000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1094334772"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1285675898"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "6000.000000"},
                {"RegionRatio",          "0.480000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1333045739"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "291472207"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "294299106"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "3974589"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "775318054"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1538797790"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "100.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "788809122"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1231647014"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "600.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1773026902"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "108513455"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1070936721"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.379000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1918952047"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "193641728"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "6000.000000"},
                {"RegionRatio",          "0.672500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1546735426"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "614161894"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1065914777"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "692213925"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "122197822"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1695414358"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "100.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "156580605"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1558357464"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.090000"},
                {"Remap From Max",       "0.970000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1611662512"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "250831445"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.269000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"SeedOffset",           "100419728"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"SeedOffset",           "1768267925"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1167737521"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.900000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "520.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1515593787"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "376048287"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.500000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "248506914"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "612319932"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1049134371"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1984718423"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1999877127"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "17452292"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.090000"},
                {"Remap From Max",       "0.970000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "837402611"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "896638218"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.401000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"SeedOffset",           "746763672"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "12.000000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.244000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"SeedOffset",           "949754826"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "76381495"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.900000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "520.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1268301458"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "87026742"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.500000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1510969945"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "999593892"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "629887035"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1543413471"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "650776412"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "344037874"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "726244604"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1053916673"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "954484536"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "574372033"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "181280394"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "6000.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.360000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "336369548"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1555535152"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1033993541"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "796345604"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "292586139"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1985118116"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1013591123"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1833402743"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "58364839"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1892226398"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "295352880"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1942324126"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1090053392"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "6000.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.450000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "122253601"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1232288645"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "593520958"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "412913692"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "715347843"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1544046380"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1838389008"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "26657157"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "229321460"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "430968841"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "194078186"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "81694409"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1394996914"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Height",               "520.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1977436903"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "990339139"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.025000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1475613361"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "479094750"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "847554629"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "50544527"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "445160027"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1673194483"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1548915119"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1239845718"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "880963826"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1428632982"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "337060152"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Height",               "520.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1721281614"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "709066474"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.025000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1746740938"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "904960710"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "469390685"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1035400967"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1265705224"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1982938881"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "67940399"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "571255510"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.269000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1055274754"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.179000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "226038806"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "539009219"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Height",               "520.000000"},
                {"Width",                "5000.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1685744739"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "475119303"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "305053698"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "695801142"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "393138861"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "245196274"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "32.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "128.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "321847432"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "614223362"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1442122612"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1367732617"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.401000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "395889178"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.289000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1551937353"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1631035205"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Height",               "520.000000"},
                {"Width",                "5000.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1371558602"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "252991598"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.050000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "777049209"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "312131630"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "816121781"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1283961210"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "32.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "128.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1121369051"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "388276980"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1048064467"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "738274090"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "684259050"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "923637226"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "56080144"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "1.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.120000"},
                {"Height",               "520.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1975546518"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "988559410"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "70.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1078641313"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "50.000000"},
                {"Height",                  "100.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "28710110"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "800906053"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "946361545"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "693862780"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "803219640"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1870760592"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "73653365"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Active",               "true"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1061872626"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1727278773"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1111525514"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "1.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.120000"},
                {"Height",               "520.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1720030271"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "707696283"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "70.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1883811546"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "50.000000"},
                {"Height",                  "100.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "684255686"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "113387101"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "435326017"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "23897639"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "980155462"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "1200.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1475413841"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1382553004"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1804470976"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1327344492"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "117554334"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "520.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "155882305"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "810812901"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "59412784"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "89484428"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1384238867"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1905746708"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1624217594"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "749179922"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "1200.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "665422862"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "59879159"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "10"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.300000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1418186664"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "544534583"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1028015900"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Remap From Max",       "0.940000"},
                {"Height",               "520.000000"},
                {"Width",                "2200.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1840957932"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "588374864"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1723797847"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1442184596"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "80322059"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1327672220"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "315030693"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "959201508"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1366846940"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.475000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1440780065"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.449000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1159796036"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.179000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1252397537"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "923776871"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "520.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "2.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1125771261"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "230868313"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "285380812"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1681127288"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "116923631"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "368455062"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1750605171"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1456096804"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "572663431"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.640000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "68760702"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.550000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.581000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1818224732"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "true"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.289000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "418155198"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1981319393"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "520.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "2.000000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1348206936"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "545795060"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1482242227"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "61623920"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1692935671"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1013478686"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "389969456"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1128370898"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "842391769"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "944101924"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "812206314"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.179000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "994067684"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1983757061"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "2500.000000"},
                {"RegionRatio",          "0.255000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1970267480"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "995674100"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1717434890"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "921453278"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "150308165"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "719662103"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "622219378"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1476655225"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.201835"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "800.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1674337158"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.137500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "100.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "269987199"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionScale",          "3.000000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "420984306"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.277000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.289000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1790574527"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "925533315"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "3500.000000"},
                {"RegionRatio",          "0.582500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1714029565"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "714484057"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "57768561"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "271161286"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "840978525"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "628716703"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1961880365"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1669121163"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.045000"},
                {"Remap From Max",       "0.880000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1293671747"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.362500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1495252922"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "134.400000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.134000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "94001772"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.224000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1148090746"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "352022903"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "520.000000"},
                {"Width",                "8000.000000"},
                {"RegionRatio",          "0.390000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1995240522"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "970438382"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "603218466"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "614281312"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1050834887"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "258613200"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "16.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "128.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1513647596"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1751598112"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.200000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.045000"},
                {"Remap From Max",       "0.880000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "484599328"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.527500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "175592677"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "172.800000"},
                {"Width",                "350.000000"},
                {"RegionRatio",          "0.266000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "753182580"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.334000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "362267173"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1441834737"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.250000"},
                {"RidgeErosion",         "0.350000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.910000"},
                {"Height",               "520.000000"},
                {"Width",                "8000.000000"},
                {"RegionRatio",          "0.582500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1705579235"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "722671687"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.005000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "1008563801"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "997631304"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "628187871"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1089791816"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "256.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "16.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "3"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "128.000000"},
                {"RegionSize",              "600.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "16.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "197252791"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1390508270"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "79931810"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1851809627"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1185026533"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "200297883"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1508820691"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "195580596"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1427396632"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1398112074"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1639250897"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "141891658"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "135324511"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1826082057"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1860946642"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "732026621"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1067049992"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1876749565"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "879573704"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "419287381"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.800000"},
                {"SlopeBias",            "0.800000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Height",               "520.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "418231321"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1742108349"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.012500"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1841271601"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "53037769"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1751722322"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "916794327"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "75.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "10.000000"},
                {"HeightVarianceFrequency", "50.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1052722774"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "88039972"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1142446472"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "637756285"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1629976629"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "990033341"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "857370092"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "380627835"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1241825759"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1359175759"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1175818753"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1746886042"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1926004797"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "892913967"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "879015953"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1937687259"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "12928034"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "45664557"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1821138658"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1913475694"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.060000"},
                {"Height",               "520.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "661325266"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1497442166"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "130857016"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1869311769"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1096917122"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1283016885"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "254590580"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "569339107"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.055000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1607110131"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1246670602"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "500838278"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1732243914"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1822639848"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "4096.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "826702660"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "138190312"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1813737463"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "207429042"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "912452137"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1206254407"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1223556444"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "342323312"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "264505008"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "464983125"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "883217054"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "408332949"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "766802274"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.220000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "570662377"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1856802637"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1408916368"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "867612842"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "229699377"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "175682511"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "446993927"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "32285854"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1657255799"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Active",               "true"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1152632206"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "81157865"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1498635086"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1150459062"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.200000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "35960700"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1318024672"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.025000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1594113321"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1796069597"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1427377990"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "96.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "197079072"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1470719968"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "273785405"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "282025004"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "357203665"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1433735153"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "171687953"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "92644148"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.800000"},
                {"SlopeBias",            "0.800000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "520.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "291590609"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1598774133"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.025000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1896698194"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1409809861"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "256.000000"},
                {"Height",                  "64.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "400.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1845611102"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "128.000000"},
                {"Height",                  "48.000000"},
                {"RegionSize",              "1400.000000"},
                {"HeightVarianceAmplitude", "32.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1298791576"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Height",                  "50.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "5.000000"},
                {"HeightVarianceFrequency", "100.000000"},
                {"SmoothRadius",            "8.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "670149763"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"HugeArchesPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1946258127"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "563495558"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1168324735"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1529947245"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "686024383"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "373240602"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Height",               "520.000000"},
                {"Width",                "4096.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1898580233"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "800990125"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1780031425"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1278092889"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1646586306"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "980303617"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "917893677"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1673162388"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1886386649"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1978393380"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "212671861"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "31771108"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1429103776"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "212816804"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1023132936"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1442319290"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1699797825"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1264194778"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "81524617"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1733052786"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlienPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1480999522"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "510784564"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "149489353"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "81868444"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "631019529"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1753353732"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1408431814"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "214512738"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "70.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1405881897"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "50.000000"},
                {"Height",                  "100.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1797832880"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1428096823"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1698243182"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "189703323"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "165346785"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1294507887"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1494269334"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1432893316"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1442186070"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "697643398"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.120000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1631049839"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "529322699"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.200000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "70.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "150.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1815421522"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "50.000000"},
                {"Height",                  "100.000000"},
                {"RegionSize",              "1200.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "1407915448"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1844761135"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1535961830"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "300.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "5.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "25.000000"},
                {"RegionSize",              "150.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1548218312"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CratersPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1989696787"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "531275926"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "196000367"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "267901775"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "677379247"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1987430201"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1024711000"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "210190324"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1057432191"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1613471099"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1310806756"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1961239483"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "177074237"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1354420354"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "6"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1340341193"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1515651380"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1609067095"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1463195636"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "929233087"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "777404413"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1921117529"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "600.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "285750792"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1230332003"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1734324220"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1247013683"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1493478242"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"CavernsPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1531321460"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1968722600"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1908631645"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1255104499"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1858252445"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1557696512"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "285565613"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "949040137"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "299777411"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1565666759"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "203548256"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1891744014"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "222506511"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "257775828"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1178520059"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "540726018"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1672585963"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1020028354"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "500150394"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Height",               "520.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1962924040"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "735367844"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1068837372"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "260969695"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1555980104"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1316254086"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "857889108"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AlpinePurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "450268194"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "3"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "256.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1971203325"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1895501320"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "-0.147500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "134.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "92522842"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "81130696"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "280663432"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.200000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "-1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1192030927"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "40739947"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1687576617"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1807495022"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1439004917"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "73357975"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1650302038"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "85064550"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.505000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "512.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "612865954"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "9"},
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "0.587500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1116964187"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "172.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1439146050"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.344500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "770847643"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1190981122"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.800000"},
                {"SlopeBias",            "0.800000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "520.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "902941798"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1793515202"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RegionRatio", "0.010000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1282231378"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1415162486"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1850760685"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "988451359"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "866395913"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LilyPadPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "1874944920"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.075000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.697500"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.790000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "1708882076"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SlopeGain",            "0.400000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.587500"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "170577505"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.302500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "113.400000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "134527048"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "1"},
                {"SlopeGain",            "0.300000"},
                {"SlopeBias",            "0.300000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.494000"},
                {"RegionGain",           "0.730000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1823399073"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "110.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.752500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1104453930"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.200000"},
                {"SlopeBias",            "0.200000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "520.000000"},
                {"Width",                "8192.000000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1145977021"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"RegionRatio",          "0.615000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.760000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "209318425"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "1365602987"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1782398580"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1480755691"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "218729878"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "1928906803"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Min", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "549155531"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Base"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "-0.395000"},
                {"AmplifyFeatures",      "0.030000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.050000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.180000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.890000"},
                {"RegionScale",          "3.500000"},
                {"RegionGain",           "0.880000"},
                {"SmoothRadius",         "12.000000"},
                {"SeedOffset",           "874693575"},
                {"TileBlendMeters",      "16.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Hill"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SlopeGain",            "0.600000"},
                {"SlopeBias",            "0.600000"},
                {"SharpToRoundFeatures", "-0.312500"},
                {"AmplifyFeatures",      "0.080000"},
                {"PerturbFeatures",      "0.280000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.150000"},
                {"SlopeErosion",         "0.080000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.240000"},
                {"Width",                "1024.000000"},
                {"RegionRatio",          "0.752500"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "842447166"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Mountain"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "8"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.752500"},
                {"AmplifyFeatures",      "0.200000"},
                {"PerturbFeatures",      "0.360000"},
                {"AltitudeErosion",      "0.200000"},
                {"RidgeErosion",         "0.250000"},
                {"SlopeErosion",         "0.200000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "145.800000"},
                {"Width",                "400.000000"},
                {"RegionRatio",          "0.626000"},
                {"RegionGain",           "1.000000"},
                {"SmoothRadius",         "18.000000"},
                {"PlateauStratas",       "0.350000"},
                {"PlateauSharpness",     "4"},
                {"SeedOffset",           "1447342432"},
                {"TileBlendMeters",      "32.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Rock"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "4"},
                {"SlopeGain",            "0.700000"},
                {"SlopeBias",            "0.700000"},
                {"SharpToRoundFeatures", "0.209500"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.350000"},
                {"AltitudeErosion",      "0.150000"},
                {"RidgeErosion",         "0.080000"},
                {"SlopeErosion",         "0.150000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.150000"},
                {"Height",               "9.600000"},
                {"Width",                "90.000000"},
                {"RegionRatio",          "0.604000"},
                {"RegionGain",           "0.820000"},
                {"SmoothRadius",         "16.000000"},
                {"PlateauStratas",       "0.150000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "1029138430"},
                {"TileBlendMeters",      "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "UnderWater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "7"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.400000"},
                {"SharpToRoundFeatures", "0.082500"},
                {"AmplifyFeatures",      "0.300000"},
                {"PerturbFeatures",      "0.200000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.400000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.030000"},
                {"Remap From Max",       "0.970000"},
                {"Height",               "180.000000"},
                {"Width",                "500.000000"},
                {"RegionRatio",          "0.917500"},
                {"PlateauStratas",       "0.650000"},
                {"PlateauSharpness",     "5"},
                {"SeedOffset",           "12820144"},
                {"TileBlendMeters",      "22.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Texture"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Elevation"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "12"},
                {"SlopeGain",            "0.800000"},
                {"SlopeBias",            "0.800000"},
                {"SharpToRoundFeatures", "1.000000"},
                {"AmplifyFeatures",      "0.150000"},
                {"PerturbFeatures",      "0.180000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.280000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Remap From Min",       "0.225000"},
                {"Height",               "520.000000"},
                {"Width",                "16384.000000"},
                {"RegionRatio",          "0.807500"},
                {"RegionScale",          "1.200000"},
                {"RegionGain",           "0.850000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "1460395544"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Continent"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SlopeGain",            "0.500000"},
                {"SlopeBias",            "0.500000"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.120000"},
                {"PerturbFeatures",      "0.140000"},
                {"AltitudeErosion",      "0.000000"},
                {"RidgeErosion",         "0.180000"},
                {"SlopeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Height",               "240.000000"},
                {"RegionRatio",          "0.835000"},
                {"RegionScale",          "5.000000"},
                {"RegionGain",           "0.868000"},
                {"SmoothRadius",         "14.000000"},
                {"SeedOffset",           "431279284"},
                {"TileBlendMeters",      "26.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Small"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "0.100000"},
                {"RegionScale", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Small", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "2"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Large"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",      "false"},
                {"RegionRatio", "1.000000"},
                {"RegionScale", "5.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Large", "TurbulenceNoiseLayer"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",              "5"},
                {"SharpToRoundFeatures", "0.000000"},
                {"AmplifyFeatures",      "0.000000"},
                {"PerturbFeatures",      "0.000000"},
                {"RidgeErosion",         "0.000000"},
                {"Lacunarity",           "2.000000"},
                {"Gain",                 "0.500000"},
                {"Active",               "false"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "River"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "90.000000"},
                {"RegionSize",              "420.000000"},
                {"HeightVarianceAmplitude", "25.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "20.000000"},
                {"SeedOffset",              "132565716"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Crater"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "40.000000"},
                {"Height",                  "15.000000"},
                {"RegionSize",              "900.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1356241772"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Arches"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "20.000000"},
                {"Height",                  "30.000000"},
                {"RegionSize",              "1000.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1859210483"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "ArchesSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "true"},
                {"Width",                   "10.000000"},
                {"Height",                  "12.000000"},
                {"RegionSize",              "500.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "1317792030"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Blobs"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "BlobsSmall"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Active",                  "false"},
                {"Height",                  "2.500000"},
                {"RegionSize",              "100.000000"},
                {"HeightVarianceAmplitude", "0.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "0.000000"},
                {"SeedOffset",              "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Caves", "Mouth"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "2"},
                {"HeightVarianceAmplitude", "8.000000"},
                {"HeightVarianceFrequency", "0.000000"},
                {"SmoothRadius",            "10.000000"},
                {"SeedOffset",              "587297648"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"DesertPurple", "Max", "Caves", "Tunnel"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Octaves",                 "3"},
                {"HeightVarianceAmplitude", "80.000000"},
                {"HeightVarianceFrequency", "500.000000"},
                {"SmoothRadius",            "4.000000"},
                {"SeedOffset",              "892380729"},
              }
            },
          }
        },
      }
    },
  }
}