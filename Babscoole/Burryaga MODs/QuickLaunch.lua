NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "QuickLaunch.pak",
["MOD_AUTHOR"]    = "Burryaga",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.70",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SkipIntro",                           "True"},
                                {"SkipLogos",                           "True"},
                                {"SkipPlanetDiscoverOnBoot",            "True"},
                                {"IgnoreFreighterSpawnWarpRequirement", "True"},
                                {"SpecialsShop",                        "True"},
                                {"DisableProfanityFilter",              "True"},
                                {"DisableLimits",                       "True"},
                                {"GenerateFarLodBuildingDist",          "1500"},
                                {"DisableBaseBuildingLimits",           "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Textures"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", ""},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DisplayTime"},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}