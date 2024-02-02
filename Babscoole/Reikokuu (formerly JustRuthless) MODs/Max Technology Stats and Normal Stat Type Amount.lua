-- File Settings --
FileName = "Max Technology Stats and Normal Stat Type Amount.pak" -- can be changed to the name you want the mod but make sure to keep .pak at the end
ModAuthor = "Reikokuu" -- only for reference
LuaAuthor = "Reikokuu" -- only for reference
ModMaintenance = "Babscoole, DarkScythe"
NMS_Version = "3.99" -- only for reference

-- File Sources --
FileSource1 = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"]    = FileName,
  ["MOD_AUTHOR"]      = ModAuthor,
  ["LUA_AUTHOR"]      = LuaAuthor,
  ["MOD_MAINTENANCE"] = ModMaintenance,
  ["NMS_VERSION"]     = NMS_Version,
  ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            { 
                {
                    ["MBIN_FILE_SOURCE"] = {FileSource1},
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatLevels"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "GcWeightingCurve.xml",
                            ["VALUE_MATCH_OPTIONS"] = "~=",
                            ["VALUE_MATCH_TYPE"] = "STRING",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"WeightingCurve", "NoWeighting"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StatLevels"},
                            ["MATH_OPERATION"] = "*F:ValueMax",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET1", "StatsType", "Suit_Jetpack_Drain"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET2", "StatsType", "Suit_Jetpack_Drain"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET3", "StatsType", "Suit_Jetpack_Drain"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET4", "StatsType", "Suit_Jetpack_Drain"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JETX", "StatsType", "Suit_Jetpack_Drain"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SNSUIT", "StatsType", "Suit_Jetpack_Drain"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAD1", "StatsType", "Suit_DamageReduce_Radiation"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAD2", "StatsType", "Suit_DamageReduce_Radiation"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAD3", "StatsType", "Suit_DamageReduce_Radiation"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_TOX1", "StatsType", "Suit_DamageReduce_Toxic"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_TOX2", "StatsType", "Suit_DamageReduce_Toxic"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_TOX3", "StatsType", "Suit_DamageReduce_Toxic"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_COLD1", "StatsType", "Suit_DamageReduce_Cold"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_COLD2", "StatsType", "Suit_DamageReduce_Cold"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_COLD3", "StatsType", "Suit_DamageReduce_Cold"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_HOT1", "StatsType", "Suit_DamageReduce_Heat"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_HOT2", "StatsType", "Suit_DamageReduce_Heat"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_HOT3", "StatsType", "Suit_DamageReduce_Heat"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN1", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN2", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN3", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN4", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN1", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN2", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN3", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN4", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUNX", "StatsType", "Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_PULSE1", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_PULSE2", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_PULSE3", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UA_PULSE4", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_PULSE1", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_PULSE2", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_PULSE3", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_PULSE4", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_PULSEX", "StatsType", "Ship_PulseDrive_MiniJumpFuelSpending"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER1", "StatsType", "Weapon_Laser_Mining_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER2", "StatsType", "Weapon_Laser_Mining_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER3", "StatsType", "Weapon_Laser_Mining_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER4", "StatsType", "Weapon_Laser_Mining_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASERX", "StatsType", "Weapon_Laser_Mining_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER1", "StatsType", "Weapon_Laser_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER2", "StatsType", "Weapon_Laser_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER3", "StatsType", "Weapon_Laser_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASER4", "StatsType", "Weapon_Laser_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LASERX", "StatsType", "Weapon_Laser_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAIL1", "StatsType", "Weapon_Laser_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAIL2", "StatsType", "Weapon_Laser_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAIL3", "StatsType", "Weapon_Laser_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAIL4", "StatsType", "Weapon_Laser_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_RAILX", "StatsType", "Weapon_Laser_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_BOLT1", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_BOLT2", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_BOLT3", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_BOLT4", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_BOLTX", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOT1", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOT2", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOT3", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOT4", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOTX", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.7"},
                                {"ValueMax", "0.7"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SENGUN", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SMG2", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SMG3", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SMG4", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SMGX", "StatsType", "Weapon_Projectile_ReloadTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOT2", "StatsType", "Weapon_Projectile_BurstCooldown"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOT3", "StatsType", "Weapon_Projectile_BurstCooldown"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOT4", "StatsType", "Weapon_Projectile_BurstCooldown"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SHOTX", "StatsType", "Weapon_Projectile_BurstCooldown"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_CANN1", "StatsType", "Weapon_ChargedProjectile_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_CANN2", "StatsType", "Weapon_ChargedProjectile_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_CANN3", "StatsType", "Weapon_ChargedProjectile_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_CANN4", "StatsType", "Weapon_ChargedProjectile_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_CANNX", "StatsType", "Weapon_ChargedProjectile_ChargeTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.75"},
                                {"ValueMax", "0.75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN1", "StatsType", "Vehicle_GunHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN2", "StatsType", "Vehicle_GunHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN3", "StatsType", "Vehicle_GunHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN4", "StatsType", "Vehicle_GunHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCGUN2", "StatsType", "Vehicle_GunHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCGUN3", "StatsType", "Vehicle_GunHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCGUN4", "StatsType", "Vehicle_GunHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN1", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.97"},
                                {"ValueMax", "0.97"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN2", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN3", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.93"},
                                {"ValueMax", "0.93"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXGUN4", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SUGUN1", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.97"},
                                {"ValueMax", "0.97"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SUGUN2", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SUGUN3", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.93"},
                                {"ValueMax", "0.93"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_SUGUN4", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCGUN2", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCGUN3", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.93"},
                                {"ValueMax", "0.93"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCGUN4", "StatsType", "Vehicle_GunRate"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXLAS1", "StatsType", "Vehicle_LaserHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXLAS2", "StatsType", "Vehicle_LaserHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXLAS3", "StatsType", "Vehicle_LaserHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXLAS4", "StatsType", "Vehicle_LaserHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCLAS2", "StatsType", "Vehicle_LaserHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCLAS3", "StatsType", "Vehicle_LaserHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCLAS4", "StatsType", "Vehicle_LaserHeatTime"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXENG1", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXENG2", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXENG3", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXENG4", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXSUB1", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXSUB2", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXSUB3", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_EXSUB4", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCENG2", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCENG3", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_MCENG4", "StatsType", "Vehicle_EngineFuelUse"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.8"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRFUE1", "StatsType", "Freighter_Fleet_Fuel"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.99"},
                                {"ValueMax", "0.95"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRFUE2", "StatsType", "Freighter_Fleet_Fuel"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.95"},
                                {"ValueMax", "0.9"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRFUE3", "StatsType", "Freighter_Fleet_Fuel"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.9"},
                                {"ValueMax", "0.85"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRFUE4", "StatsType", "Freighter_Fleet_Fuel"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "0.85"},
                                {"ValueMax", "0.8"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRSPE1", "StatsType", "Freighter_Fleet_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.01"},
                                {"ValueMax", "1.05"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRSPE2", "StatsType", "Freighter_Fleet_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.05"},
                                {"ValueMax", "1.1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRSPE3", "StatsType", "Freighter_Fleet_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.1"},
                                {"ValueMax", "1.14"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRSPE4", "StatsType", "Freighter_Fleet_Speed"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.15"},
                                {"ValueMax", "1.15"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRCOM1", "StatsType", "Freighter_Fleet_Combat"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.01"},
                                {"ValueMax", "1.05"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRCOM2", "StatsType", "Freighter_Fleet_Combat"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.05"},
                                {"ValueMax", "1.1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRCOM3", "StatsType", "Freighter_Fleet_Combat"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.1"},
                                {"ValueMax", "1.14"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRCOM4", "StatsType", "Freighter_Fleet_Combat"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.15"},
                                {"ValueMax", "1.15"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRTRA1", "StatsType", "Freighter_Fleet_Trade"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.01"},
                                {"ValueMax", "1.05"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRTRA2", "StatsType", "Freighter_Fleet_Trade"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.05"},
                                {"ValueMax", "1.1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRTRA3", "StatsType", "Freighter_Fleet_Trade"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.1"},
                                {"ValueMax", "1.14"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRTRA4", "StatsType", "Freighter_Fleet_Trade"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.15"},
                                {"ValueMax", "1.15"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FREXP1", "StatsType", "Freighter_Fleet_Explore"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.01"},
                                {"ValueMax", "1.05"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FREXP2", "StatsType", "Freighter_Fleet_Explore"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.05"},
                                {"ValueMax", "1.1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FREXP3", "StatsType", "Freighter_Fleet_Explore"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.1"},
                                {"ValueMax", "1.14"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FREXP4", "StatsType", "Freighter_Fleet_Explore"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.15"},
                                {"ValueMax", "1.15"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRMIN1", "StatsType", "Freighter_Fleet_Mine"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.01"},
                                {"ValueMax", "1.05"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRMIN2", "StatsType", "Freighter_Fleet_Mine"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.05"},
                                {"ValueMax", "1.1"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRMIN3", "StatsType", "Freighter_Fleet_Mine"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.1"},
                                {"ValueMax", "1.14"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UP_FRMIN4", "StatsType", "Freighter_Fleet_Mine"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ValueMin", "1.15"},
                                {"ValueMax", "1.15"},
                            },
                        },
                    },
                }
            },
        }
    },
}