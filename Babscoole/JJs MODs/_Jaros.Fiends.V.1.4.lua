NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_Jaros.Fiends.V.1.4.pak",
["MOD_AUTHOR"]              = "JJHookah",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.51",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_UNDERWATER\ENTITIES\CRYSTAL_LARGE_UNDERWATER.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",       "True"},
                                {"IncreaseFiendWantedChance", "0.5"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_MOUNTAIN\ENTITIES\SHARDS_MOUNTAIN.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",       "True"},
                                {"IncreaseFiendWantedChance", "0.05"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL\ENTITIES\CYSTAL_SMALL.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",       "True"},
                                {"IncreaseFiendWantedChance", "0.3"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\ROCKS\MEDIUM\MEDIUMROCK\ENTITIES\MEDIUMROCKSCAN.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["NOTICE_OFF"] = "TRUE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",       "True"},
                                {"IncreaseFiendWantedChance", "0.07"},
                            }
                        },
                    }
                },
            }
        },
    }
}
