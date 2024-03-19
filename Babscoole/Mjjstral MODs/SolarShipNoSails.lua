NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "SolarShipNoSails.pak",
["MOD_AUTHOR"]    = "Mjstral and JJHookah and Babscoole",
["NMS_VERSION"]   = "4.52",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\ROOTJNT.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "LOWALTITUDE"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Filename", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIP_PROC.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Name", "_Sails_A"},
                                {"Name", "_Sails_B"},
                                {"Name", "_Sails_C"},
                            },
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
            }
        }
    }
}