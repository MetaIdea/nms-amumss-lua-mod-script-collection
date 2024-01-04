NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Ultimate_Combat.pak",
["MOD_DESCRIPTION"] = "Increases weapons DPS in space and on foot",
["MOD_AUTHOR"]      = "pyronoxomega",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "4.47",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DamageMultiplierTable"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Multiplier", "28360"},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Laser",   "GcShipWeaponData.xml"},
                                {"Missile", "GcShipWeaponData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle",       "3"},
                                {"AutoAimExtraAngle",  "15"},
                                {"ShowOverheatSwitch", "False"},
                                {"OverheatCoolTime",   "0"},
                                {"CoolRate",           "1"},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Projectile", "GcShipWeaponData.xml"},
                                {"Shotgun",    "GcShipWeaponData.xml"},
                                {"Plasma",     "GcShipWeaponData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle",       "4"},
                                {"AutoAimExtraAngle",  "20"},
                                {"ShowOverheatSwitch", "False"},
                                {"OverheatCoolTime",   "0"},
                                {"CoolRate",           "1"},
                            }
                        },
                        {
                            ["FOREACH_SKW_GROUP"] =
                            {
                                {"Minigun", "GcShipWeaponData.xml"},
                                {"Rocket",  "GcShipWeaponData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle",       "5"},
                                {"AutoAimExtraAngle",  "20"},
                                {"ShowOverheatSwitch", "False"},
                                {"OverheatCoolTime",   "0"},
                                {"CoolRate",           "1"},
                            }
                        },
                    }
                }
            }
        }
    }
}