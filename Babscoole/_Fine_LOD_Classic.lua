NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "_Fine_LOD_Classic.pak",
["MOD_AUTHOR"] = "Prof Horatio Hafnaugels",
["LUA_AUTHOR"] = "Babscoole",
["NMS_VERSION"] = "5.21",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\BOOTLOGOPC.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Value", "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", ""} -- Original "TEXTURES/UI/LOADING/MIDDLEWAREPAIR.DDS"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DisplayTime"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "1"}, -- Original "3"
                                {"IGNORE", "0"}, -- Original "2"
                                {"IGNORE", "0"}, -- Original "1"
                                {"IGNORE", "0"}, -- Original "1"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                -- {"AnimationScale",        "10"},  -- Original "50"
                                {"TerrainFadeTime",       "1"},   -- Original "2"
                                {"TerrainFadeTimeInShip", "1"},   -- Original "2"
                                {"CreatureFadeTime",      "0.7"}, -- Original "1.5"
                                {"FloraFadeTimeMin",      "0.3"}, -- Original "0.6"
                                {"FloraFadeTimeMax",      "1"}  -- Original "2.25"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LODAdjust"},
                            ["SECTION_ACTIVE"] = {4},
                            ["REPLACE_TYPE"] = "ALLINSIDESECTION",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "3"}, -- Original "1"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetObjectSwitch",        "2100"},  -- Original "700"
                                {"PlanetLodSwitch0",          "900"},   -- Original "300"
                                {"PlanetLodSwitch0Elevation", "2100"},  -- Original "700"
                                {"PlanetLodSwitch1",          "6000"},  -- Original "2000"
                                {"PlanetLodSwitch2",          "30000"}, -- Original "10000"
                                {"PlanetLodSwitch3",          "60000"}, -- Original "20000"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"EnvironmentPrimeProperties"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetObjectSwitch",        "6000"},  -- Original "2000"
                                {"PlanetLodSwitch0",          "6000"},  -- Original "2000"
                                {"PlanetLodSwitch0Elevation", "6000"},  -- Original "2000"
                                {"PlanetLodSwitch1",          "6000"},  -- Original "2000"
                                {"PlanetLodSwitch2",          "30000"}, -- Original "10000"
                                {"PlanetLodSwitch3",          "60000"}, -- Original "20000"
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ForceUncachedTerrain", "True"} -- Original "False"
                            }
                        }
                    }
                },
            }
        }
    }
}