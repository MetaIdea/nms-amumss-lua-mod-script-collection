NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "__ShutUpPets.pak",
["MOD_AUTHOR"]    = "Revale",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.48",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PetChatCooldown",     "999999"},
                                {"PetTickleChatChance", "0"},
                                {"PetTreatChatChance",  "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChatChance", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Eat", "GcPetBehaviourData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ReactiveBehaviour", "False"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\MESSAGES\STATUSMESSAGEDEFINITIONS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PetVocabulary"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OddsOfProcReplacement", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PetChatTemplates"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OddsOfProcReplacement", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PET_CHAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AddPetNamePrefix", "False"},
                                {"PostLocally",      "False"},
                            }
                        },
                    }
                },
            }
        },
    }
}