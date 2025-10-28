NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Quieter.Nexus.Core.V.1.3",
["MOD_AUTHOR"]    = "JJhookah",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.10",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\NEXUS\NEXUS\ENTITIES\MPTERMINAL.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"AnimTriggers", "TkAudioAnimTrigger"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Sound", ""},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "IDLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value", "ODELS/SPACE/NEXUS/PARTS/CENTRALPOINT/ANIMS/IDLE_1.ANIM.MBIN"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\NEXUS\PARTS\CENTRALPOINT\CENTRALPOINT\ORANGEGLOW_MAT2.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class", ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\NEXUS\PARTS\CENTRALPOINT\CENTRALPOINT\ORANGEGLOWFADE_MAT.MATERIAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Map", "EXTURES/SPACE/NEXUS/ORANGEGLOWFADE.DDS"},
                            }
                        },
                    }
                },
            }
        }
    },
}