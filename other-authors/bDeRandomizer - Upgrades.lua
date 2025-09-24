NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME = "bDerandomizer - Upgrades",
    MOD_AUTHOR = "Bladehawke",
    NMS_VERSION = "6.0.4",
    MOD_DESCRIPTION = [[
    Derandomizes procedural techs in the game. Note that while all 
    techs are max stat for their class while the mod is active, they
    will revert to their original stats when the mod is disabled or 
    removed
    ]],
    MODIFICATIONS = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
                    MXML_CHANGE_TABLE = {
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_LASER%w"},
                            REPLACE_TYPE = "ALL",
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_LASER%w", "StatsType", "Weapon_Laser_Mining_Speed"},
                                {"Id", "UP_LASER%w", "StatsType", "Weapon_Laser_ReloadTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_LASER%w", "StatsType", "Weapon_Laser_HeatTime"},
                                {"Id", "UP_LASER%w", "StatsType", "Weapon_Laser_Drain"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SCAN%w"},
                            REPLACE_TYPE = "ALL",
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SCAN%w", "StatsType", "Weapon_Scan_Radius"},
                                {"Id", "UP_SCAN%w", "StatsType", "Weapon_Scan_Discovery_Creature"},
                                {"Id", "UP_SCAN%w", "StatsType", "Weapon_Scan_Discovery_Flora"},
                                {"Id", "UP_SCAN%w", "StatsType", "Weapon_Scan_Discovery_Mineral"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_BOLT%w"},
                            REPLACE_TYPE = "ALL",
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_BOLT%w", "StatsType", "Weapon_Projectile_Damage"},
                                {"Id", "UP_BOLT%w", "StatsType", "Weapon_Projectile_ClipSize"},
                                {"Id", "UP_BOLT%w", "StatsType", "Weapon_Projectile_Rate"},
                                {"Id", "UP_BOLT%w", "StatsType", "Weapon_Projectile_BurstCap"},
                                {"Id", "UP_BOLT%w", "StatsType", "Weapon_Projectile_BurstCooldown"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_BOLT%w", "StatsType", "Weapon_Projectile_ReloadTime"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_GREN%w"},
                            REPLACE_TYPE = "ALL",
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_GREN%w", "StatsType", "Weapon_Grenade_Damage"},
                                {"Id", "UP_GREN%w", "StatsType", "Weapon_Grenade_Bounce"},
                                {"Id", "UP_GREN%w", "StatsType", "Weapon_Grenade_Radius"},
                                {"Id", "UP_GREN%w", "StatsType", "Weapon_Grenade_Speed"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_TGREN%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_TGREN%w", "StatsType", "Weapon_Grenade_Damage"},
                                {"Id", "UP_TGREN%w", "StatsType", "Weapon_Grenade_Radius"},
                                {"Id", "UP_TGREN%w", "StatsType", "Weapon_Grenade_Speed"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RAIL%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RAIL%w", "StatsType", "Weapon_Laser_Damage"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RAIL%w", "StatsType", "Weapon_Laser_ChargeTime"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SHOT%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SHOT%w", "StatsType", "Weapon_Projectile_Damage"},
                                {"Id", "UP_SHOT%w", "StatsType", "Weapon_Projectile_ClipSize"},
                                {"Id", "UP_SHOT%w", "StatsType", "Weapon_Projectile_Rate"},
                                {"Id", "UP_SHOT%w", "StatsType", "Weapon_Projectile_BurstCap"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SHOT%w", "StatsType", "Weapon_Projectile_ReloadTime"},
                                {"Id", "UP_SHOT%w", "StatsType", "Weapon_Projectile_BurstCooldown"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SMG%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SMG%w", "StatsType", "Weapon_Projectile_Damage"},
                                {"Id", "UP_SMG%w", "StatsType", "Weapon_Projectile_ClipSize"},
                                {"Id", "UP_SMG%w", "StatsType", "Weapon_Projectile_Rate"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_CANN%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_CANN%w", "StatsType", "Weapon_Projectile_Damage"},
                                {"Id", "UP_CANN%w", "StatsType", "Weapon_Projectile_MaximumCharge"},
                                {"Id", "UP_CANN%w", "StatsType", "Weapon_ChargedProjectile_ExtraSpeed"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_CANN%w", "StatsType", "Weapon_ChargedProjectile_ChargeTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SENGUN"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SENGUN", "StatsType", "Weapon_Projectile_Damage"},
                                {"Id", "UP_SENGUN", "StatsType", "Weapon_Projectile_Rate"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SENGUN", "StatsType", "Weapon_Projectile_ReloadTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_ENGY%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_ENGY%w", "StatsType", "Suit_Energy"},
                                {"Id", "UP_ENGY%w", "StatsType", "Suit_Energy_Regen"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_HAZ%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_HAZ%w", "StatsType", "Suit_Protection_HeatDrain"},
                                {"Id", "UP_HAZ%w", "StatsType", "Suit_Protection_ColdDrain"},
                                {"Id", "UP_HAZ%w", "StatsType", "Suit_Protection_RadDrain"},
                                {"Id", "UP_HAZ%w", "StatsType", "Suit_Protection_ToxDrain"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_JET%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_JET%w", "StatsType", "Suit_Jetpack_Tank"},
                                {"Id", "UP_JET%w", "StatsType", "Suit_Stamina_Strength"},
                                {"Id", "UP_JET%w", "StatsType", "Suit_Stamina_Recovery"},
                                {"Id", "UP_JET%w", "StatsType", "Suit_Jetpack_Refill"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_JET%w", "StatsType", "Suit_Jetpack_Drain"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SHLD%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SHLD%w", "StatsType", "Suit_Armour_Shield_Strength"},
                                {"Id", "UP_SHLD%w", "StatsType", "Suit_Armour_Health"} -- Not really doing anything
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SNSUIT"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SNSUIT", "StatsType", "Suit_Armour_Shield_Strength"},
                                {"Id", "UP_SNSUIT", "StatsType", "Suit_Armour_Health"},
                                {"Id", "UP_SNSUIT", "StatsType", "Suit_Energy"},
                                {"Id", "UP_SNSUIT", "StatsType", "Suit_Energy_Regen"},
                                {"Id", "UP_SNSUIT", "StatsType", "Suit_Stamina_Strength"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SNSUIT", "StatsType", "Suit_Jetpack_Drain"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RBSUIT"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_RBSUIT", "StatsType", "Suit_Armour_Shield_Strength"},
                                {"Id", "UP_RBSUIT", "StatsType", "Suit_Armour_Health"},
                                {"Id", "UP_RBSUIT", "StatsType", "Suit_Energy"},
                                {"Id", "UP_RBSUIT", "StatsType", "Suit_Energy_Regen"},
                                {"Id", "UP_RBSUIT", "StatsType", "Suit_Stamina_Strength"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RBSUIT", "StatsType", "Suit_Jetpack_Drain"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_UNW%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_UNW%d", "StatsType", "Suit_Underwater"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RAD%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RAD%d", "StatsType", "Suit_Protection_Radiation"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_RAD%d", "StatsType", "Suit_DamageReduce_Radiation"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_TOX%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_TOX%d", "StatsType", "Suit_Protection_Toxic"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_TOX%d", "StatsType", "Suit_DamageReduce_Toxic"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_COLD%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_COLD%d", "StatsType", "Suit_Protection_Cold"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_COLD%d", "StatsType", "Suit_DamageReduce_Cold"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_HOT%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_HOT%d", "StatsType", "Suit_Protection_Heat"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_HOT%d", "StatsType", "Suit_DamageReduce_Heat"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_PULSE%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "U%u_PULSE%w", "StatsType", "Ship_Boost"},
                                {"Id", "U%u_PULSE%w", "StatsType", "Ship_BoostManeuverability"},
                                {"Id", "U%u_PULSE%w", "StatsType", "Ship_Maneuverability"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                "Id",
                                "U%u_PULSE%w",
                                "StatsType",
                                "Ship_PulseDrive_MiniJumpFuelSpending"
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_PULSE%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_PULSE%w", "StatsType", "Ship_Boost"},
                                {"Id", "cV_PULSE%w", "StatsType", "Ship_BoostManeuverability"},
                                {"Id", "CV_PULSE%w", "StatsType", "Ship_Maneuverability"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                "Id",
                                "CV_PULSE%w",
                                "StatsType",
                                "Ship_PulseDrive_MiniJumpFuelSpending"
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_LAUN%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_LAUN%w", "StatsType", "Ship_Boost"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_LAUN%w", "StatsType", "Ship_Launcher_TakeOffCost"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_LAUN%w", "StatsType", "Ship_Boost"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_LAUN%w", "StatsType", "Ship_Launcher_TakeOffCost"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_HYP%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_HYP%w", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_HYP%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_HYP%w", "StatsType", "Ship_Hyperdrive_JumpDistance"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_S_SHL%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_S_SHL%w", "StatsType", "Ship_Armour_Shield_Strength"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_S_SHL%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_S_SHL%w", "StatsType", "Ship_Armour_Shield_Strength"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_SGUN%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "U%u_SGUN%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "U%u_SGUN%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "U%u_SGUN%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SGUN%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SGUN%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "CV_SGUN%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "CV_SGUN%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SROC%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SROC%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "CV_SROC%w", "StatsType", "Ship_Weapons_Guns_Range"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SROC%w", "StatsType", "Ship_Weapons_Guns_CoolTime"},
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "U%u_SLASR%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "U%u_SLASR%w", "StatsType", "Ship_Weapons_Lasers_Damage"},
                                {"Id", "U%u_SLASR%w", "StatsType", "Ship_Weapons_Lasers_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SLASR%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SLASR%w", "StatsType", "Ship_Weapons_Lasers_Damage"},
                                {"Id", "CV_SLASR%w", "StatsType", "Ship_Weapons_Lasers_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SSHOT%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SSHOT%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "UP_SSHOT%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "UP_SSHOT%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SSHOT%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SSHOT%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "CV_SSHOT%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "CV_SSHOT%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SMINI%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SMINI%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "UP_SMINI%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "UP_SMINI%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SMINI%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SMINI%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "CV_SMINI%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "CV_SMINI%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SBLOB%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SBLOB%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "UP_SBLOB%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "UP_SBLOB%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SBLOB%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SBLOB%w", "StatsType", "Ship_Weapons_Guns_Damage"},
                                {"Id", "CV_SBLOB%w", "StatsType", "Ship_Weapons_Guns_Rate"},
                                {"Id", "CV_SBLOB%w", "StatsType", "Ship_Weapons_Guns_HeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_EXGUN%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXGUN%w", "StatsType", "Vehicle_GunDamage"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXGUN%w", "StatsType", "Vehicle_GunRate"},
                                {"Id", "UP_EXGUN%w", "StatsType", "Vehicle_GunHeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_EXLAS%w"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXLAS%w", "StatsType", "Vehicle_LaserDamage"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXLAS%w", "StatsType", "Vehicle_LaserHeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_BOOST%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_BOOST%d", "StatsType", "Vehicle_BoostSpeed"},
                                {"Id", "UP_BOOST%d", "StatsType", "Vehicle_BoostTanks"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_EXENG%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXENG%d", "StatsType", "Vehicle_EngineTopSpeed"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXENG%d", "StatsType", "Vehicle_EngineFuelUse"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_EXSUB%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXSUB%d", "StatsType", "Vehicle_EngineTopSpeed"},
                                {"Id", "UP_EXSUB%d", "StatsType", "Vehicle_SubBoostSpeed"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_EXSUB%d", "StatsType", "Vehicle_EngineFuelUse"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_SUGUN%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SUGUN%d", "StatsType", "Vehicle_GunDamage"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_SUGUN%d", "StatsType", "Vehicle_GunRate"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_MCLAS%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MCLAS%d", "StatsType", "Vehicle_LaserDamage"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MCLAS%d", "StatsType", "Vehicle_LaserHeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_MFIRE%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MFIRE%d", "StatsType", "Vehicle_GunDamage"},
                                {"Id", "UP_MFIRE%d", "StatsType", "Weapon_FireDOT_Duration"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MFIRE%d", "StatsType", "Vehicle_GunHeatTime"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_MCGUN%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MCGUN%d", "StatsType", "Vehicle_GunDamage"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MCGUN%d", "StatsType", "Vehicle_GunHeatTime"},
                                {"Id", "UP_MCGUN%d", "StatsType", "Vehicle_GunRate"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_MCENG%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MCENG%d", "StatsType", "Vehicle_BoostTanks"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_MCENG%d", "StatsType", "Vehicle_EngineFuelUse"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_FRHYP%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_FRHYP%d", "StatsType", "Freighter_Hyperdrive_JumpDistance"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_FRSPE%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_FRSPE%d", "StatsType", "Freighter_Fleet_Speed"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_FRFUE%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_FRFUE%d", "StatsType", "Freighter_Fleet_Fuel"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_FRCOM%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_FRCOM%d", "StatsType", "Freighter_Fleet_Combat"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_FRTRA%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_FRTRA%d", "StatsType", "Freighter_Fleet_Trade"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_FREXP%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_FREXP%d", "StatsType", "Freighter_Fleet_Explore"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "UP_FRMIN%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "UP_FRMIN%d", "StatsType", "Freighter_Fleet_Mine"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_FIT%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_FIT%d", "StatsType", "Ship_BoostManeuverability"},
                                {"Id", "CV_FIT%d", "StatsType", "Ship_Boost"},
                                {"Id", "CV_FIT%d", "StatsType", "Ship_Maneuverability"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_SCI%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SCI%d", "StatsType", "Ship_Launcher_TakeOffCost"},
                                {"Id", "CV_SCI%d", "StatsType", "Ship_Launcher_AutoCharge"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_SCI%d", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*FB:ValueMin",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMax", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_TRA%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_TRA%d", "StatsType", "Ship_Armour_Shield_Strength"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Id", "CV_INV%d"},
                            MATH_OPERATION = "*F:NumStatsMax",
                            VALUE_CHANGE_TABLE = {
                                {"NumStatsMin", "1"}
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {
                                {"Id", "CV_INV%d", "StatsType", "Ship_Cargo_Slots"}
                            },
                            SECTION_UP = 1,
                            MATH_OPERATION = "*F:ValueMax",
                            VALUE_CHANGE_TABLE = {
                                {"ValueMin", "1"}
                            }
                        }
                    }
                }
            }
        }
    }
}