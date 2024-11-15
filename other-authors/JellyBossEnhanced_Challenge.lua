NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_JellyBossEnhanced_Challenge.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.25",
    ["MOD_DESCRIPTION"] = "Water, Water, Water, Water",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- 134 Million Health Challenge Version 
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"OrbAttackCooldownRange", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"x", "4"},
                                {"y", "5"}
                            }
                        },
                        {
                            ["SKW"] = {"SpawnBroodCooldownRange", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"x", "1"},
                                {"y", "3"}
                            }
                        },
                        {
                            ["PKW"] = "GcCreatureJellyBossAttackData.xml",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"SpawnBroodPickWeight", "0.4"},
                                {"SpawnBroodCount", "15"},
                                {"MaxBroodCountPreventSpawn", "30"},
                                {"OrbAttackPickWeight", "0.6"},
                                {"OrbAttackCount", "5"},
                                {"OrbAttackProjectileCount", "25"},
                                {"OrbAttackLaunchSpeed", "10"},
                                {"OrbAttackExplosionRadius", "1.5"}
                            }
                        },
                        {
                            ["SKW"] = {"Id", "SPOOKBOSS"},
                            ["VCT"] =
                            {
                                {"HealthOverride", "134217728"},
                            }
                        }
                    }
                },
            }
        }
    }
}