NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ExpeditionHazardAssist-Aurfram.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Aurfram",
["NMS_VERSION"]   = "5.11",
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
                                {"ShieldRechargeRate",               "200"},
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
                                {"ShieldRechargeRate",       "200"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\\SIMULATION\\ENVIRONMENT\\HAZARDTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
					     ["SPECIAL_KEY_WORDS"] = {"ProtectionTime", "Vector2f.xml"},
					     ["SECTION_UP"] = 0,
					     ["REPLACE_TYPE"] = "ALL",
					     ["INTEGER_TO_FLOAT"] = "FORCE",
					     ["VALUE_CHANGE_TABLE"] =
					        {
						       {"x", 9999999},
							   {"y", 9999999},
					        }
                        },
                    }
                },
            }
        },
    }
}