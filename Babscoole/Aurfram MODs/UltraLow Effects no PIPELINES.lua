NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "UltraLow Effects no PIPELINES.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "Aurfram",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SphereLodTextureScale", "1024"},
                                {"SunFactorMin",          "0.1"},
                                {"SpaceRadiation",        "0"},
                                {"TerrainFadeTime",       "0"},
                                {"TerrainFadeTimeInShip", "0"},
                                {"CreatureFadeTime",      "0"},
                                {"FloraFadeTimeMin",      "0"},
                                {"FloraFadeTimeMax",      "0"},
                                {"TerrainFlattenMin",     "0"},
                                {"TerrainFlattenMax",     "0"},
                                {"HeightFogHeightMin",    "0"},
                                {"WaterFogHeightMax",     "0"},
                                {"WaterAlphaHeightMin",   "0"},
                                {"WaterAlphaHeightMax",   "0"},
                                {"DoFHeightMin",          "0"},
                                {"DoFHeightMax",          "0"},
                                {"SunClampHeightMin",     "0"},
                                {"SunClampHeightMax",     "0"},
                                {"HeavyAirFadeDistance",  "0"},
                                {"HeavyAirFadeInTime",    "0"},
                                {"HeavyAirFadeOutTime",   "0"},
                                {"AsteroidFadeHeightMin", "0"},
                                {"AsteroidFadeHeightMax", "0"},
                                {"AsteroidMaxRotate",     "0"},
                                {"MinWaterReflections",   "0"},
                                {"SkyAtmospherePower",    "0"},
                                {"EnableWind",            "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Low", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier",            "0"},
                                {"MaxAsteroidGenerationPerFrame",          "1000"},
                                {"MaxAsteroidGenerationPerFramePulseJump", "200"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Medium", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"High", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Ultra", "TkLODSettingsData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeRangeMultiplier", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CloudProperties", "GcCloudProperties.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimationScale",       "5"},
                                {"CloudBottomFade",      "0"},
                                {"CloudDistortion",      "0"},
                                {"CloudDistortionScale", "0"},
                                {"HorizonFadeScalar",    "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND"},
                                {"Name", "STRONGWIND"},
                                {"Name", "UNDERWATER"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OverallWindStrength",       "0"},
                                {"LdsWindStrength",           "0"},
                                {"LdsWindSpeed",              "0"},
                                {"ShearWindSpeed",            "0"},
                                {"WindShearVertpushStrength", "0"},
                                {"WindShearGradientStrength", "0"},
                                {"WindShearToDotLdsFactor",   "0"},
                                {"WindStrengthToVertpush",    "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave0", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave0", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave0", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinStrength",           "0"},
                                {"MaxStrength",           "0"},
                                {"StrengthVariationFreq", "0"},
                                {"WaveSize",              "0"},
                                {"WaveFrequency",         "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave1", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave1", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave1", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinStrength",           "0"},
                                {"MaxStrength",           "0"},
                                {"StrengthVariationFreq", "0"},
                                {"WaveSize",              "0"},
                                {"WaveFrequency",         "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave2", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave2", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave2", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinStrength",   "0"},
                                {"MaxStrength",   "0"},
                                {"WaveSize",      "0"},
                                {"WaveFrequency", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "WIND", "Octave3", "TkShearWindOctaveData.xml"},
                                {"Name", "STRONGWIND", "Octave3", "TkShearWindOctaveData.xml"},
                                {"Name", "UNDERWATER", "Octave3", "TkShearWindOctaveData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxStrength",           "0"},
                                {"StrengthVariationFreq", "0"},
                                {"WaveSize",              "0"},
                                {"WaveFrequency",         "0"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AsteroidFadeHeightMin", "0"},
                                {"AsteroidFadeHeightMax", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCGRAPHICSGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            { 
                                {"LightShaftProperties",      "GcLightShaftProperties.xml"},
                                {"StormLightShaftProperties", "GcLightShaftProperties.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LightShaftScattering", "0"},
                                {"LightShaftStrength",   "0"},
                                {"LightShaftTop",        "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SunRayDensity",                                 "0"},
                                {"SunRayDecay",                                   "0"},
                                {"SunRayExposure",                                "0"},
                                {"SunRayWeight",                                  "0"},
                                {"Redo_LightIntensity",                           "0"},
                                {"Redo_SkyIntensity",                             "0"},
                                {"Redo_BounceIntensity",                          "0"},
                                {"New_BounceLightWarp",                           "0"},
                                {"New_BounceLightPower",                          "0"},
                                {"New_BounceLightIntensity",                      "0"},
                                {"New_SkyLightWarp",                              "0"},
                                {"New_SkyLightPower",                             "0"},
                                {"New_SkyLightIntensity",                         "0"},
                                {"New_SideRimWarp",                               "0"},
                                {"Old_BounceLightWarp",                           "0"},
                                {"Old_BounceLightPower",                          "0"},
                                {"Old_BounceLightIntensity",                      "0"},
                                {"Old_SkyLightWarp",                              "0"},
                                {"Old_SkyLightPower",                             "0"},
                                {"Old_SkyLightIntensity",                         "0"},
                                {"ShadowMapSize",                                 "0"},
                                {"ShadowLength",                                  "0"},
                                {"ShadowLengthShip",                              "0"},
                                {"ShadowLengthSpace",                             "0"},
                                {"ShadowLengthStation",                           "0"},
                                {"ShadowLengthFreighter",                         "0"},
                                {"ShadowLengthFreighterAbandoned",                "0"},
                                {"ShadowLengthCameraView",                        "0"},
                                {"ShadowQuantized",                               "False"},
                                {"FoliageValueMin",                               "0.01"},
                                {"FoliageValueMax",                               "0.01"},
                                {"GrassValueMin",                                 "0.01"},
                                {"GrassValueMax",                                 "0.01"},
                                {"SkyValueMin",                                   "0.01"},
                                {"SkyValueMax",                                   "0.01"},
                                {"MaxSpaceFogStrength",                           "0"},
                                {"ReflectionStrength",                            "0"},
                                {"AlphaCutoutMin",                                "0"},
                                {"AlphaCutoutMax",                                "10"},
                                {"WaterValue",                                    "0.01"},
                                {"MaxParticleRenderRange",                        "0"},
                                {"MaxParticleRenderRangeSpace",                   "0"},
                                {"TerrainAnisoLow",                               "0"},
                                {"TerrainAnisoMed",                               "0"},
                                {"TerrainAnisoHi",                                "0"},
                                {"TerrainAnisoUlt",                               "0"},
                                {"TerrainBlocksPerFrameLow",                      "1"},
                                {"MinPixelSizeOfObjectsInShadowsSpace",           "0"},
                                {"MinPixelSizeOfObjectsInShadowsPlanet",          "0"},
                                {"MinPixelSizeOfObjectsInShadowsCockpitOnPlanet", "0"},
                                {"TargetTextureMemUsageMB",                       "64"},
                            },
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCSKYGLOBALS.GLOBALS.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudRatio",          "0.1"},
                                {"AtmosphereThickness", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            { 
                                {"SpaceSkyMin", "GcSpaceSkyProperties.xml"},
                                {"SpaceSkyMax", "GcSpaceSkyProperties.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpaceFogStrength",         "0"},
                                {"SpaceFogMax",              "0"},
                                {"SpaceFogPlanetMax",        "0"},
                                {"NebulaFrequency",          "0"},
                                {"NebulaSparseness",         "0"},
                                {"NebulaWispyness",          "0"},
                                {"NebulaWispyness1",         "0"},
                                {"NebulaBrightness",         "0"},
                                {"NebulaCloudStrength1",     "0"},
                                {"NebulaNoiseFrequency",     "0"},
                                {"NebulaTurbulenceStrength", "0"},
                                {"NebulaFBMStrength",        "0"},
                                {"NebulaFBMStrength1",       "0"},
                                {"NebulaDistortionStrength", "0"},
                                {"NebulaSeed",               "0"},
                                {"NebulaTendrilStrength",    "0"},
                                {"NebulaFogAmount",          "0"},
                                {"NebulaCloudStrength",      "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = {"GCWATERGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"WaveHeight",            "0"},
                                {"WaveFrequency",         "0"},
                                {"WaveChoppiness",        "0"},
                                {"WaveCutoff",            "0"},
                                {"FresnelPow",            "0"},
                                {"FresnelMul",            "0"},
                                {"FresnelAlpha",          "0"},
                                {"FresnelBelowPow",       "0"},
                                {"FresnelBelowMul",       "0"},
                                {"FresnelBelowAlpha",     "0"},
                                {"WaterColourStrength",   "0.001"},
                                {"WaterMultiplyStrength", "0.01"},
                                {"WaterMultiplyMax",      "0.01"},
                                {"FresnelPower",          "0"},
                                {"FresnelMin",            "0"},
                                {"FresnelMax",            "0"},
                                {"Wave1Scale",            "0"},
                                {"Wave1Height",           "0"},
                                {"Wave1Speed",            "0"},
                                {"Wave2Scale",            "0"},
                                {"Wave2Height",           "0"},
                                {"Wave2Speed",            "0"},
                                {"NormalMap1Scale",       "0"},
                                {"NormalMap1Speed",       "0"},
                                {"NormalMap2Scale",       "0"},
                                {"NormalMap2Speed",       "0"},
                                {"FoamFadeHeight",        "0"},
                                {"Foam1Scale",            "0"},
                                {"Foam1Speed",            "0"},
                                {"Foam2Scale",            "0"},
                                {"Foam2Speed",            "0"},
                            }
                        },
                    }
                },
            }
        }
    },
}