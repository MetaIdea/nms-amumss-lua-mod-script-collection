NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] = "_NMS_SHIPHUD_1.3.pak",
["MOD_AUTHOR"] = "MadHoek -- DooDooDevan -- CrystalSharrd -- X00LA",
["LUA_AUTHOR"] = "X00LA",
["NMS_VERSION"] = "5.12",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR\GLOWGRADIENTORANGE_MAT.MATERIAL.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR\GLOWGRADIENTORANGE_MAT.MATERIAL.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITCOMMON_INTERIOR\GLOWGRADIENTORANGE_MAT.MATERIAL.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\GLOWGRADIENTORANGE_MAT.MATERIAL.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\CANOPYA_INTERIOR\GLOWGRADIENTORANGE_MAT.MATERIAL.MBIN",
                        "MODELS\HUD\SPACEMAPHORIZON\HORZ_MAT.MATERIAL.MBIN",
                        "MODELS\HUD\SPACEMAPHORIZON\HORZVAO_MAT.MATERIAL.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            
							["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Map", "TEXTURES/EFFECTS/GRADIENT_LONGFALLOFF.SHIPHUD.DDS"},
                            }
                        },
                    }
                },
            }
        },
    }
}
