NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralGameplayandGraphics.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ThirdPersonIsDefaultCameraForPlayer", "False"},
                                {"RenderCreatureDetails",               "True"},
                                {"CreatureChatter",                     "True"},
                                {"CreatureErrors",                      "True"},
                                {"DrawCreaturesInRoutines",             "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TerrainAnisoUlt",         "16"},
                                {"TargetTextureMemUsageMB", "2042"},
                            }
                        },
                    }
                },
            }
        }
    }
}