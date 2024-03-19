NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_PetRider_v447-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.47",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
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
                                {"RideSpeedSlow",                  "0.7"},
                                {"RideSpeedChangeTime",            "1"},
                                {"PredatorPerceptionDistance",     "60"},
                                {"PredatorFishPerceptionDistance", "80"},
                                {"AggressiveSharks",               "True"},
                                {"AttackPlayerDistance",           "1.5"},
                                {"SpawnDistAtMinSize",             "100"},
                                {"AllowSleeping",                  "True"},
                                {"FollowPlayerDistance",           "10"},
                                {"PetPlayerSpeedSmoothTime",       "1"},
                                {"PetWalkAtHeelChanceDevoted",     "0.75"},
                                {"PetWalkAtHeelDistMin",           "5"},
                                {"PetWalkAtHeelDistMax",           "10"},
                                {"PetFollowRunPlayerDistance",     "10"},
                                {"PetFollowRange",                 "5"},
                                {"PetTeleportDistOnPlanet",        "100"},
                                {"PetOrderMaxRange",               "75"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ANTELOPE", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRICERATOPS", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RODENT", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COW", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CAT", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDER", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TREX", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCOW", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCAT", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATSPIDER", "Anim", "TROT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"FindResource", "GcPetBehaviourData.xml"},
                                {"FindBuilding", "GcPetBehaviourData.xml"},
                                {"Explore",      "GcPetBehaviourData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SearchDist", "75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"FindHazards",  "GcPetBehaviourData.xml"},
                                {"AttackHazard", "GcPetBehaviourData.xml"},
                                {"Attack",       "GcPetBehaviourData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SearchDist", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TeleportToPlayer", "GcPetBehaviourData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CooldownTime", "2"},
                            }
                        },
                    },
                },
            },
        },
    },
}