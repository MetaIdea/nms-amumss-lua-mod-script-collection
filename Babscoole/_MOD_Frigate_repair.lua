NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_Frigate_repair.pak",
["MOD_AUTHOR"]    = "Democrity",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\CARGOBAY\ENTITIES\CARGOBAY.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FRIG8"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageStatus", "Repaired"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\CARGOCONTAINER\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FRIG7"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageStatus",          "Repaired"},
                                {"CompletionRequirement", "NoRequirement"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\ENGINEREACTOR\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FRIG7"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageStatus", "Repaired"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\MAINTENANCEPOINT\ENTITIES\MAINTENANCEPOINT.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MAINT_FRIG7"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageStatus",          "Repaired"},
                                {"CompletionRequirement", "NoRequirement"},
                            }
                        },
                    }
                },
            }
        },
    }
}
