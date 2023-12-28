NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MOD_Improved_Containers.pak",
["MOD_AUTHOR"]    = "Democrity",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\BARREL\BARREL_MEDIUM\ENTITIES\BARREL_MEDIUM.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\BARREL\BARREL_MEDIUM_RARE\ENTITIES\BARREL_MEDIUM_RARE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISLARGE_COMMON\ENTITIES\DEBRIS.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISLARGE_COMMON\ENTITIES\DEBRISLARGE_COMMON.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISSMALL_COMMON\ENTITIES\DEBRISSMALL_COMMON.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISWARRIOR\ENTITIES\DEBRIS_COMMON.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\DEBRIS\DEBRISWARRIOR\ENTITIES\DEBRIS_RARE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\LUNAR\CRATE\ENTITIES\CRATE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CONTAINERS\CRATE_LARGE_CYCLINDER\ENTITIES\CRATE_LARGECYCLINDER.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CONTAINERS\GEOCACHE_LARGE\ENTITIES\GEOCACHE_LARGE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CONTAINERS\GEOCACHE_SMALL\ENTITIES\GEOCACHE_SMALL.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HideContents", "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE_RARE\ENTITIES\CRATE_LARGE_RARE.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HideContents",             "False"},
                                {"CompletionRequirement",    "NoRequirement"},
                                {"CompletedTransitionDelay", "0.2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\MODULES\DAMAGEDDOOR\ENTITIES\BROKENDOORDATA.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\MODULES\DAMAGEDWALL\ENTITIES\DAMAGEDWALL.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health", "10"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_LARGE\ENTITIES\CRATE_LARGE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_MEDIUM\ENTITIES\CRATE_MEDIUM.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_SMALLA\ENTITIES\CRATE_SMALLA.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_SMALLA_RARE\ENTITIES\CRATE_SMALLA_RARE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_SMALLB\ENTITIES\CRATE_SMALLB.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_SMALLB_RARE\ENTITIES\CRATE_SMALLB_RARE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\UNDERGROUNDCRATE\ENTITIES\UNDERGROUNDCRATE.ENTITY.MBIN",
                        "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\PARTS\BUILDABLEPARTS\CONTAINERS\CRATE_LARGE_RARE\ENTITIES\CRATE_LARGE_RARE.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Delay",        "0.2"},
                                {"HideContents", "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\CRATE_MEDIUM_RARE\ENTITIES\CRATE_MEDIUM_RARE.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Delay",        "0.3"},
                                {"HideContents", "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRATE\TREASURE_CHEST\ENTITIES\TREASURE_CHEST.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CompletedTransitionDelay", "0.2"},
                                {"HideContents",             "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\BUILDINGS\CRASHEDFREIGHTER\PARTS\CONTAINERTERMINAL\ENTITIES\TERMINALCHAR.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CompletedTransitionDelay", "0.2"},
                                {"HideContents",             "False"},
                            }
                        },
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CompletionRequirement", "NoRequirement"},
                            }
                        },
                    }
                },
            }
        },
    },
}