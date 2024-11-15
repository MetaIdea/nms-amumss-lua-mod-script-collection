NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_JellyBossEnhanced_Normal.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.25",
    ["MOD_DESCRIPTION"] = "Water, Water, Water, Water",
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                -- 8 Million Health Normal Version 
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
                                {"x", "4"},
                                {"y", "6"}
                            }
                        },
                        {
                            ["PKW"] = "GcCreatureJellyBossAttackData.xml",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"SpawnBroodPickWeight", "0.4"},
                                {"SpawnBroodCount", "10"},
                                {"MaxBroodCountPreventSpawn", "20"},
                                {"OrbAttackPickWeight", "0.6"},
                                {"OrbAttackCount", "2"},
                                {"OrbAttackProjectileCount", "20"},
                                {"OrbAttackLaunchSpeed", "10"},
                                {"OrbAttackExplosionRadius", "1"}
                            }
                        },
                        {
                            ["SKW"] = {"Id", "SPOOKBOSS"},
                            ["VCT"] =
                            {
                                {"HealthOverride", "8388608"},
                            }
                        }
                    }
                },
            }
        }
    }
}