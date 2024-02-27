NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]   = "InterceptorNoUnfold.pak",
["MOD_AUTHOR"]     = "Mjstral and maintenance by Babscoole",
["MOD_EXTRA_INFO"] = "Design your own fully customized sentinel ship (seed) on www.nms.center",
["NMS_VERSION"]    = "4.52",
["MODIFICATIONS"]  =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1\ENTITIES\DATA.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
                            ["VALUE_CHANGE_TABLE"] = {{"Filename", ""},}
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\ROOTJNT.ENTITY.MBIN",
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\WINGSB\ENTITIES\ROOTJNT.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW_1"] = "True",
                            ["PRECEDING_KEY_WORDS"] = {"Anims"},
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "TAKEOFF"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"Filename", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN",
                    },
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
            }
        }
    }
}