NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "MOD_DUD_ExperienceBehavior_v612-A",
["MOD_AUTHOR"]              = "jasondude7116",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.12",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RideSpeedSlow",                       "0.7"},
                                {"RideSpeedChangeTime",                 "1"},
                                {"PredatorPerceptionDistance",          "60"},
                                {"PredatorFishPerceptionDistance",      "80"},
                                {"AggressiveSharks",                    "true"},
                                {"AttackPlayerDistance",                "1.5"},
                                {"SpawnDistAtMinSize",                  "100"},
                                {"AllowSleeping",                       "true"},
                                {"SwarmAttractHeightForMaxGroundAvoid", "0.000000"},
                                {"SwarmAttractHeightForMinGroundAvoid", "0.000000"},
                                {"SwarmAttractSpeedLimit",              "0.000000"},
                                {"SwarmAttractEatDistance",             "0.000000"},
                                {"FollowPlayerDistance",                "10"},
                                {"PetPlayerSpeedSmoothTime",            "1"},
                                {"PetWalkAtHeelChanceDevoted",          "0.75"},
                                {"PetWalkAtHeelDistMin",                "5"},
                                {"PetWalkAtHeelDistMax",                "10"},
                                {"PetFollowRunPlayerDistance",          "10"},
                                {"PetFollowRange",                      "5"},
                                {"PetTeleportDistOnPlanet",             "100"},
                                {"PetOrderMaxRange",                    "75"},
                                {"SandWormMaxSteer",                    "0.2"},
                                {"SandWormMaxHeightAdjust",             "0.6"},
                                {"SandWormJumpHeight",                  "80"},
                                {"SandWormJumpTime",                    "3"},
                                {"SandWormSubmergeTime",                "5"},
                                {"SandWormSurfaceTime",                 "3"},
                                {"SandWormMaxJumps",                    "4"},
                                {"SandWormDespawnDist",                 "5000"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                                {"Id", "PLANTCAT",       "Anim", "TROT"},
                                {"Id", "BONECAT",        "Anim", "TROT"},
                                {"Id", "STRIDER",        "Anim", "TROT"},
                                {"Id", "STRIDERGLOW",    "Anim", "TROT"},
                                {"Id", "TREX",           "Anim", "TROT"},
                                {"Id", "TWOLEGANTELOPE", "Anim", "TROT"},
                                {"Id", "SIXLEGCOW",      "Anim", "TROT"},
                                {"Id", "SIXLEGCAT",      "Anim", "TROT"},
                                {"Id", "GRUNT",          "Anim", "TROT"},
                                {"Id", "BLOB",           "Anim", "TROT"},
                                {"Id", "SPIDER",         "Anim", "TROT"},
                                {"Id", "FLOATSPIDER",    "Anim", "TROT"},
                                {"Id", "ARTHROPOD",      "Anim", "TROT"},
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
                                {"MinPitchAmount",      "0.1"},
                                {"MaxPitchAmount",      "0.3"},
                                {"MaxSpeed",            "60"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREPETBEHAVIOURTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"FindResource", "GcPetBehaviourData"},
                                {"FindBuilding", "GcPetBehaviourData"},
                                {"Explore",      "GcPetBehaviourData"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SearchDist", "75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"FindHazards",  "GcPetBehaviourData"},
                                {"AttackHazard", "GcPetBehaviourData"},
                                {"Attack",       "GcPetBehaviourData"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SearchDist", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TeleportToPlayer", "GcPetBehaviourData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CooldownTime", "2"},
                            }
                        },
                    },
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
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
                                {"X", "30"},
                                {"Y", "60"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "StartTime"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Y", "8"},
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
                                {"X", "0"},
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