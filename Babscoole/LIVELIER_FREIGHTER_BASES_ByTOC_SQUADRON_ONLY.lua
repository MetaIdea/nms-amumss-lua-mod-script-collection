NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "LIVELIER_FREIGHTER_BASES_ByTOC_SQUADRON_ONLY.pak",
["MOD_AUTHOR"]              = "ThatOneCarpenter",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.12",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCFREIGHTERBASEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxTotalNPCCount",            "4"},
                                {"NPCStartSpawnDelayTime",      "0.5"},
                                {"MinTotalRoomsRequiredPerNPC", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MaxTotalCapacityOfNPCTypes"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FrigateCaptain", "0"},
                                {"WorkerBio",      "0"},
                                {"WorkerTech",     "0"},
                                {"WorkerIndustry", "0"},
                            }
                        },
                    }
                },
            }
        }
    }
}