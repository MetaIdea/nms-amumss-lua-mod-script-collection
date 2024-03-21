NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "EasyUndergroundSpawns_v1.0.pak",
["MOD_AUTHOR"]    = "courtykat",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.93",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"]=
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityOfBeingEnabled", "0.75"},
                                {"IncreasedSpawnDistance",    "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityOfBeingEnabled", "1.5"},
                                {"IncreasedSpawnDistance",    "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcCreatureRoleDescription.xml"},
                            ["SECTION_ACTIVE"] = {3},
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ProbabilityOfBeingEnabled", "1"},
                                {"IncreasedSpawnDistance",    "2"},
                            }
                        },
                    }
                },
            }
        },
    }
}