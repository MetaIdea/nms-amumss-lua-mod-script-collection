NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "Jaros.Fiends.V.2.1",
["MOD_AUTHOR"]              = "JJHookah",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.12",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\LARGE\CRYSTAL_LARGE_UNDERWATER\ENTITIES\CRYSTAL_LARGE_UNDERWATER.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",          "true"},
                                {"IncreaseFiendWantedChance",    "0.500000"},
                                {"UseModelNode",                 "false"},
                                {"ShowInFreighterBranchRoom",    "true"},
                                {"MarkerActiveWithNodeInactive", "false"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_FRAGMENT_MOUNTAIN\ENTITIES\SHARDS_MOUNTAIN.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",          "true"},
                                {"IncreaseFiendWantedChance",    "0.030000"},
                                {"UseModelNode",                 "false"},
                                {"ShowInFreighterBranchRoom",    "true"},
                                {"MarkerActiveWithNodeInactive", "false"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\CRYSTALS\SMALL\CRYSTAL_SMALL\ENTITIES\CYSTAL_SMALL.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",          "true"},
                                {"IncreaseFiendWantedChance",    "0.200000"},
                                {"UseModelNode",                 "false"},
                                {"ShowInFreighterBranchRoom",    "true"},
                                {"MarkerActiveWithNodeInactive", "false"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\BIOMES\COMMON\ROCKS\MEDIUM\MEDIUMROCK\ENTITIES\MEDIUMROCKSCAN.ENTITY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IncreaseFiendWanted",       "true"},
                                {"IncreaseFiendWantedChance", "0.070000"},
                            }
                        },
                    }
                },
            }
        },
    }
}
