NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BSP 3.91.pak",
["MOD_AUTHOR"]    = "ThatBomberBoi",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.91",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMALBUMEN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"TriggerAction", "STEP1_ENTER"},
                                {"TriggerAction", "STEP1"},
                                {"TriggerAction", "STEP2_ENTER"},
                                {"TriggerAction", "STEP2"},
                            },
                            ["VCT"] =
                            {
                                {"Time", "1200"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                        {
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMBARREN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSCORCHED\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"TriggerAction", "STEP1_ENTER"},
                                {"TriggerAction", "STEP1"},
                                {"TriggerAction", "STEP2_ENTER"},
                                {"TriggerAction", "STEP2"},
                            },
                            ["VCT"] =
                            {
                                {"Time", "1800"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                        {
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMDEADCREATURE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMNIP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"TriggerAction", "STEP1_ENTER"},
                                {"TriggerAction", "STEP1"},
                                {"TriggerAction", "STEP2_ENTER"},
                                {"TriggerAction", "STEP2"},
                            },
                            ["VCT"] =
                            {
                                {"Time", "900"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                        {
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMLUSH\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMPOOP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMRADIOACTIVE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMTOXIC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                            "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMVENOMSAC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"TriggerAction", "STEP1_ENTER"},
                                {"TriggerAction", "STEP1"},
                                {"TriggerAction", "STEP2_ENTER"},
                                {"TriggerAction", "STEP2"},
                            },
                            ["VCT"] =
                            {
                                {"Time", "600"}
                            }
                        },
                    }
                },
            }
        }
    }
}