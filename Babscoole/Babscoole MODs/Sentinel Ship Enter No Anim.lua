NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Sentinel Ship Enter No Anim",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Removes animations when entering Sentinel ship",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        "MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELCOCKPIT\ENTITIES\COCKPITINTERIOR.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "ENTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FrameStart", "80"},
                            }
                        },
                    }
                },
            }
        }
    }
}