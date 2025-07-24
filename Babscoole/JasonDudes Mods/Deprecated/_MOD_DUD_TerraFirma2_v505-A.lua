NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_TerraFirma2_v505-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.05",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Shelter",                    "GcBuildingDefinitionData.xml"},
                                {"Abandoned",                  "GcBuildingDefinitionData.xml"},
                                {"Terminal",                   "GcBuildingDefinitionData.xml"},
                                {"Shop",                       "GcBuildingDefinitionData.xml"},
                                {"Outpost",                    "GcBuildingDefinitionData.xml"},
                                {"Waypoint",                   "GcBuildingDefinitionData.xml"},
                                {"Beacon",                     "GcBuildingDefinitionData.xml"},
                                {"RadioTower",                 "GcBuildingDefinitionData.xml"},
                                {"Observatory",                "GcBuildingDefinitionData.xml"},
                                {"Depot",                      "GcBuildingDefinitionData.xml"},
                                {"Factory",                    "GcBuildingDefinitionData.xml"},
                                {"Harvester",                  "GcBuildingDefinitionData.xml"},
                                {"Plaque",                     "GcBuildingDefinitionData.xml"},
                                {"Monolith",                   "GcBuildingDefinitionData.xml"},
                                {"Portal",                     "GcBuildingDefinitionData.xml"},
                                {"Ruin",                       "GcBuildingDefinitionData.xml"},
                                {"Debris",                     "GcBuildingDefinitionData.xml"},
                                {"DamagedMachine",             "GcBuildingDefinitionData.xml"},
                                {"DistressSignal",             "GcBuildingDefinitionData.xml"},
                                {"LandingPad",                 "GcBuildingDefinitionData.xml"},
                                {"Base",                       "GcBuildingDefinitionData.xml"},
                                {"MissionTower",               "GcBuildingDefinitionData.xml"},
                                {"CrashedFreighter",           "GcBuildingDefinitionData.xml"},
                                {"GraveInCave",                "GcBuildingDefinitionData.xml"},
                                {"StoryGlitch",                "GcBuildingDefinitionData.xml"},
                                {"TreasureRuins",              "GcBuildingDefinitionData.xml"},
                                {"GameStartSpawn",             "GcBuildingDefinitionData.xml"},
                                {"NPCDistressSignal",          "GcBuildingDefinitionData.xml"},
                                {"NPCDebris",                  "GcBuildingDefinitionData.xml"},
                                {"LargeBuilding",              "GcBuildingDefinitionData.xml"},
                                {"Settlement_Hub",             "GcBuildingDefinitionData.xml"},
                                {"Settlement_LandingZone",     "GcBuildingDefinitionData.xml"},
                                {"Settlement_Bar",             "GcBuildingDefinitionData.xml"},
                                {"Settlement_Tower",           "GcBuildingDefinitionData.xml"},
                                {"Settlement_Market",          "GcBuildingDefinitionData.xml"},
                                {"Settlement_Small",           "GcBuildingDefinitionData.xml"},
                                {"Settlement_SmallIndustrial", "GcBuildingDefinitionData.xml"},
                                {"Settlement_Medium",          "GcBuildingDefinitionData.xml"},
                                {"Settlement_Large",           "GcBuildingDefinitionData.xml"},
                                {"Settlement_Monument",        "GcBuildingDefinitionData.xml"},
                                {"Settlement_SheriffsOffice",  "GcBuildingDefinitionData.xml"},
                                {"Settlement_Double",          "GcBuildingDefinitionData.xml"},
                                {"Settlement_Farm",            "GcBuildingDefinitionData.xml"},
                                {"Settlement_Factory",         "GcBuildingDefinitionData.xml"},
                                {"Settlement_Clump",           "GcBuildingDefinitionData.xml"},
                                {"DroneHive",                  "GcBuildingDefinitionData.xml"},
                                {"SentinelDistressSignal",     "GcBuildingDefinitionData.xml"},
                                {"AbandonedRobotCamp",         "GcBuildingDefinitionData.xml"},
                                {"RobotHead",                  "GcBuildingDefinitionData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaterPlacement", "Underwater"},
                                {"MinHeight",      "120"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIGPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENCORALBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHIVESBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENHQBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENINFESTEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENPEACOCKBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BARREN\BARRENROCKYWEIRDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\BURNT\BURNTBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIGPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADFROZENWEIRDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DEAD\DEADWATERBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\DESOLATE\DESOLATEBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FLORAL\FLORALBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIGPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENHQBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENINFESTEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENPILLARBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENROCKYWEIRDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGELUSH\HUGELUSHBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGERING\HUGERINGBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEROCK\HUGEROCKBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGESCORCHED\HUGESCORCHBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGETOXIC\HUGETOXICBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\HUGEPROPS\HUGEUWPLANT\HUGEUVWPLANTBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\IRRADIATED\IRRADIATEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LAVA\LAVABIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIGPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLESBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHHQTENTACLEBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHINFESTEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROCKYWEIRDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMABIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHULTRABIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\NOXIOUS\NOXIOUSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVEGLOWBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOACTIVERUINSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOBIGPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOINFESTEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOSPIKECRYSTALSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\ROCKY\ROCKBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RUINS\RUINSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHBIGPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHCORALBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHEDSHIELDTREEBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SCORCHED\SCORCHINFESTEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SUBZERO\SUBZEROBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIGPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICEGGSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICINFESTEDBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICROCKYBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICSPORESBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICTENTACLESBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BEAMSTONE\BEAMSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\BONESPIRE\BONESPIREBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\CONTOUR\CONTOURBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\ELBUBBLE\ELBUBBLEBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\FRACTALCUBE\FRACTCUBEBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HEXAGON\HEXAGONBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HOUDINIPROPS\HOUDINIPROPSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\HYDROGARDEN\HYDROGARDENBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\IRRISHELLS\IRRISHELLSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\MSTRUCTURES\MSTRUCTBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\SHARDS\SHARDSBIOME.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\WEIRD\WIRECELLS\WIRECELLSBIOME.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Terrain", "GcTerrainControls.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Continent",             "1"},
                                {"ForceContinentalNoise", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\VOXELGENERATORSETTINGS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinimumCaveDepth", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "64"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.5"},
                                {"RemapFromMin", "0.2"},
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslands", "Min", "Resources_Heridium"},
                                {"FloatingIslands", "Min", "Resources_Iridium"},
                                {"FloatingIslands", "Min", "Resources_Copper"},
                                {"FloatingIslands", "Min", "Resources_Nickel"},
                                {"FloatingIslands", "Min", "Resources_Aluminium"},
                                {"FloatingIslands", "Min", "Resources_Gold"},
                                {"FloatingIslands", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslands", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "20"},
                                {"Height",                  "20"},
                                {"RegionSize",              "100"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "7"},
                                {"OffsetType",              "Base"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"RemapFromMin", "0"},
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMin", "0.1"},
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.8"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslands", "Max", "Resources_Heridium"},
                                {"FloatingIslands", "Max", "Resources_Iridium"},
                                {"FloatingIslands", "Max", "Resources_Copper"},
                                {"FloatingIslands", "Max", "Resources_Nickel"},
                                {"FloatingIslands", "Max", "Resources_Aluminium"},
                                {"FloatingIslands", "Max", "Resources_Gold"},
                                {"FloatingIslands", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslands", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"FloatingIslands", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "40"},
                                {"Height",                  "40"},
                                {"Octaves",                 "1"},
                                {"RegionSize",              "300"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "5"},
                                {"OffsetType",              "Base"},
                                {"TileBlendMeters",         "16"},
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
                                {"Height",       "30"},
                                {"Octaves",      "1"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslands", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",  "0"},
                                {"PerturbFeatures",  "0"},
                                {"RidgeErosion",     "0"},
                                {"RemapFromMin",     "0"},
                                {"RemapFromMax",     "1"},
                                {"RemapToMin",       "0.9"},
                                {"MaximumLOD",       "3"},
                                {"RegionGain",       "0"},
                                {"PlateauStratas",   "1"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion",      "0"},
                                {"Height",            "32"},
                                {"RegionScale",       "1"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "8"},
                                {"PlateauRegionSize", "275"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"RemapFromMin",      "0.1"},
                                {"RegionScale",       "2"},
                                {"PlateauSharpness",  "8"},
                                {"PlateauRegionSize", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeBias",        "0.4"},
                                {"MaximumLOD",       "3"},
                                {"RegionRatio",      "0.5"},
                                {"RegionScale",      "1"},
                                {"RegionGain",       "0"},
                                {"PlateauSharpness", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "10"},
                                {"SlopeGain",         "0.5"},
                                {"RidgeErosion",      "0"},
                                {"Gain",              "0.3"},
                                {"RemapFromMin",      "0.3"},
                                {"RemapFromMax",      "0.6"},
                                {"Width",             "1000"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "2"},
                                {"PlateauRegionSize", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyon", "Min", "Resources_Heridium"},
                                {"GrandCanyon", "Min", "Resources_Iridium"},
                                {"GrandCanyon", "Min", "Resources_Copper"},
                                {"GrandCanyon", "Min", "Resources_Nickel"},
                                {"GrandCanyon", "Min", "Resources_Aluminium"},
                                {"GrandCanyon", "Min", "Resources_Gold"},
                                {"GrandCanyon", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyon", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "True"},
                                {"NoiseVoxelType",  "Mountain"},
                                {"FeatureType",     "Blob"},
                                {"Width",           "100"},
                                {"Height",          "60"},
                                {"Octaves",         "4"},
                                {"RegionSize",      "800"},
                                {"SmoothRadius",    "10"},
                                {"TileBlendMeters", "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Mountain"},
                                {"Width",          "20"},
                                {"Height",         "10"},
                                {"Octaves",        "4"},
                                {"RegionSize",     "800"},
                                {"HeightOffset",   "20"},
                                {"SmoothRadius",   "10"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",  "0"},
                                {"PerturbFeatures",  "0"},
                                {"RidgeErosion",     "0"},
                                {"RemapFromMin",     "0"},
                                {"RemapFromMax",     "1"},
                                {"RemapToMin",       "0.95"},
                                {"MaximumLOD",       "3"},
                                {"RegionGain",       "0"},
                                {"PlateauStratas",   "1"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion",       "0"},
                                {"Height",             "32"},
                                {"RegionRatio",        "0.25"},
                                {"RegionGain",         "0"},
                                {"PlateauStratas",     "1"},
                                {"PlateauSharpness",   "8"},
                                {"PlateauRegionSize",  "275"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"RemapFromMin",      "0.2"},
                                {"RegionRatio",       "0.25"},
                                {"PlateauSharpness",  "8"},
                                {"PlateauRegionSize", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeBias",            "0.4"},
                                {"SharpToRoundFeatures", "1"},
                                {"MaximumLOD",           "3"},
                                {"Height",               "20"},
                                {"RegionRatio",          "0.25"},
                                {"RegionScale",          "8"},
                                {"RegionGain",           "0"},
                                {"PlateauSharpness",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "10"},
                                {"SlopeGain",         "0.7"},
                                {"RidgeErosion",      "0"},
                                {"Gain",              "0.3"},
                                {"RemapFromMin",      "0.4"},
                                {"Width",             "1000"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "2"},
                                {"PlateauRegionSize", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyon", "Max", "Resources_Heridium"},
                                {"GrandCanyon", "Max", "Resources_Iridium"},
                                {"GrandCanyon", "Max", "Resources_Copper"},
                                {"GrandCanyon", "Max", "Resources_Nickel"},
                                {"GrandCanyon", "Max", "Resources_Aluminium"},
                                {"GrandCanyon", "Max", "Resources_Gold"},
                                {"GrandCanyon", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyon", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"GrandCanyon", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",           "True"},
                                {"NoiseVoxelType",   "Mountain"},
                                {"FeatureType",      "Blob"},
                                {"Width",            "100"},
                                {"Height",           "60"},
                                {"Octaves",          "4"},
                                {"RegionSize",       "800"},
                                {"SmoothRadius",     "10"},
                                {"TileBlendMeters",  "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseVoxelType", "Mountain"},
                                {"Width",          "20"},
                                {"Height",         "10"},
                                {"Octaves",        "4"},
                                {"RegionSize",     "800"},
                                {"HeightOffset",   "20"},
                                {"SmoothRadius",   "10"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyon", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0"},
                                {"MaximumLOD",   "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavines", "Min", "Resources_Heridium"},
                                {"MountainRavines", "Min", "Resources_Iridium"},
                                {"MountainRavines", "Min", "Resources_Copper"},
                                {"MountainRavines", "Min", "Resources_Nickel"},
                                {"MountainRavines", "Min", "Resources_Aluminium"},
                                {"MountainRavines", "Min", "Resources_Gold"},
                                {"MountainRavines", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavines", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.375"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0"},
                                {"MaximumLOD",   "3"},
                                {"Height",       "24"},
                                {"RegionRatio",  "0.2"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"SlopeBias",       "0.5"},
                                {"AmplifyFeatures", "0.3"},
                                {"RidgeErosion",    "0"},
                                {"Gain",            "0.6"},
                                {"RemapFromMin",    "0.3"},
                                {"RemapFromMax",    "1"},
                                {"Height",          "99.99"},
                                {"RegionRatio",     "0.4"},
                                {"RegionScale",     "4"},
                                {"PlateauStratas",  "3"},
                                {"PlateauSharpness","5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.25"},
                                {"Width",           "3000"},
                                {"RegionScale",     "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavines", "Max", "Resources_Heridium"},
                                {"MountainRavines", "Max", "Resources_Iridium"},
                                {"MountainRavines", "Max", "Resources_Copper"},
                                {"MountainRavines", "Max", "Resources_Nickel"},
                                {"MountainRavines", "Max", "Resources_Aluminium"},
                                {"MountainRavines", "Max", "Resources_Gold"},
                                {"MountainRavines", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavines", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"MountainRavines", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavines", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
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
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "64"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"MaximumLOD",   "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "5"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArches", "Min", "Resources_Heridium"},
                                {"HugeArches", "Min", "Resources_Iridium"},
                                {"HugeArches", "Min", "Resources_Copper"},
                                {"HugeArches", "Min", "Resources_Nickel"},
                                {"HugeArches", "Min", "Resources_Aluminium"},
                                {"HugeArches", "Min", "Resources_Gold"},
                                {"HugeArches", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArches", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",  "0"},
                                {"PerturbFeatures",  "0"},
                                {"Height",           "32"},
                                {"RegionRatio",      "0.375"},
                                {"RegionScale",      "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "4"},
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                                {"MaximumLOD",      "3"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "7"},
                                {"RegionRatio", "0.6"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArches", "Max", "Resources_Heridium"},
                                {"HugeArches", "Max", "Resources_Iridium"},
                                {"HugeArches", "Max", "Resources_Copper"},
                                {"HugeArches", "Max", "Resources_Nickel"},
                                {"HugeArches", "Max", "Resources_Aluminium"},
                                {"HugeArches", "Max", "Resources_Gold"},
                                {"HugeArches", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArches", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"HugeArches", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Arches"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "192"},
                                {"Height",                  "80"},
                                {"HeightVarianceAmplitude", "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "ArchesSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "192"},
                                {"Height",                  "80"},
                                {"HeightVarianceAmplitude", "16"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArches", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                                {"MaximumLOD",      "3"},
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
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMin", "0.1"},
                                {"RegionGain",   "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alien", "Min", "Resources_Heridium"},
                                {"Alien", "Min", "Resources_Iridium"},
                                {"Alien", "Min", "Resources_Copper"},
                                {"Alien", "Min", "Resources_Nickel"},
                                {"Alien", "Min", "Resources_Aluminium"},
                                {"Alien", "Min", "Resources_Gold"},
                                {"Alien", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alien", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Alien", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Alien", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Alien", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Alien", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Alien", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Alien", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Width",        "500"},
                                {"Height",       "30"},
                                {"RegionSize",   "2000"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                                {"MaximumLOD",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                                {"RegionRatio",     "0.25"},
                                {"RegionScale",     "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.15"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMin", "0.15"},
                                {"RegionRatio",  "0.95"},
                                {"RegionScale",  "3"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alien", "Max", "Resources_Heridium"},
                                {"Alien", "Max", "Resources_Iridium"},
                                {"Alien", "Max", "Resources_Copper"},
                                {"Alien", "Max", "Resources_Nickel"},
                                {"Alien", "Max", "Resources_Aluminium"},
                                {"Alien", "Max", "Resources_Gold"},
                                {"Alien", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alien", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Alien", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Alien", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Alien", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Alien", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Alien", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Alien", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"RegionSize", "1500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "4"},
                                {"RegionSize",   "1500"},
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
                                {"Width",        "1000"},
                                {"Height",       "30"},
                                {"RegionSize",   "4000"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alien", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "30"},
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeGain",    "0.4"},
                                {"RidgeErosion", "0"},
                                {"Gain",         "0.3"},
                                {"RemapToMin",   "0.8"},
                                {"Height",       "32"},
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
                                {"Height",      "64"},
                                {"RegionRatio", "0.1"},
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
                                {"MaximumLOD",           "3"},
                                {"RegionRatio",          "0.05"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0"},
                                {"SlopeErosion",    "0"},
                                {"Gain",            "0.3"},
                                {"RemapFromMin",    "0.3"},
                                {"RemapFromMax",    "0.7"},
                                {"Width",           "1000"},
                                {"RegionRatio",     "0.3"},
                                {"RegionScale",     "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",      "True"},
                                {"MaximumLOD",  "2"},
                                {"Height",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Craters", "Min", "Resources_Heridium"},
                                {"Craters", "Min", "Resources_Iridium"},
                                {"Craters", "Min", "Resources_Copper"},
                                {"Craters", "Min", "Resources_Nickel"},
                                {"Craters", "Min", "Resources_Aluminium"},
                                {"Craters", "Min", "Resources_Gold"},
                                {"Craters", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Craters", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Craters", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Craters", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Craters", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Craters", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Craters", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Craters", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "3"},
                                {"SmoothRadius", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"Width",        "5"},
                                {"Height",       "4"},
                                {"RegionSize",   "50"},
                                {"Ratio",        "0.1"},
                                {"HeightOffset", "-0.25"},
                                {"SmoothRadius", "3"},
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
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "20"},
                                {"Height",       "30"},
                                {"RegionSize",   "75"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeGain",    "0.6"},
                                {"RidgeErosion", "0"},
                                {"Gain",         "0.3"},
                                {"RemapToMin",   "0.95"},
                                {"Height",       "32"},
                                {"Width",        "1000"},
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
                                {"MaximumLOD",      "3"},
                                {"Height",          "16"},
                                {"RegionRatio",     "0.1"},
                                {"RegionScale",     "6"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0"},
                                {"SlopeErosion",    "0"},
                                {"Gain",            "0.3"},
                                {"RemapFromMin",    "0.3"},
                                {"RemapFromMax",    "0.7"},
                                {"Width",           "1000"},
                                {"RegionRatio",     "0.15"},
                                {"RegionScale",     "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.1"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "8"},
                                {"Active",     "True"},
                                {"MaximumLOD", "2"},
                                {"Height",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Craters", "Max", "Resources_Heridium"},
                                {"Craters", "Max", "Resources_Iridium"},
                                {"Craters", "Max", "Resources_Copper"},
                                {"Craters", "Max", "Resources_Nickel"},
                                {"Craters", "Max", "Resources_Aluminium"},
                                {"Craters", "Max", "Resources_Gold"},
                                {"Craters", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Craters", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Craters", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Craters", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Craters", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Craters", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Craters", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Craters", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "100"},
                                {"Octaves",      "3"},
                                {"RegionSize",   "1600"},
                                {"SmoothRadius", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"Width",        "5"},
                                {"Height",       "4"},
                                {"RegionSize",   "50"},
                                {"Ratio",        "0.2"},
                                {"HeightOffset", "-0.25"},
                                {"SmoothRadius", "3"},
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
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Craters", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapToMin", "0.4"},
                                {"MaximumLOD", "3"},
                                {"Height",     "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"Height",       "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "64"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"MaximumLOD",   "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"MinWidth",        "20"},
                                {"MaxWidth",        "25"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "10"},
                                {"MinHeightOffset", "0"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-5"},
                                {"OffsetType",      "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Caverns", "Min", "Resources_Heridium"},
                                {"Caverns", "Min", "Resources_Iridium"},
                                {"Caverns", "Min", "Resources_Copper"},
                                {"Caverns", "Min", "Resources_Nickel"},
                                {"Caverns", "Min", "Resources_Aluminium"},
                                {"Caverns", "Min", "Resources_Gold"},
                                {"Caverns", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Caverns", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Caverns", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Caverns", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Caverns", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Caverns", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Caverns", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Caverns", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Cave"},
                                {"Width",                   "50"},
                                {"Height",                  "25"},
                                {"RegionSize",              "500"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "500"},
                                {"HeightOffset",            "-35"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "30"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "25"},
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapToMin", "0.4"},
                                {"MaximumLOD", "3"},
                                {"Height",     "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.375"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.2"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "3"},
                                {"Height",      "400"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"MinWidth",        "35"},
                                {"MaxWidth",        "40"},
                                {"MinHeight",       "20"},
                                {"MaxHeight",       "20"},
                                {"MinHeightOffset", "0"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-10"},
                                {"OffsetType",      "All"},
                                {"RegionScale",     "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"Height",       "3"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Caverns", "Max", "Resources_Heridium"},
                                {"Caverns", "Max", "Resources_Iridium"},
                                {"Caverns", "Max", "Resources_Copper"},
                                {"Caverns", "Max", "Resources_Nickel"},
                                {"Caverns", "Max", "Resources_Aluminium"},
                                {"Caverns", "Max", "Resources_Gold"},
                                {"Caverns", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Caverns", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Caverns", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Caverns", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Caverns", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Caverns", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Caverns", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Caverns", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Cave"},
                                {"Width",                   "70"},
                                {"Height",                  "25"},
                                {"Octaves",                 "8"},
                                {"RegionSize",              "3000"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "500"},
                                {"HeightOffset",            "-35"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Width",        "60"},
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Caverns", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "25"},
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMin", "0"},
                                {"MaximumLOD",   "3"},
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
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alpine", "Min", "Resources_Heridium"},
                                {"Alpine", "Min", "Resources_Iridium"},
                                {"Alpine", "Min", "Resources_Copper"},
                                {"Alpine", "Min", "Resources_Nickel"},
                                {"Alpine", "Min", "Resources_Aluminium"},
                                {"Alpine", "Min", "Resources_Gold"},
                                {"Alpine", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alpine", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Alpine", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Alpine", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Alpine", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Alpine", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Alpine", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Alpine", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMin", "0"},
                                {"MaximumLOD",   "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.375"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "8"},
                                {"PerturbFeatures", "0"},
                                {"RegionRatio",     "0.45"},
                                {"RegionScale",     "8"},
                                {"RegionGain",      "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.15"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
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
                                {"RegionRatio", "0.95"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alpine", "Max", "Resources_Heridium"},
                                {"Alpine", "Max", "Resources_Iridium"},
                                {"Alpine", "Max", "Resources_Copper"},
                                {"Alpine", "Max", "Resources_Nickel"},
                                {"Alpine", "Max", "Resources_Aluminium"},
                                {"Alpine", "Max", "Resources_Gold"},
                                {"Alpine", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Alpine", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Alpine", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Alpine", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Alpine", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Alpine", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Alpine", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Alpine", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Alpine", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
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
                                {"MaximumLOD",      "3"},
                                {"Height",          "32"},
                                {"Width",           "100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPad", "Min", "Resources_Heridium"},
                                {"LilyPad", "Min", "Resources_Iridium"},
                                {"LilyPad", "Min", "Resources_Copper"},
                                {"LilyPad", "Min", "Resources_Nickel"},
                                {"LilyPad", "Min", "Resources_Aluminium"},
                                {"LilyPad", "Min", "Resources_Gold"},
                                {"LilyPad", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPad", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "50"},
                                {"RegionSize", "300"},
                                {"Ratio",      "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",  "0.2"},
                                {"PerturbFeatures",  "0.2"},
                                {"AltitudeErosion",  "0.5"},
                                {"RegionRatio",      "0.1"},
                                {"RegionScale",      "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"PerturbFeatures", "0.2"},
                                {"AltitudeErosion", "0.5"},
                                {"MaximumLOD",      "3"},
                                {"Height",          "32"},
                                {"Width",           "100"},
                                {"RegionRatio",     "0.15"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPad", "Max", "Resources_Heridium"},
                                {"LilyPad", "Max", "Resources_Iridium"},
                                {"LilyPad", "Max", "Resources_Copper"},
                                {"LilyPad", "Max", "Resources_Nickel"},
                                {"LilyPad", "Max", "Resources_Aluminium"},
                                {"LilyPad", "Max", "Resources_Gold"},
                                {"LilyPad", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPad", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"LilyPad", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPad", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RemapFromMin", "0"},
                                {"RemapFromMax", "1"},
                                {"RemapToMin",   "0.9"},
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
                                {"Octaves",            "8"},
                                {"Height",             "256"},
                                {"RegionRatio",        "0.3"},
                                {"RegionGain",         "0"},
                                {"PlateauStratas",     "1"},
                                {"PlateauSharpness",   "6"},
                                {"PlateauRegionSize",  "200"},
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
                                {"MaximumLOD",           "3"},
                                {"RegionRatio",          "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
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
                                {"RidgeErosion",         "0"},
                                {"Gain",                 "0.4"},
                                {"RemapFromMax",         "0.6"},
                                {"Width",                "2000"},
                                {"RegionRatio",          "0.4"},
                                {"RegionScale",          "5"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "4"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-10"},
                                {"RegionScale",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-10"},
                                {"OffsetType",   "Zero"},
                                {"RegionScale",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Desert", "Min", "Resources_Heridium"},
                                {"Desert", "Min", "Resources_Iridium"},
                                {"Desert", "Min", "Resources_Copper"},
                                {"Desert", "Min", "Resources_Nickel"},
                                {"Desert", "Min", "Resources_Aluminium"},
                                {"Desert", "Min", "Resources_Gold"},
                                {"Desert", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Desert", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Desert", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Desert", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Desert", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Desert", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Desert", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Desert", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "96"},
                                {"Octaves",    "4"},
                                {"RegionSize", "3000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RemapFromMin", "0"},
                                {"RemapFromMax", "1"},
                                {"RemapToMin",   "0.95"},
                                {"RegionScale",  "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",             "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "32"},
                                {"RegionRatio",          "0.15"},
                                {"RegionScale",          "4"},
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
                                {"RegionRatio",       "0.15"},
                                {"RegionScale",       "8"},
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
                                {"MaximumLOD",      "3"},
                                {"Height",          "48"},
                                {"RegionRatio",     "0.1"},
                                {"RegionScale",     "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
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
                                {"RidgeErosion",         "0"},
                                {"Gain",                 "0.4"},
                                {"RemapFromMax",         "0.6"},
                                {"Width",                "2000"},
                                {"RegionScale",          "8"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "6"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "128"},
                                {"MaxWidth",     "192"},
                                {"HeightOffset", "-10"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "128"},
                                {"MaxWidth",     "192"},
                                {"HeightOffset", "-10"},
                                {"OffsetType",   "Zero"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Desert", "Max", "Resources_Heridium"},
                                {"Desert", "Max", "Resources_Iridium"},
                                {"Desert", "Max", "Resources_Copper"},
                                {"Desert", "Max", "Resources_Nickel"},
                                {"Desert", "Max", "Resources_Aluminium"},
                                {"Desert", "Max", "Resources_Gold"},
                                {"Desert", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Desert", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"Desert", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"Desert", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"Desert", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"Desert", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"Desert", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"Desert", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "6"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "2"},
                                {"Width",      "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "96"},
                                {"Octaves",    "4"},
                                {"RegionSize", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Desert", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0.99"},
                                {"RemapFromMin", "0"},
                                {"RemapFromMax", "1"},
                                {"RemapToMin",   "0.9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"Height",       "32"},
                                {"RegionRatio", "0.3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.3"},
                                {"RegionGain",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"MaximumLOD",   "3"},
                                {"RegionRatio",  "0.3"},
                                {"RegionScale",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion",      "0.99"},
                                {"Height",            "650"},
                                {"Width",             "6000"},
                                {"RegionRatio",       "0.3"},
                                {"PlateauStratas",    "10"},
                                {"PlateauSharpness",  "5"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",      "True"},
                                {"NoiseGridType", "Sphere"},
                                {"MinWidth",      "256"},
                                {"MaxWidth",      "256"},
                                {"MinHeight",     "256"},
                                {"MaxHeight",     "256"},
                                {"HeightOffset",  "20"},
                                {"OffsetType",    "Zero"},
                                {"RegionRatio",   "0.1"},
                                {"RegionScale",   "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "12"},
                                {"TileBlendMeters", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",     "True"},
                                {"MaximumLOD", "2"},
                                {"Height",     "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "3"},
                                {"Form_n1", "4.5"},
                                {"Form_n2", "4.5"},
                                {"Form_n3", "4.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "3"},
                                {"Form_n1", "4.720826"},
                                {"Form_n2", "4.720826"},
                                {"Form_n3", "1.531547"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"WaterworldPrime", "Min", "Resources_Heridium"},
                                {"WaterworldPrime", "Min", "Resources_Iridium"},
                                {"WaterworldPrime", "Min", "Resources_Copper"},
                                {"WaterworldPrime", "Min", "Resources_Nickel"},
                                {"WaterworldPrime", "Min", "Resources_Aluminium"},
                                {"WaterworldPrime", "Min", "Resources_Gold"},
                                {"WaterworldPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"WaterworldPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "150"},
                                {"Height",     "96"},
                                {"Octaves",    "3"},
                                {"RegionSize", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "7"},
                                {"RidgeErosion", "0.99"},
                                {"RemapFromMin", "0"},
                                {"RemapFromMax", "1"},
                                {"RemapToMin",   "0.95"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.99"},
                                {"RegionRatio",  "0.15"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.15"},
                                {"RegionScale", "12"},
                                {"RegionGain",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion",  "0.99"},
                                {"MaximumLOD",    "3"},
                                {"Height",        "16"},
                                {"RegionRatio",   "0.15"},
                                {"RegionScale",   "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
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
                                {"Width",             "6000"},
                                {"RegionRatio",       "0.4"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Subtract",       "True"},
                                {"NoiseGridType",  "Sphere"},
                                {"MinWidth",       "256"},
                                {"MaxWidth",       "256"},
                                {"MinHeight",      "256"},
                                {"MaxHeight",      "256"},
                                {"HeightOffset",   "20"},
                                {"OffsetType",     "Zero"},
                                {"RegionRatio",    "0.1"},
                                {"RegionScale",    "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "12"},
                                {"TileBlendMeters", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "8"},
                                {"Active",     "True"},
                                {"MaximumLOD", "2"},
                                {"Height",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "SuperFormula1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "3"},
                                {"Form_n1", "4.5"},
                                {"Form_n2", "4.5"},
                                {"Form_n3", "4.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "SuperFormula2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Form_m",  "3"},
                                {"Form_n1", "4.720826"},
                                {"Form_n2", "4.720826"},
                                {"Form_n3", "1.531547"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"WaterworldPrime", "Max", "Resources_Heridium"},
                                {"WaterworldPrime", "Max", "Resources_Iridium"},
                                {"WaterworldPrime", "Max", "Resources_Copper"},
                                {"WaterworldPrime", "Max", "Resources_Nickel"},
                                {"WaterworldPrime", "Max", "Resources_Aluminium"},
                                {"WaterworldPrime", "Max", "Resources_Gold"},
                                {"WaterworldPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"WaterworldPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"WaterworldPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "250"},
                                {"Height",     "96"},
                                {"Octaves",    "6"},
                                {"RegionSize", "3000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WaterworldPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RemapFromMax", "0.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslandsPrime", "Min", "Resources_Heridium"},
                                {"FloatingIslandsPrime", "Min", "Resources_Iridium"},
                                {"FloatingIslandsPrime", "Min", "Resources_Copper"},
                                {"FloatingIslandsPrime", "Min", "Resources_Nickel"},
                                {"FloatingIslandsPrime", "Min", "Resources_Aluminium"},
                                {"FloatingIslandsPrime", "Min", "Resources_Gold"},
                                {"FloatingIslandsPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslandsPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.4"},
                                {"RidgeErosion",    "0.01"},
                                {"Height",          "1500"},
                                {"RegionScale",     "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslandsPrime", "Max", "Resources_Heridium"},
                                {"FloatingIslandsPrime", "Max", "Resources_Iridium"},
                                {"FloatingIslandsPrime", "Max", "Resources_Copper"},
                                {"FloatingIslandsPrime", "Max", "Resources_Nickel"},
                                {"FloatingIslandsPrime", "Max", "Resources_Aluminium"},
                                {"FloatingIslandsPrime", "Max", "Resources_Gold"},
                                {"FloatingIslandsPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"FloatingIslandsPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"FloatingIslandsPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FloatingIslandsPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",   "0"},
                                {"PerturbFeatures",   "0"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0"},
                                {"RemapFromMax",      "1"},
                                {"RemapToMin",        "0.9"},
                                {"MaximumLOD",        "3"},
                                {"Width",             "800"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "5"},
                                {"PlateauRegionSize", "425"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeGain",         "0.5"},
                                {"AmplifyFeatures",   "0"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "32"},
                                {"RegionScale",       "1"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "8"},
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
                                {"RemapFromMin",      "0.1"},
                                {"Width",             "350"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"OffsetType",        "Base"},
                                {"PlateauSharpness",  "8"},
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
                                {"MaximumLOD",        "3"},
                                {"RegionRatio",       "0.5"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "8"},
                                {"PlateauRegionSize", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
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
                                {"RidgeErosion",      "0"},
                                {"Gain",              "0.3"},
                                {"RemapFromMin",      "0.3"},
                                {"RemapFromMax",      "0.6"},
                                {"RemapToMax",        "1"},
                                {"Height",            "1200"},
                                {"Width",             "3000"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "3"},
                                {"PlateauSharpness",  "10"},
                                {"PlateauRegionSize", "500"},
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
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyonPrime", "Min", "Resources_Heridium"},
                                {"GrandCanyonPrime", "Min", "Resources_Iridium"},
                                {"GrandCanyonPrime", "Min", "Resources_Copper"},
                                {"GrandCanyonPrime", "Min", "Resources_Nickel"},
                                {"GrandCanyonPrime", "Min", "Resources_Aluminium"},
                                {"GrandCanyonPrime", "Min", "Resources_Gold"},
                                {"GrandCanyonPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyonPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures",   "0"},
                                {"PerturbFeatures",   "0"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0"},
                                {"RemapFromMax",      "1"},
                                {"RemapToMin",        "0.95"},
                                {"MaximumLOD",        "3"},
                                {"Width",             "800"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "5"},
                                {"PlateauRegionSize", "425"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeGain",         "0.5"},
                                {"AmplifyFeatures",   "0"},
                                {"RidgeErosion",      "0"},
                                {"Height",            "32"},
                                {"RegionRatio",       "0.25"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauSharpness",  "8"},
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
                                {"RemapFromMin",      "0.2"},
                                {"Width",             "350"},
                                {"RegionRatio",       "0.25"},
                                {"RegionGain",        "0"},
                                {"OffsetType",        "Base"},
                                {"PlateauSharpness",  "8"},
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
                                {"MaximumLOD",           "3"},
                                {"Height",               "20"},
                                {"RegionRatio",          "0.25"},
                                {"RegionScale",          "8"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauSharpness",     "8"},
                                {"PlateauRegionSize",    "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
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
                                {"RidgeErosion",      "0"},
                                {"Gain",              "0.3"},
                                {"RemapFromMin",      "0.4"},
                                {"RemapToMax",        "1"},
                                {"Height",            "1200"},
                                {"Width",             "3000"},
                                {"RegionScale",       "2"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "3"},
                                {"PlateauSharpness",  "10"},
                                {"PlateauRegionSize", "500"},
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
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyonPrime", "Max", "Resources_Heridium"},
                                {"GrandCanyonPrime", "Max", "Resources_Iridium"},
                                {"GrandCanyonPrime", "Max", "Resources_Copper"},
                                {"GrandCanyonPrime", "Max", "Resources_Nickel"},
                                {"GrandCanyonPrime", "Max", "Resources_Aluminium"},
                                {"GrandCanyonPrime", "Max", "Resources_Gold"},
                                {"GrandCanyonPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GrandCanyonPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"GrandCanyonPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GrandCanyonPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "7"},
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0.01"},
                                {"Height",          "32"},
                                {"RegionRatio",     "0.5"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "8"},
                                {"SlopeErosion", "0"},
                                {"RegionRatio",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0.01"},
                                {"MaximumLOD",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
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
                                {"AmplifyFeatures",      "0.1"},
                                {"PerturbFeatures",      "0.1"},
                                {"RidgeErosion",         "0.01"},
                                {"RemapFromMin",         "0.2"},
                                {"Height",               "1400"},
                                {"RegionRatio",          "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavinesPrime", "Min", "Resources_Heridium"},
                                {"MountainRavinesPrime", "Min", "Resources_Iridium"},
                                {"MountainRavinesPrime", "Min", "Resources_Copper"},
                                {"MountainRavinesPrime", "Min", "Resources_Nickel"},
                                {"MountainRavinesPrime", "Min", "Resources_Aluminium"},
                                {"MountainRavinesPrime", "Min", "Resources_Gold"},
                                {"MountainRavinesPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavinesPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "7"},
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0.01"},
                                {"Height",          "32"},
                                {"RegionRatio",     "0.25"},
                                {"RegionScale",     "4"},
                                {"RegionGain",      "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "8"},
                                {"SlopeErosion", "0"},
                                {"RemapFromMax", "1"},
                                {"Height",       "256"},
                                {"RegionScale",  "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0.01"},
                                {"MaximumLOD",      "3"},
                                {"Height",          "16"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "8"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.3"},
                                {"RidgeErosion",      "0"},
                                {"Gain",              "0.6"},
                                {"RemapFromMin",      "0.3"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "99.99"},
                                {"RegionRatio",       "0.4"},
                                {"RegionScale",       "4"},
                                {"PlateauStratas",    "3"},
                                {"PlateauSharpness",  "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0.1"},
                                {"PerturbFeatures",      "0.1"},
                                {"RidgeErosion",         "0.01"},
                                {"RemapFromMin",         "0.2"},
                                {"Height",               "1400"},
                                {"RegionRatio",          "0.95"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavinesPrime", "Max", "Resources_Heridium"},
                                {"MountainRavinesPrime", "Max", "Resources_Iridium"},
                                {"MountainRavinesPrime", "Max", "Resources_Copper"},
                                {"MountainRavinesPrime", "Max", "Resources_Nickel"},
                                {"MountainRavinesPrime", "Max", "Resources_Aluminium"},
                                {"MountainRavinesPrime", "Max", "Resources_Gold"},
                                {"MountainRavinesPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"MountainRavinesPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"MountainRavinesPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MountainRavinesPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.1"},
                                {"PerturbFeatures", "0.1"},
                                {"RidgeErosion",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"Height",          "32"},
                                {"RegionRatio",     "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0"},
                                {"Height",       "64"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "4"},
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                                {"RidgeErosion",    "0"},
                                {"MaximumLOD",      "3"},
                                {"RegionRatio",     "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SharpToRoundFeatures", "0"},
                                {"Gain",                 "0.4"},
                                {"Width",                "4000"},
                                {"RegionRatio",          "0.6"},
                                {"RegionScale",          "2"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArchesPrime", "Min", "Resources_Heridium"},
                                {"HugeArchesPrime", "Min", "Resources_Iridium"},
                                {"HugeArchesPrime", "Min", "Resources_Copper"},
                                {"HugeArchesPrime", "Min", "Resources_Nickel"},
                                {"HugeArchesPrime", "Min", "Resources_Aluminium"},
                                {"HugeArchesPrime", "Min", "Resources_Gold"},
                                {"HugeArchesPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArchesPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",          "40"},
                                {"RegionSize",      "900"},
                                {"HeightOffset",    "24"},
                                {"OffsetType",      "All"},
                                {"TileBlendMeters", "32"},
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
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
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
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                                {"RidgeErosion",    "0.31"},
                                {"Height",          "32"},
                                {"RegionRatio",     "0.375"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.31"},
                                {"RemapFromMax", "1"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "4"},
                                {"AmplifyFeatures", "0"},
                                {"PerturbFeatures", "0"},
                                {"RidgeErosion",    "0.31"},
                                {"MaximumLOD",      "3"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "6"},
                                {"SharpToRoundFeatures", "0"},
                                {"RemapFromMin",         "0.2"},
                                {"Width",                "4000"},
                                {"RegionRatio",          "0.6"},
                                {"RegionScale",          "4"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArchesPrime", "Max", "Resources_Heridium"},
                                {"HugeArchesPrime", "Max", "Resources_Iridium"},
                                {"HugeArchesPrime", "Max", "Resources_Copper"},
                                {"HugeArchesPrime", "Max", "Resources_Nickel"},
                                {"HugeArchesPrime", "Max", "Resources_Aluminium"},
                                {"HugeArchesPrime", "Max", "Resources_Gold"},
                                {"HugeArchesPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"HugeArchesPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"HugeArchesPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Width",           "144"},
                                {"Height",          "40"},
                                {"HeightOffset",    "24"},
                                {"TileBlendMeters", "32"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"HugeArchesPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "4"},
                                {"Width",       "50"},
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0"},
                                {"RemapFromMin", "0.2"},
                                {"Height",       "64"},
                                {"RegionRatio",  "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"AlienPrime", "Min", "Resources_Heridium"},
                                {"AlienPrime", "Min", "Resources_Iridium"},
                                {"AlienPrime", "Min", "Resources_Copper"},
                                {"AlienPrime", "Min", "Resources_Nickel"},
                                {"AlienPrime", "Min", "Resources_Aluminium"},
                                {"AlienPrime", "Min", "Resources_Gold"},
                                {"AlienPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"AlienPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "250"},
                                {"Height",                  "200"},
                                {"Octaves",                 "6"},
                                {"RegionSize",              "1000"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "-20"},
                                {"OffsetType",              "Base"},
                                {"SmoothRadius",            "0"},
                                {"TileBlendMeters",         "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",           "250"},
                                {"Height",          "60"},
                                {"Octaves",         "4"},
                                {"RegionSize",      "1000"},
                                {"HeightOffset",    "25"},
                                {"SmoothRadius",    "0"},
                                {"TileBlendMeters", "8"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",       "50"},
                                {"RegionRatio", "0.25"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0"},
                                {"RemapFromMin", "0.2"},
                                {"RegionRatio",  "0.25"},
                                {"RegionScale",  "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"Height",      "16"},
                                {"RegionRatio", "0.15"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",      "1500"},
                                {"RegionRatio", "0.6"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"AlienPrime", "Max", "Resources_Heridium"},
                                {"AlienPrime", "Max", "Resources_Iridium"},
                                {"AlienPrime", "Max", "Resources_Copper"},
                                {"AlienPrime", "Max", "Resources_Nickel"},
                                {"AlienPrime", "Max", "Resources_Aluminium"},
                                {"AlienPrime", "Max", "Resources_Gold"},
                                {"AlienPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"AlienPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"AlienPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Base"},
                                {"Width",                   "250"},
                                {"Height",                  "200"},
                                {"Octaves",                 "6"},
                                {"RegionSize",              "1000"},
                                {"HeightVarianceFrequency", "0"},
                                {"HeightOffset",            "-20"},
                                {"OffsetType",              "Base"},
                                {"SmoothRadius",            "0"},
                                {"TileBlendMeters",         "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "BlobsSmall"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",           "250"},
                                {"Height",          "60"},
                                {"Octaves",         "4"},
                                {"RegionSize",      "1000"},
                                {"HeightOffset",    "25"},
                                {"SmoothRadius",    "0"},
                                {"TileBlendMeters", "8"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                                {"RemapToMin",      "0.8"},
                                {"Height",          "32"},
                                {"Width",           "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "6"},
                                {"SlopeBias",            "0.1"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"SlopeErosion",         "1"},
                                {"Gain",                 "0.2"},
                                {"RemapFromMin",         "0.3"},
                                {"Height",               "32"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.8"},
                                {"RegionScale",          "6"},
                                {"RegionGain",           "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.2"},
                                {"RegionScale",  "3"},
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
                                {"MaximumLOD",           "3"},
                                {"RegionRatio",          "0.2"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "1"},
                                {"PlateauRegionSize",    "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0"},
                                {"Gain",            "0.2"},
                                {"RemapFromMin",    "0.2"},
                                {"Width",           "750"},
                                {"RegionRatio",     "0.7"},
                                {"RegionScale",     "3"},
                                {"RegionGain",      "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",      "True"},
                                {"MaximumLOD",  "2"},
                                {"Height",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CratersPrime", "Min", "Resources_Heridium"},
                                {"CratersPrime", "Min", "Resources_Iridium"},
                                {"CratersPrime", "Min", "Resources_Copper"},
                                {"CratersPrime", "Min", "Resources_Nickel"},
                                {"CratersPrime", "Min", "Resources_Aluminium"},
                                {"CratersPrime", "Min", "Resources_Gold"},
                                {"CratersPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CratersPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "3"},
                                {"SmoothRadius", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"Width",        "5"},
                                {"Height",       "4"},
                                {"RegionSize",   "50"},
                                {"Ratio",        "0.1"},
                                {"HeightOffset", "-0.25"},
                                {"SmoothRadius", "3"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "20"},
                                {"Height",       "30"},
                                {"RegionSize",   "75"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0.5"},
                                {"RemapToMin",      "0.95"},
                                {"Height",          "32"},
                                {"Width",           "2000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "6"},
                                {"SlopeBias",            "0.1"},
                                {"SharpToRoundFeatures", "0"},
                                {"AmplifyFeatures",      "0"},
                                {"PerturbFeatures",      "0"},
                                {"RidgeErosion",         "0"},
                                {"SlopeErosion",         "1"},
                                {"Gain",                 "0.2"},
                                {"RemapFromMin",         "0.4"},
                                {"Width",                "100"},
                                {"RegionRatio",          "0.9"},
                                {"RegionScale",          "8"},
                                {"RegionGain",           "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0.5"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "4"},
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
                                {"MaximumLOD",        "3"},
                                {"Height",            "40"},
                                {"RegionRatio",       "0.1"},
                                {"RegionScale",       "12"},
                                {"RegionGain",        "0"},
                                {"PlateauStratas",    "1"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0"},
                                {"Gain",            "0.2"},
                                {"RemapFromMin",    "0.3"},
                                {"Width",           "750"},
                                {"RegionRatio",     "0.9"},
                                {"RegionScale",     "4"},
                                {"RegionGain",      "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.1"},
                                {"RegionScale", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "8"},
                                {"Active",     "True"},
                                {"MaximumLOD", "2"},
                                {"Height",     "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CratersPrime", "Max", "Resources_Heridium"},
                                {"CratersPrime", "Max", "Resources_Iridium"},
                                {"CratersPrime", "Max", "Resources_Copper"},
                                {"CratersPrime", "Max", "Resources_Nickel"},
                                {"CratersPrime", "Max", "Resources_Aluminium"},
                                {"CratersPrime", "Max", "Resources_Gold"},
                                {"CratersPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CratersPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"CratersPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",      "3"},
                                {"RegionSize",   "1600"},
                                {"SmoothRadius", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",    "2"},
                                {"Width",         "5"},
                                {"Height",        "4"},
                                {"RegionSize",    "50"},
                                {"Ratio",         "0.2"},
                                {"HeightOffset",  "-0.25"},
                                {"SmoothRadius",  "3"},
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
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CratersPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapToMin",        "0.4"},
                                {"MaximumLOD",        "3"},
                                {"Height",            "100"},
                                {"PlateauStratas",    "3"},
                                {"PlateauRegionSize", "650"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0.01"},
                                {"Height",          "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0"},
                                {"Height",       "64"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0.01"},
                                {"MaximumLOD",      "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "4"},
                                {"Gain",        "0.4"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "4"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"MinWidth",        "20"},
                                {"MaxWidth",        "25"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "10"},
                                {"MinHeightOffset", "0"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-5"},
                                {"OffsetType",      "All"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
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
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CavernsPrime", "Min", "Resources_Heridium"},
                                {"CavernsPrime", "Min", "Resources_Iridium"},
                                {"CavernsPrime", "Min", "Resources_Copper"},
                                {"CavernsPrime", "Min", "Resources_Nickel"},
                                {"CavernsPrime", "Min", "Resources_Aluminium"},
                                {"CavernsPrime", "Min", "Resources_Gold"},
                                {"CavernsPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CavernsPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Cave"},
                                {"Width",                   "50"},
                                {"Height",                  "25"},
                                {"RegionSize",              "500"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "500"},
                                {"HeightOffset",            "-35"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "30"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "25"},
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapToMin",        "0.4"},
                                {"MaximumLOD",        "3"},
                                {"Height",            "100"},
                                {"PlateauStratas",    "3"},
                                {"PlateauRegionSize", "650"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0"},
                                {"RegionRatio",     "0.375"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SlopeErosion", "0"},
                                {"RemapFromMax", "0.9"},
                                {"RegionRatio",  "0.1"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.2"},
                                {"RidgeErosion",    "0.99"},
                                {"MaximumLOD",      "3"},
                                {"RegionRatio",     "0.2"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",     "4"},
                                {"Gain",        "0.4"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "6"},
                                {"RegionGain",  "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"MinWidth",        "35"},
                                {"MaxWidth",        "40"},
                                {"MinHeight",       "20"},
                                {"MaxHeight",       "20"},
                                {"MinHeightOffset", "0"},
                                {"MaxHeightOffset", "0"},
                                {"HeightOffset",    "-10"},
                                {"OffsetType",      "All"},
                                {"RegionScale",     "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"Height",       "3"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
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
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CavernsPrime", "Max", "Resources_Heridium"},
                                {"CavernsPrime", "Max", "Resources_Iridium"},
                                {"CavernsPrime", "Max", "Resources_Copper"},
                                {"CavernsPrime", "Max", "Resources_Nickel"},
                                {"CavernsPrime", "Max", "Resources_Aluminium"},
                                {"CavernsPrime", "Max", "Resources_Gold"},
                                {"CavernsPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"CavernsPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"CavernsPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NoiseVoxelType",          "Cave"},
                                {"Width",                   "70"},
                                {"Height",                  "25"},
                                {"Octaves",                 "8"},
                                {"RegionSize",              "3000"},
                                {"HeightVarianceAmplitude", "0"},
                                {"HeightVarianceFrequency", "500"},
                                {"HeightOffset",            "-35"},
                                {"OffsetType",              "Base"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Width",        "60"},
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"CavernsPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",                   "25"},
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMin", "0"},
                                {"MaximumLOD",   "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AltitudeErosion", "0"},
                                {"RidgeErosion",    "0"},
                                {"RemapFromMin",    "0.2"},
                                {"RemapFromMax",    "1"},
                                {"Height",          "1300"},
                                {"Width",           "7500"},
                                {"RegionRatio",     "0.8"},
                                {"RegionScale",     "1"},
                                {"RegionGain",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD",  "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                              {"AlpinePrime", "Min", "Resources_Heridium"},
                              {"AlpinePrime", "Min", "Resources_Iridium"},
                              {"AlpinePrime", "Min", "Resources_Copper"},
                              {"AlpinePrime", "Min", "Resources_Nickel"},
                              {"AlpinePrime", "Min", "Resources_Aluminium"},
                              {"AlpinePrime", "Min", "Resources_Gold"},
                              {"AlpinePrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD",      "1"},
                              {"MinHeightOffset", "-9"},
                              {"MaxHeightOffset", "-10"},
                              {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                              {"AlpinePrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"Octaves",    "4"},
                              {"Active",     "True"},
                              {"MaximumLOD", "1"},
                              {"Height",     "5"},
                              {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"Width",        "10"},
                              {"Height",       "30"},
                              {"RegionSize",   "150"},
                              {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"Height",                  "12"},
                              {"Octaves",                 "3"},
                              {"RegionSize",              "75"},
                              {"HeightVarianceAmplitude", "4"},
                              {"HeightVarianceFrequency", "40"},
                              {"HeightOffset",            "-10"},
                              {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RemapFromMin", "0"},
                                {"MaximumLOD",   "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.375"},
                                {"RegionScale", "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RegionRatio", "0.45"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "3"},
                                {"RegionRatio", "0.15"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "7"},
                                {"AltitudeErosion", "0"},
                                {"RidgeErosion",    "0"},
                                {"RemapFromMin",    "0.1"},
                                {"RemapFromMax",    "1"},
                                {"Height",          "1300"},
                                {"Width",           "7500"},
                                {"RegionRatio",     "0.9"},
                                {"RegionGain",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD",   "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                              {"AlpinePrime", "Max", "Resources_Heridium"},
                              {"AlpinePrime", "Max", "Resources_Iridium"},
                              {"AlpinePrime", "Max", "Resources_Copper"},
                              {"AlpinePrime", "Max", "Resources_Nickel"},
                              {"AlpinePrime", "Max", "Resources_Aluminium"},
                              {"AlpinePrime", "Max", "Resources_Gold"},
                              {"AlpinePrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD",      "1"},
                              {"MinHeightOffset", "-9"},
                              {"MaxHeightOffset", "-10"},
                              {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                              {"AlpinePrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                              {"AlpinePrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"Octaves",    "7"},
                              {"Active",     "True"},
                              {"MaximumLOD", "1"},
                              {"Height",     "5"},
                              {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                              {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlpinePrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed",         "0"},
                                {"UseSeedValue", "False"},
                                {"SeaLevel",     "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "1"},
                                {"AmplifyFeatures",      "0.2"},
                                {"PerturbFeatures",      "0.2"},
                                {"RidgeErosion",         "1"},
                                {"MaximumLOD",           "3"},
                                {"Width",                "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "1"},
                                {"AmplifyFeatures",      "0.2"},
                                {"PerturbFeatures",      "0.2"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "32"},
                                {"Width",                "350"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AmplifyFeatures", "0.4"},
                                {"PerturbFeatures", "-0.1"},
                                {"RidgeErosion",    "1"},
                                {"RemapFromMax",    "0.8"},
                                {"Width",           "500"},
                                {"RegionRatio",     "0.5"},
                                {"RegionScale",     "4"},
                                {"OffsetType",      "Base"},
                                {"TileBlendMeters", "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "3"},
                                {"SharpToRoundFeatures", "1"},
                                {"AmplifyFeatures",      "0.2"},
                                {"PerturbFeatures",      "0.2"},
                                {"RidgeErosion",         "0.01"},
                                {"MaximumLOD",           "3"},
                                {"NoiseVoxelType",       "Rock"},
                                {"RegionRatio",          "0.4"},
                                {"TileBlendMeters",      "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
                                {"PlateauStratas",    "0"},
                                {"PlateauRegionSize", "50"},
                            }
                        },
                       {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "20"},
                                {"Width",  "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "7"},
                                {"AmplifyFeatures", "0.4"},
                                {"PerturbFeatures", "0.1"},
                                {"RidgeErosion",    "1"},
                                {"RemapFromMin",    "0.2"},
                                {"Height",          "1400"},
                                {"Width",           "6000"},
                                {"RegionRatio",     "0.7"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Rock"},
                                {"NoiseGridType",   "Sphere"},
                                {"MinWidth",        "15"},
                                {"MaxWidth",        "15"},
                                {"MinHeight",       "8"},
                                {"MaxHeight",       "8"},
                                {"MinHeightOffset", "-6"},
                                {"MaxHeightOffset", "-4"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "0.01"},
                                {"RegionScale",     "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "1"},
                                {"SeedOffset",      "0"},
                                {"TileBlendMeters", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "True"},
                                {"MaximumLOD",      "2"},
                                {"Height",          "1"},
                                {"Width",           "5"},
                                {"RegionRatio",     "0.5"},
                                {"RegionScale",     "3"},
                                {"TileBlendMeters", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "False"},
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"NoiseGridType",   "Sphere"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "10"},
                                {"MinHeightOffset", "10"},
                                {"MaxHeightOffset", "10"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "1"},
                                {"RegionScale",     "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPadPrime", "Min", "Resources_Heridium"},
                                {"LilyPadPrime", "Min", "Resources_Iridium"},
                                {"LilyPadPrime", "Min", "Resources_Copper"},
                                {"LilyPadPrime", "Min", "Resources_Nickel"},
                                {"LilyPadPrime", "Min", "Resources_Aluminium"},
                                {"LilyPadPrime", "Min", "Resources_Gold"},
                                {"LilyPadPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPadPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "True"},
                                {"NoiseVoxelType", "Mountain"},
                                {"Width",          "150"},
                                {"Height",         "100"},
                                {"Octaves",        "6"},
                                {"RegionSize",     "1000"},
                                {"SmoothRadius",   "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "25"},
                                {"RegionSize", "150"},
                                {"Ratio",      "0.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Seed",     "4953848520566904599"},
                                {"SeaLevel", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "1"},
                                {"AmplifyFeatures",      "0.2"},
                                {"PerturbFeatures",      "0.2"},
                                {"RidgeErosion",         "1"},
                                {"MaximumLOD",           "3"},
                                {"Height",               "32"},
                                {"Width",                "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Hill"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "7"},
                                {"SharpToRoundFeatures", "1"},
                                {"AmplifyFeatures",      "0.2"},
                                {"PerturbFeatures",      "0.2"},
                                {"RidgeErosion",         "0.01"},
                                {"Height",               "32"},
                                {"Width",                "350"},
                                {"RegionRatio",          "0.25"},
                                {"RegionScale",          "4"},
                                {"RegionGain",           "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Mountain"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "10"},
                                {"AmplifyFeatures", "0.4"},
                                {"PerturbFeatures", "-0.1"},
                                {"RidgeErosion",    "1"},
                                {"Height",          "256"},
                                {"Width",           "500"},
                                {"RegionRatio",     "0.5"},
                                {"RegionScale",     "10"},
                                {"TileBlendMeters", "32"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Rock"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",              "3"},
                                {"SharpToRoundFeatures", "1"},
                                {"AmplifyFeatures",      "0.2"},
                                {"PerturbFeatures",      "0.2"},
                                {"RidgeErosion",         "0.01"},
                                {"MaximumLOD",           "3"},
                                {"NoiseVoxelType",       "Rock"},
                                {"Height",               "16"},
                                {"RegionRatio",          "0.2"},
                                {"RegionScale",          "8"},
                                {"OffsetType",           "All"},
                                {"TileBlendMeters",      "4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
                                {"PlateauStratas",   "3"},
                                {"PlateauSharpness", "5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Texture"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "20"},
                                {"Width",  "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Elevation"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",         "10"},
                                {"AmplifyFeatures", "0.4"},
                                {"PerturbFeatures", "0.1"},
                                {"RidgeErosion",    "1"},
                                {"RemapFromMin",    "0.2"},
                                {"Height",          "1400"},
                                {"Width",           "6000"},
                                {"RegionRatio",     "0.9"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Rock"},
                                {"NoiseGridType",   "Sphere"},
                                {"MinWidth",        "15"},
                                {"MaxWidth",        "15"},
                                {"MinHeight",       "8"},
                                {"MaxHeight",       "8"},
                                {"MinHeightOffset", "-6"},
                                {"MaxHeightOffset", "-4"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "0.01"},
                                {"RegionScale",     "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius",    "1"},
                                {"SeedOffset",      "0"},
                                {"TileBlendMeters", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "True"},
                                {"MaximumLOD",      "2"},
                                {"Height",          "1"},
                                {"Width",           "5"},
                                {"RegionRatio",     "1.5"},
                                {"RegionScale",     "8"},
                                {"TileBlendMeters", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Small", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",          "False"},
                                {"MaximumLOD",      "3"},
                                {"NoiseVoxelType",  "Base"},
                                {"NoiseGridType",   "Sphere"},
                                {"MinWidth",        "100"},
                                {"MaxWidth",        "100"},
                                {"MinHeight",       "10"},
                                {"MaxHeight",       "10"},
                                {"MinHeightOffset", "10"},
                                {"MaxHeightOffset", "10"},
                                {"HeightOffset",    "0"},
                                {"OffsetType",      "Base"},
                                {"RegionRatio",     "1"},
                                {"RegionScale",     "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large"},
                            ["SUB_LEVEL"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SmoothRadius", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "1.5"},
                                {"RegionScale", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Large", "SuperPrimitive"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",              "1"},
                                {"Height",             "1"},
                                {"BottomRadiusOffset", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPadPrime", "Max", "Resources_Heridium"},
                                {"LilyPadPrime", "Max", "Resources_Iridium"},
                                {"LilyPadPrime", "Max", "Resources_Copper"},
                                {"LilyPadPrime", "Max", "Resources_Nickel"},
                                {"LilyPadPrime", "Max", "Resources_Aluminium"},
                                {"LilyPadPrime", "Max", "Resources_Gold"},
                                {"LilyPadPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"LilyPadPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"LilyPadPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Blobs"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Active",         "True"},
                                {"NoiseVoxelType", "Mountain"},
                                {"Width",          "150"},
                                {"Height",         "128"},
                                {"Octaves",        "8"},
                                {"RegionSize",     "1500"},
                                {"SmoothRadius",   "6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Substance"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",      "20"},
                                {"Height",     "75"},
                                {"RegionSize", "450"},
                                {"Ratio",      "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LilyPadPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RemapFromMin", "0"},
                                {"RemapFromMax", "1"},
                                {"RemapToMin",   "0.9"},
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
                                {"MaximumLOD",           "3"},
                                {"RegionRatio",          "0.2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",           "4"},
                                {"SlopeGain",         "0.7"},
                                {"SlopeBias",         "0.5"},
                                {"AmplifyFeatures",   "0.2"},
                                {"PerturbFeatures",   "0.1"},
                                {"RidgeErosion",      "0"},
                                {"RemapFromMin",      "0.2"},
                                {"RemapFromMax",      "1"},
                                {"Height",            "15.99"},
                                {"Width",             "50"},
                                {"RegionRatio",       "0.95"},
                                {"HeightOffset",      "-5.99"},
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
                                {"RidgeErosion",         "0"},
                                {"Gain",                 "0.4"},
                                {"Height",               "1200"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "0.3"},
                                {"RegionScale",          "4"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "4"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-10"},
                                {"RegionScale",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HeightOffset", "-10"},
                                {"OffsetType",   "Zero"},
                                {"RegionScale",  "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",  "2"},
                                {"RegionRatio", "0.5"},
                                {"RegionScale", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"DesertPrime", "Min", "Resources_Heridium"},
                                {"DesertPrime", "Min", "Resources_Iridium"},
                                {"DesertPrime", "Min", "Resources_Copper"},
                                {"DesertPrime", "Min", "Resources_Nickel"},
                                {"DesertPrime", "Min", "Resources_Aluminium"},
                                {"DesertPrime", "Min", "Resources_Gold"},
                                {"DesertPrime", "Min", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"DesertPrime", "Min", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Min", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Min", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Min", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Min", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Min", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Min", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "4"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "96"},
                                {"Octaves",    "4"},
                                {"RegionSize", "3000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Caves", "Mouth"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",        "10"},
                                {"Height",       "30"},
                                {"RegionSize",   "150"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Min", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "12"},
                                {"Octaves",                 "3"},
                                {"RegionSize",              "75"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "40"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Base"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RidgeErosion", "0.01"},
                                {"RemapFromMin", "0"},
                                {"RemapFromMax", "1"},
                                {"RemapToMin",   "0.95"},
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
                                {"RegionRatio",          "0.15"},
                                {"RegionScale",          "4"},
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
                                {"RegionRatio",       "0.15"},
                                {"RegionScale",       "8"},
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
                                {"MaximumLOD",      "3"},
                                {"Height",          "48"},
                                {"RegionRatio",     "0.1"},
                                {"RegionScale",     "16"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "UnderWater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",          "8"},
                                {"SlopeBias",        "0.5"},
                                {"AmplifyFeatures",  "0.3"},
                                {"RidgeErosion",     "0"},
                                {"Gain",             "0.6"},
                                {"RemapFromMin",     "0.3"},
                                {"RemapFromMax",     "1"},
                                {"Height",           "99.99"},
                                {"RegionRatio",      "0.4"},
                                {"RegionScale",      "4"},
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
                                {"RidgeErosion",         "0"},
                                {"Gain",                 "0.4"},
                                {"Width",                "3000"},
                                {"RegionRatio",          "0.4"},
                                {"RegionScale",          "6"},
                                {"RegionGain",           "0"},
                                {"PlateauStratas",       "6"},
                                {"PlateauSharpness",     "10"},
                                {"PlateauRegionSize",    "500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "128"},
                                {"MaxWidth",     "192"},
                                {"HeightOffset", "-10"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Small", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinWidth",     "128"},
                                {"MaxWidth",     "192"},
                                {"HeightOffset", "-10"},
                                {"OffsetType",   "Zero"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Large", "TurbulenceNoiseLayer"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",   "2"},
                                {"RegionRatio",  "1.5"},
                                {"RegionScale",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"DesertPrime", "Max", "Resources_Heridium"},
                                {"DesertPrime", "Max", "Resources_Iridium"},
                                {"DesertPrime", "Max", "Resources_Copper"},
                                {"DesertPrime", "Max", "Resources_Nickel"},
                                {"DesertPrime", "Max", "Resources_Aluminium"},
                                {"DesertPrime", "Max", "Resources_Gold"},
                                {"DesertPrime", "Max", "Resources_Emeril"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD",      "1"},
                                {"MinHeightOffset", "-9"},
                                {"MaxHeightOffset", "-10"},
                                {"HeightOffset",    "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"DesertPrime", "Max", "Resources_Heridium", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Max", "Resources_Iridium", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Max", "Resources_Copper", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Max", "Resources_Nickel", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Max", "Resources_Aluminium", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Max", "Resources_Gold", "TurbulenceNoiseLayer"},
                                {"DesertPrime", "Max", "Resources_Emeril", "TurbulenceNoiseLayer"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Octaves",    "7"},
                                {"Active",     "True"},
                                {"MaximumLOD", "1"},
                                {"Height",     "5"},
                                {"Width",      "10"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "River"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",     "96"},
                                {"Octaves",    "4"},
                                {"RegionSize", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Crater"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaximumLOD", "2"},
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
                                {"Height",       "30"},
                                {"RegionSize",   "200"},
                                {"SmoothRadius", "12"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DesertPrime", "Max", "Caves", "Tunnel"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height",                  "14"},
                                {"Octaves",                 "4"},
                                {"RegionSize",              "150"},
                                {"HeightVarianceAmplitude", "4"},
                                {"HeightVarianceFrequency", "100"},
                                {"HeightOffset",            "-10"},
                                {"SmoothRadius",            "12"},
                            }
                        },
                    }
                },
            }
        },
    }
}