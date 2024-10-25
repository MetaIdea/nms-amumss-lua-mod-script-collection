NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_MOD_DUD_ExperienceBehavior_v520-A.pak",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "5.20",
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
                                {"GroundWormSpawnMin",             "4"},
                                {"GroundWormSpawnMax",             "7"},
                                {"SandWormJumpHeight",             "80"},
                                {"SandWormJumpTime",               "4"},
                                {"SandWormSubmergeTime",           "6"},
                                {"SandWormSurfaceTime",            "4"},
                                {"SandWormMaxJumps",               "4"},
                                {"SandWormDespawnDist",            "4000"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "ANTELOPE",       "Anim", "TROT"},
                                {"Id", "ROBOTANTELOPE",  "Anim", "TROT"},
                                {"Id", "TRICERATOPS",    "Anim", "TROT"},
                                {"Id", "RODENT",         "Anim", "TROT"},
                                {"Id", "COW",            "Anim", "TROT"},
                                {"Id", "CAT",            "Anim", "TROT"},
                                {"Id", "BONECAT",        "Anim", "TROT"},
                                {"Id", "STRIDER",        "Anim", "TROT"},
                                {"Id", "TREX",           "Anim", "TROT"},
                                {"Id", "TWOLEGANTELOPE", "Anim", "TROT"},
                                {"Id", "SIXLEGCOW",      "Anim", "TROT"},
                                {"Id", "SIXLEGCAT",      "Anim", "TROT"},
                                {"Id", "GRUNT",          "Anim", "TROT"},
                                {"Id", "BLOB",           "Anim", "TROT"},
                                {"Id", "FLOATSPIDER",    "Anim", "TROT"},
                            },
                            [    "VALUE_CHANGE_TABLE"] =
                            {
                                {"MinPetSpeedScale", "0.7"},
                                {"MaxPetSpeedScale", "1.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SwarmMovementSpeed",  "90"},
                                {"SwarmMovementRadius", "100"},
                                {"MaxPitchAmount",      "0.5"},
                                {"MaxSpeed",            "80"},
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
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRange", "400"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "30"},
                                {"y", "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "StartTime"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Array"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Offset", "400"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Event", "SANDWORM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinDist", "700"},
                                {"MaxDist", "900"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MiningFlybySpawns"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRange", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MiningFlybySpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MiningFlybySpawns", "Array"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Time", "300"},
                            }
                        },
                    },
                },
            },
        },
    },
}