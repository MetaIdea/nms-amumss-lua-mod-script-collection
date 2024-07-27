NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_BetterFreighters.pak",
["MOD_AUTHOR"]    = "Kiecam",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.27",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETA\ENTITIES\TURRET.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\INDUSTRIAL\TURRET\TURRETB\ENTITIES\TURRET.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Template", "GcShootableComponentData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimTarget", "True"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AttackShipsFollowLeader",  "True"},
                                -- {"TurretRange",              "4000"},
                                -- {"TurretProjectileRange",    "4000"},
                                -- {"TurretAngle",              "10"},
                                -- {"TurretMaxDownAngle",       "0"},
                                -- {"TurretLaserActiveTime",    "0.5"},
                                -- {"TurretLaserLength",        "1000"},
                                -- {"TurretLaserAbortDistance", "10000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AttackShootTimeMax",  "20"},
                                {"AttackMaxTime",       "2000"},
                                {"AttackTooCloseRange", "50"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "TRADERGUN"},
                                {"Id", "BASE_TURRET_M"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseDamageNumberData", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",              "70"},
                                {"DefaultDamage",       "500"},
                                {"UseDamageNumberData", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HitWidth",      "30"},
                                {"DefaultDamage", "300"},
                                {"HitRate",       "0.95"},
                            }
                        },
                    }
                },
            }
        }
    }
}