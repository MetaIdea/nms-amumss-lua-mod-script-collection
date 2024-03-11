NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_Frigate_repair.pak",
["MOD_AUTHOR"]    = "Democrity",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = 
                    {
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\CARGOBAY\ENTITIES\CARGOBAY.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\CARGOCONTAINER\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\ENGINEREACTOR\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\MAINBATTERY\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\MAINTENANCEPOINT\ENTITIES\MAINTENANCEPOINT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\TORPEDOCONTAINER\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\TORPEDOCONTFRONTL\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\INTERACTIONS\TORPEDOCONTFRONTR\ENTITIES\MAINTENANCEINTERACTION.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FRIGATES\COMMONPARTS\SCENES\MAINBATTERY\ENTITIES\TURRET.ENTITY.MBIN",
                        
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceComponentData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DamageStatus", "Repaired"},
                                {"CompletionRequirement", "NoRequirement"},
                            }
                        },
                    }
                },
            }
        },
    }
}
