NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Exo's Return of Maglock.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.40",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Laser","GcShipWeaponData.xml",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AutoAimAngle",       "3"},
                                {"AutoAimExtraAngle",  "12"},
                                {"ShowOverheatSwitch", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Projectile","GcShipWeaponData.xml",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AutoAimAngle",       "4"},
                                {"AutoAimExtraAngle",  "20"},
                                {"ShowOverheatSwitch", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Shotgun","GcShipWeaponData.xml",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AutoAimAngle",       "4"},
                                {"AutoAimExtraAngle",  "16"},
                                {"ShowOverheatSwitch", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Minigun","GcShipWeaponData.xml",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AutoAimAngle",       "5"},
                                {"AutoAimExtraAngle",  "20"},
                                {"ShowOverheatSwitch", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Plasma","GcShipWeaponData.xml",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AutoAimAngle",       "5"},
                                {"AutoAimExtraAngle",  "20"},
                                {"ShowOverheatSwitch", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Missile","GcShipWeaponData.xml",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AutoAimAngle",       "3"},
                                {"AutoAimExtraAngle",  "20"},
                                {"ShowOverheatSwitch", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rocket","GcShipWeaponData.xml",},
                            ["VALUE_CHANGE_TABLE"]     =
                            {
                                {"AutoAimExtraAngle",  "20"},
                                {"ShowOverheatSwitch", "False"},
                            }
                        },
                    }
                },
            }
        },
    },
}