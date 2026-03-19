NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "MOD_DUD_ShipGuns_v564-A",
["MOD_AUTHOR"]    = "jasondude7116",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.64",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\DEFAULTREALITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Laser", "GcShipWeaponData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle",      "3"},
                                {"AutoAimExtraAngle", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Plasma", "GcShipWeaponData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle", "4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Missile", "GcShipWeaponData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle", "1.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Rocket", "GcShipWeaponData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AutoAimAngle", "4"},
                            }
                        },
                    },
                },
            },
        },
    },
}