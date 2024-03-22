NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "RelicGateWarp.pak",
["NMS_VERSION"]     = "4.52",
["MOD_AUTHOR"]      = "Babscoole",
["MOD_DESCRIPTION"] = "WTFAI",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\SPACE\POI\GATE_POI\ENTITIES\GATEPOI.ENTITY.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"WarpType", "SpacePOI"},
                            ["SEC_SAVE_TO"] = "ADD_REWARDACTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\ROBOTS\SPIDER_QUADRUPED\ENTITIES\SPIDERQUAD.ENTITY.MBIN",
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcTriggerActionComponentData.xml"},
                            ["SEC_SAVE_TO"] = "ADD_TRIGGER",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"StateID",    "BOOT"},
                                {"Anim",       "RELIC_GATE_WARP"},
                                {"FrameStart", "0"},
                            }
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["PRECEDING_KEY_WORDS"] = {"GcCameraShakeAction.xml"},
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SEC_EDIT"] = "ADD_TRIGGER",
                            ["PRECEDING_KEY_WORDS"] = {"Action"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_REWARDACTION"
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\COMMON\PLAYER\PLAYERCHARACTER\PLAYERCHARACTER\ENTITIES\PLAYERCHARACTER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_TURN_L"},
                            ["SEC_SAVE_TO"] = "ADD_ANIM",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_ANIM",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Anim",     "RELIC_GATE_WARP"},
                                {"Filename", "MODELS/TESTS/EFFECTTEST.ANIM.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Anim", "0H_GREET_MOB_04"},
                            ["SECTION_ACTIVE"] = {2},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "ADD_ANIM",
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcPlayerEffectsComponentData.xml"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "ADD_TRIGGER",
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\UI\EMOTEMENU.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Title", "EMOTE_WAVE"},
                            ["SEC_SAVE_TO"] = "ADD_EMOTE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_EMOTE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Title",               "Relic Gate Warp"},
                                {"ChatText",            ""},
                                {"ChatUsesPrefix",      "False"},
                                {"EmoteID",             "RELIC_GATE_WARP"},
                                {"AnimationName",       "RELIC_GATE_WARP"},
                                {"Filename",            "TEXTURES/UI/FRONTEND/ICONS/EXPEDITION/PATCH.WARPFIX.DDS"},
                                {"MoveToCancel",        "True"},
                                {"RidingAnimationName", "RELIC_GATE_WARP"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_EMOTE",
                        },
                        {
                            ["SEC_EDIT"] = "ADD_EMOTE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AvailableUnderwater", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Emotes"},
                            ["ADD_OPTION"] = "ADDafterLINE",
                            ["SEC_ADD_NAMED"] = "ADD_EMOTE",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\TESTS\EFFECTTEST.ANIM.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FrameCount", "10"},
                                {"NodeCount",  "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}