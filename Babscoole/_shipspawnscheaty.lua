NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_shipspawnscheaty.pak",
["MOD_AUTHOR"]    = "1800PETMEDS",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "2.62",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CivilianTraderSpaceshipsCacheCount", "30"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
                            ["REPLACE_TYPE"] = "ONCEINSIDE", 
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0.5"},
                                {"IGNORE", "2"},
                                {"IGNORE", "10"}, --5
                                {"IGNORE", "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Royal", "70"},
                                {"Alien", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dropship", "100"},
                                {"Shuttle",  "50"},
                                {"Royal",    "70"},
                                {"Alien",    "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Royal", "70"},
                                {"Alien", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 4,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dropship",   "50"},
                                {"Fighter",    "50"},
                                {"Scientific", "50"},
                                {"Shuttle",    "50"},
                                {"Royal",      "70"},
                                {"Alien",      "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 5,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dropship",   "50"},
                                {"Fighter",    "50"},
                                {"Scientific", "50"},
                                {"Shuttle",    "50"},
                                {"Royal",      "100"},
                                {"Alien",      "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 6,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dropship",   "50"},
                                {"Fighter",    "50"},
                                {"Scientific", "50"},
                                {"Shuttle",    "50"},
                                {"Royal",      "70"},
                                {"Alien",      "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 7,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Dropship",   "0"},
                                {"Fighter",    "0"},
                                {"Scientific", "0"},
                                {"Shuttle",    "0"},
                                {"Royal",      "100"},
                                {"Alien",      "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcAISpaceshipWeightingData.xml"},
                            ["SECTION_ACTIVE"] = 8,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Royal", "70"},
                                {"Alien", "1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData", "Wealthy"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"C", "5"},
                                {"B", "40"},
                                {"A", "30"},
                                {"S", "25"},
                            }
                        },
                    }
                },
            }
        }
    }
}