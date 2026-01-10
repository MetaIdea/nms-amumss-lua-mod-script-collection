NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Solar Ship Bug Fix",
["MOD_AUTHOR"]    = "Vii9C",
["NMS_VERSION"]   = "6.+",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPANIMS/SAILSHIP_SHARED/ENTITIES/ROOTJNT.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anims","TkAnimationData","Anim", "LANDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Speed", "6.0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anims","TkAnimationData","Anim", "TURNLEFT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Filename", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anims","TkAnimationData","Anim", "TURNRIGHT"},
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