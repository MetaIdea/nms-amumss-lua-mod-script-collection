NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "No weather.pak",
["MOD_AUTHOR"]    = "EliteGamers",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RAINWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN",
                        "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEIRDWEATHER.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LowStormsChance",      "0"},
                                {"HighStormsChance",     "0"},
                                {"ExtremeWeatherChance", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Temperature"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "0"},
                                {"Extreme", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Toxicity"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "0"},
                                {"Extreme", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "0"},
                                {"Extreme", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Storm"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "20"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Radiation", "Ambient"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Extreme", "92"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHEREFFECTS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weight", "0"},
                                {"MaxHazardsOfThisTypeActive", "0"},
                                {"MinSpawnScale", "0"},
                                {"MaxSpawnScale", "0"},
                                {"SpawnAttemptsPerRegion", "0"},
                                {"SpawnChancePerSecondPerAttempt", "0"},
                                {"ChanceOfPlanetBeingExtreme", "0"},
                                {"SpawnChancePerSecondExtreme", "0"},
                                {"MinSpawnDistance", "0"},
                                {"MaxSpawnDistance", "0"},
                                {"MinLifetime", "0"},
                                {"MaxLifetime", "0"},
                                {"FadeoutStart", "0"},
                                {"ClusterSpawnChance", "0"},
                                {"ClusterMinLifetime", "0"},
                                {"ClusterMaxLifetime", "0"},
                                {"PatchMinRadius", "0"},
                                {"PatchMaxRadius", "0"},
                                {"PatchMinSpawns", "0"},
                                {"MoveSpeed", "0"},
                                {"WanderMinRadius", "0"},
                                {"WanderMaxRadius", "0"},
                                {"WanderMaxArcDeg", "0"},
                                {"PatchMaxSpawns", "0"},
                                {"MinRadius", "0"},
                                {"MaxRadius", "0"},
                                {"DecalFullGrowthProgress", "0"},
                                {"NumFlashes", "0"},
                                {"FlashStartProgress", "0"},
                                {"EarliestImpact", "0"},
                                {"EarliestImpactFirstInstance", "0"},
                                {"StormDuration", "0"},
                                {"Speed", "0"},
                                {"MinMeteors", "0"},
                                {"MaxMeteors", "0"},
                                {"FullDamageRadius", "0"},
                                {"DamageRadius", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LIGHTNING_FAR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PatchMaxSpawns", "10"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERHAZARDS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weight", "0"},
                                {"MaxHazardsOfThisTypeActive", "0"},
                                {"ForcedOnByHazard", ""},
                                {"BlockedByCluster", ""},
                                {"MinSpawnScale", "0"},
                                {"MaxSpawnScale", "0"},
                                {"SpawnAttemptsPerRegion", "0"},
                                {"SpawnChancePerSecondPerAttempt", "0"},
                                {"ChanceOfPlanetBeingExtreme", "0"},
                                {"SpawnChancePerSecondExtreme", "0"},
                                {"MinLifetime", "0"},
                                {"MaxLifetime", "0"},
                                {"FadeoutStart", "0"},
                                {"ImpactGiftChance", "0"},
                                {"ClusterSpawnChance", "0"},
                                {"ClusterMinLifetime", "0"},
                                {"ClusterMaxLifetime", "0"},
                                {"PatchMinRadius", "0"},
                                {"PatchMaxRadius", "0"},
                                {"PatchMinSpawns", "0"},
                                {"PatchMaxSpawns", "0"},
                                {"MoveSpeed", "0"},
                                {"WanderMinRadius", "0"},
                                {"WanderMaxRadius", "0"},
                                {"WanderMaxArcDeg", "0"},
                                {"MinRadius", "0"},
                                {"MaxRadius", "0"},
                                {"DecalFullGrowthProgress", "0"},
                                {"NumFlashes", "0"},
                                {"FlashStartProgress", "0"},
                                {"EarliestImpact", "0"},
                                {"EarliestImpactFirstInstance", "0"},
                                {"StormDuration", "0"},
                                {"Speed", "0"},
                                {"MinMeteors", "0"},
                                {"MaxMeteors", "0"},
                                {"FullDamageRadius", "0"},
                                {"DamageRadius", "0"},
                                {"MinStrikes", "0"},
                                {"MaxStrikes", "0"},
                                {"MinSpawnDistance", "0"},
                                {"MaxSpawnDistance", "0"},
                                {"SuckInRadius", "0"},
                                {"SuckInStrength", "0"},
                                {"SuckUpRadius", "0"},
                                {"SuckUpStrength", "0"},
                                {"SuckUpHeight", "0"},
                                {"SuckUpHeightCutoff", "0"},
                                {"PatchScaling", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEATHERLIST.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DefaultTemperature"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Normal",  "0"},
                                {"Extreme", "0"},
                            }
                        },
                    }
                },
            }
        },
    }
}
