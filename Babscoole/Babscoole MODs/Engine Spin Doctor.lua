NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Engine Spin Doctor",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Change the spin rate for certain engines used in fighters and sailships",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\SHARED\ENTITIES\SHAREDSPIN_NORMAL.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\RBACKENGINEROUND.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\SHAREDDATA\ENTITIES\SPINDATA_1.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\SHAREDDATA\ENTITIES\SPINDATA_2.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\SHAREDDATA\ENTITIES\SPINDATA_SLOW.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\ENGINE\ENGINE_B\ENGINEB\ENTITIES\TURNBINE.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\COCKPIT\COCKPITBSINGLECYLINDER\ENTITIES\ENGINEROTATE.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\WINGS\WINGSL\WINGSL_L\ENTITIES\ROTATE.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\SUBWINGS\SUBWINGSF\ENTITIES\ROTATE.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERS_L\ENTITIES\ENGINESPIN.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\THRUSTERS\THRUSTERSD\THRUSTERS_L\ENTITIES\ENGINESPIN1.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Components", "TkRotationComponentData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "@*5"} -- Org 0.1
                            }
                        },
                    }
                },
            }
        }
    }
}