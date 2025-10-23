NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "FastFarms180",
["MOD_DESCRIPTION"] = "Who wants to farm? Just give me my stuff already",
["MOD_AUTHOR"]      = "courtykat & Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMALBUMEN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMGRAVITINO\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMNIP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMVENOMSAC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1_ENTER"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "10799"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "10800"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2_ENTER"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "21599"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "21600"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseMissionClock", "true"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMBARREN\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMDEADCREATURE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMLUSH\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMPOOP\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMRADIOACTIVE\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSCORCHED\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMSNOW\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\INTERACTIVEFLORA\FARMTOXIC\ENTITIES\PLANTINTERACTION.ENTITY.MBIN",
                    },
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1_ENTER"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "5399"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP1"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "5400"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2_ENTER"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "10799"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TriggerAction", "STEP2"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Time", "10800"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UseMissionClock", "true"},
                            }
                        },
                    }
                },
            }
        },
    }
}