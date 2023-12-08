NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "BestFriends.pak",
["MOD_AUTHOR"]    = "JustInNovel",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.15",
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
                                {"PetMinSummonDistance",                "1"},
                                {"BaseAndTerrainModImpassableStrength", "0"},
                                {"PetWalkAtHeelChanceDevoted",          "1"},
                                {"PetRunAtHeelDistMin",                 "5"},
                                {"PetRunAtHeelDistMax",                 "29"},
                                {"PetTickleChatChance",                 "0.5"},
                                {"PetTeleportDistOnPlanet",             "30"},
                                {"PetAnimSpeedBoostSmallerThan",        "2"},
                                {"PetAnimSpeedBoostStrength",           "4"},
                                {"PetAnimSpeedMax",                     "5"},
                                {"PetOrderMinRange",                    "5"},
                                {"PetOrderMaxRange",                    "29"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"OrderedToPos", "FollowUpBehaviours", "GcPetFollowUpBehaviour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PetBehaviour", "None"},
                            }
                        },
                    }
                },
            }
        },
    }
}