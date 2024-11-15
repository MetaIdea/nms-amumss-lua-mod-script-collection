NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_JellyBossEnhanced_Easy.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.25",
    ["MOD_DESCRIPTION"] = "Water, Water, Water, Water",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- 131 Kilo Health Easy Version 
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"OrbAttackCooldownRange", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"x", "10"},
                                {"y", "14"}
                            }
                        },
                        {
                            ["SKW"] = {"SpawnBroodCooldownRange", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"x", "7"},
                                {"y", "10"}
                            }
                        },
                        {
                            ["PKW"] = "GcCreatureJellyBossAttackData.xml",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"SpawnBroodPickWeight", "1"},
                                {"SpawnBroodCount", "5"},
                                {"MaxBroodCountPreventSpawn", "10"},
                                {"OrbAttackPickWeight", "0.5"},
                                {"OrbAttackCount", "2"},
                                {"OrbAttackProjectileCount", "10"},
                                {"OrbAttackLaunchSpeed", "8"},
                                {"OrbAttackExplosionRadius", "0.5"}
                            }
                        },
                        {
                            ["SKW"] = {"Id", "SPOOKBOSS"},
                            ["VCT"] =
                            {
                                {"HealthOverride", "131072"},
                            }
                        }
                    }
                },
            }
        }
    }
}