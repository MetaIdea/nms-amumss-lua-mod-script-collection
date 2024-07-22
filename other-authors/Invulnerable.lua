NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "ZNE_Invulnerable.pak",
    ["MOD_AUTHOR"] = "ZNECrode",
    ["LUA_AUTHOR"] = "ZNECrode",
    ["NMS_VERSION"] = "5.0",
    ["MOD_DESCRIPTION"] = "Makes personal and ship shield regain immediately.",
    ["MODIFICATIONS"] = {  
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ShieldRechargeMinTimeSinceDamage", "0.1"},
                                {"ShieldRechargeRate","100"}
                            }
                        }
                    }
                }
            }
        }
    }
}