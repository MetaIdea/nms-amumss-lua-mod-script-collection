NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_AstralGameplayandGraphics.pak",
["MOD_AUTHOR"]    = "AstralNut",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.03",
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
                                {"DrawCreaturesInRoutines",             "True"},
                                {"ShaderCaching",                       "True"},
                                {"DrawCreaturesInRoutines",             "False"},
                                {"DiscoveryAutoSyncIntervalSeconds",    "3600"},
                                {"BodyTurning",                         "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AllowSpaceScanEvents",           "True"},
                                {"MaxNumSameGroupTech",            "5"},
                                {"BinocMinScanTime",               "1.1"},
                                {"BinocScanTime",                  "1.1"},
                                {"MissionEventAllowResetDistance", "42"},
                                {"ChangePricesLocally",            "True"},
                            }
                        },
                    }
                },
            }
        }
    }
}