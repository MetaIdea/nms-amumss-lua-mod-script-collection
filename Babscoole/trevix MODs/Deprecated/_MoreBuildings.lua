NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_MoreBuildings.pak",
["MOD_AUTHOR"]    = "trevix",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.00",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ENVIRONMENT\PLANETBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Shelter",   "GcBuildingDefinitionData.xml"},
                                {"Terminal",  "GcBuildingDefinitionData.xml"},
                                {"Factory",   "GcBuildingDefinitionData.xml"},
                                {"Harvester", "GcBuildingDefinitionData.xml"},
                                {"Plaque",    "GcBuildingDefinitionData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Low",       "@*2"},
                                {"Mid",       "@*2"},
                                {"Full",      "@*2"},
                                {"Halfweird", "@*2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Abandoned",              "GcBuildingDefinitionData.xml"},
                                {"Shop",                   "GcBuildingDefinitionData.xml"},
                                {"Outpost",                "GcBuildingDefinitionData.xml"},
                                {"Waypoint",               "GcBuildingDefinitionData.xml"},
                                {"RadioTower",             "GcBuildingDefinitionData.xml"},
                                {"Observatory",            "GcBuildingDefinitionData.xml"},
                                {"Monolith",               "GcBuildingDefinitionData.xml"},
                                {"Ruin",                   "GcBuildingDefinitionData.xml"},
                                {"Debris",                 "GcBuildingDefinitionData.xml"},
                                {"DistressSignal",         "GcBuildingDefinitionData.xml"},
                                {"MissionTower",           "GcBuildingDefinitionData.xml"},
                                {"CrashedFreighter",       "GcBuildingDefinitionData.xml"},
                                {"GraveInCave",            "GcBuildingDefinitionData.xml"},
                                {"TreasureRuins",          "GcBuildingDefinitionData.xml"},
                                {"WaterCrashedFreighter",  "GcBuildingDefinitionData.xml"},
                                {"WaterTreasureRuins",     "GcBuildingDefinitionData.xml"},
                                {"WaterAbandoned",         "GcBuildingDefinitionData.xml"},
                                {"WaterDistressSignal",    "GcBuildingDefinitionData.xml"},
                                {"NPCDistressSignal",      "GcBuildingDefinitionData.xml"},
                                {"NPCDebris",              "GcBuildingDefinitionData.xml"},
                                {"LargeBuilding",          "GcBuildingDefinitionData.xml"},
                                {"SentinelDistressSignal", "GcBuildingDefinitionData.xml"},
                                {"AbandonedRobotCamp",     "GcBuildingDefinitionData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dead",      "@*2"},
                                {"Low",       "@*2"},
                                {"Mid",       "@*2"},
                                {"Full",      "@*2"},
                                {"Weird",     "@*2"},
                                {"Halfweird", "@*2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Beacon", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Low",       "@*2"},
                                {"Mid",       "@*2"},
                                {"Halfweird", "@*2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Depot", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Halfweird", "@*2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DamagedMachine", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weird",     "@*2"},
                                {"Halfweird", "@*2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Base", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Mid", "@*2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StoryGlitch", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Weird", "@*2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Settlement_Hub", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Low",  "0.04"},
                                {"Mid",  "0.04"},
                                {"Full", "0.04"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DroneHive", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Low",       "0.4"},
                                {"Mid",       "0.4"},
                                {"Full",      "0.8"},
                                {"Halfweird", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"RobotHead", "GcBuildingDefinitionData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Low",  "0.4"},
                                {"Mid",  "0.1"},
                                {"Full", "2"},
                            }
                        },
                    }
                },
            }
        }
    }
}