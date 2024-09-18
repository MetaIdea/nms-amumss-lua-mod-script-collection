NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "QuickShipExit.pak",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.12",
["MOD_DESCRIPTION"] = "Exit ships instantly in 1st person",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        "MODELS\COMMON\SPACECRAFT\FIGHTERS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA_INTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT\ENTITIES\COCKPITINTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\COCKPIT\SAILSHIPCOCKPITA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SHUTTLE\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA_INTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SCIENTIFIC\INTERIORS\CANOPYA_INTERIOR\ENTITIES\CANOPYA_INTERIOR.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\INTERIORS\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\S-CLASS\BIOPARTS\INTERIOR\CANOPYA_INTERIOR\ENTITIES\COCKPIT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITB_INTERIOR\ENTITIES\COCKPITB.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Anim", "EXIT"},
                                {"Anim", "EJECT"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS\COMMON\SPACECRAFT\DROPSHIPS\COCKPIT\COCKPITA_INTERIOR\ENTITIES\COCKPITA.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "EXIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "5"},
                            }
                        },
                    }
                },
            }
        }
    }
}