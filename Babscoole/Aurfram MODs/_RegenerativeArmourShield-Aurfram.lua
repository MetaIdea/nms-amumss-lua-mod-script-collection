NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_RegenerativeArmourShield-Aurfram.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultHealthPips",                "10"},
                                {"DefaultShipHealthPips",            "10"},
                                {"MaxHealthPips",                    "10"},
                                {"ShieldRechargeMinTimeSinceDamage", "0"},
                                {"ShieldRechargeRate",               "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShieldRechargeMinHitTime", "0"},
                                {"ShieldRechargeRate",       "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDHEALTH.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIELDICON"},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "1"},
                                {"A", "0.3"},
                            }
                        },
                    }
                },
            }
        },
    }
}