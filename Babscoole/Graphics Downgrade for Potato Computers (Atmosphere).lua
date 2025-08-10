NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Graphics Downgrade for Potato Computers (Atmosphere)",
["MOD_AUTHOR"]    = "N1h1lius",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SkipIntro",                "true"},
                                {"SkipLogos",                "true"},
                                {"FastLoad",                 "true"},
                                {"CanLeaveDialogs",          "true"},
                                {"UnlockAllSeasonRewards",   "true"},
                                {"UnlockAllTwitchRewards",   "true"},
                                {"UnlockAllPlatformRewards", "true"},
                                {"UseParticles",             "false"},
                                {"UseVolumetrics",           "false"},
                                {"UseClouds",                "false"},
                                {"EnableCloudAnimation",     "false"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShadowLength",                   "0"},
                                {"ShadowLengthShip",               "0"},
                                {"ShadowLengthSpace",              "0"},
                                {"ShadowLengthStation",            "0"},
                                {"ShadowLengthFreighter",          "0"},
                                {"ShadowLengthFreighterAbandoned", "0"},
                                {"Single1ScanTime",                "0.5"},
                                {"Single2ScanTime",                "0.5"},
                                {"AtmosphereSize",                 "1"},
                                {"RingSize",                       "0"},
                                {"RingRadius",                     "0"},
                                {"RingAvoidanceSphereInterpTime",  "0"},
                                {"FoliageSaturationMin",           "0"},
                                {"FoliageSaturationMax",           "0"},
                                {"FoliageValueMin",                "0"},
                                {"FoliageValueMax",                "0"},
                                {"GrassSaturationMin",             "0"},
                                {"GrassSaturationMax",             "0"},
                                {"GrassValueMin",                  "0"},
                                {"GrassValueMax",                  "0"},
                                {"SkySaturationMin",               "0"},
                                {"SkySaturationMax",               "0"},
                                {"SkyValueMin",                    "0"},
                                {"SkyValueMax",                    "0"},
                                {"MaxSpaceFogStrength",            "0"},
                                {"MaxParticleRenderRange",         "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSKYGLOBALS.GLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"FogAdjust", "GcPhotoModeAdjustData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AdjustMin", "0"},
                                {"AdjustMax", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CloudAdjust", "GcPhotoModeAdjustData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AdjustMax",      "0"},
                                {"AdjustMaxRange", "0"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxCloudCover",      "0"},
                                {"MaxStormCloudCover", "0"},
                                {"MinValue",           "0"},
                                {"MaxValue",           "0"},
                                {"MinFogValue",        "0"},
                                {"MaxFogValue",        "0"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CloudRatio", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSMOKETESTOPTIONS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InitialPause",               "0"},
                                {"SmokeTestFlashTimeDuration", "0"},
                                {"GifFrames",                  "0"},
                                {"GifTimeBetweenKeyframes",    "0"},
                                {"SmokeBotTurnAngle",          "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}