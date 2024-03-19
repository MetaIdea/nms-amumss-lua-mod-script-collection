NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_02_POD.CombatDamageWIngmanWeaponsv4.05.01.pak",
["MOD_AUTHOR"]              = "PodcastPrimate",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.05",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FormationOffsetZOffsetVarianceMaxSpeedScale",    "75"},
                                {"FormationOffsetCylinderWidth",                   "45"},
                                {"FormationOffsetCylinderHeight",                  "25"},
                                {"FormationOffsetCylinderLength",                  "0"},
                                {"FormationOffsetCylinderLengthThirdPerson",       "0"},
                                {"CombatFormationOffsetCylinderWidth",             "200"},
                                {"CombatFormationOffsetCylinderHeight",            "100"},
                                {"CombatFormationOffsetCylinderLength",            "25"},
                                {"CombatFormationOffsetCylinderWidthThirdPerson",  "200"},
                                {"CombatFormationOffsetCylinderHeightThirdPerson", "100"},
                                {"CombatFormationOffsetCylinderLengthThirdPerson", "25"},
                                {"MaintainFormationInCombatMinTime",               "0"},
                                {"MaintainFormationInCombatMaxTime",               "0.1"},
                                {"MaintainFormationLockStrengthCombat",            "0.1"},
                                {"OutOfFormationMinTime",                          "0.1"},
                                {"OutOfFormationMaxTime",                          "60"},
                                {"DisplayShipAttackTypes",                         "True"},
                                {"MinimumCircleTimeBeforeLanding",                 "20"},
                                {"CrashedShipMinNonBrokenSlots",                   "0"},
                                {"CrashedShipBrokenSlotChance",                    "0"},
                                {"CrashedShipBrokenTechChance",                    "0"},
                                {"AttackShipsFollowLeader",                        "True"},
                                {"PirateMaintainBuildingTargetTime",               "15"},
                                {"MaxNumTurretMissiles",                           "5"},
                                {"DisableTradeRoutes",                             "True"},
                                {"AttackBuildingGetThereBoost",                    "40"},
                                {"TradingPostTraderRequestTime",                   "60"},
                                {"SpaceStationTraderRequestTime",                  "30"},
                                {"AbandonedSystemShipSpawnProbablity",             "0.5"},
                                {"ShipEscapeTimeBeforeWarpOut",                    "30"},
                                {"DockingLandingTime",                             "2"},
                                {"DockingLandingTimeDirectional",                  "2"},
                                {"DockWaitMinTime",                                "60"},
                                {"DockWaitMaxTime",                                "120"},
                                {"LandingManuevreTime",                            "2"},
                                {"LandingManeuvreAlignTime",                       "2"},
                                {"CircleApproachDistance",                         "300"},
                                {"GroundCircleHeight",                             "90"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AsteroidMiningPositioningTravelData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DirectionBrake", "0.4"},
                                {"MaxSpeedBrake",  "0.1"},
                                {"Falloff",        "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AsteroidMiningTravelData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DirectionBrake", "0.4"},
                                {"MaxSpeedBrake",  "0.1"},
                                {"Falloff",        "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateAttackableBuildingClasses"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Base",           "True"},
                                {"GameStartSpawn", "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"TradeRouteColours"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/EFFECTS/EXPLOSIONTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GROUNDEXPLODE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Number",           "50"},
                                {"Radius",           "500"},
                                {"Scale",            "5"},
                                {"DistanceScaleMax", "2000"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "225"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPPLASMAGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "3700"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPROCKET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage",  "2500"},
                                {"BehaviourFlags", "DestroyTerrain, ScareCreatures, ExplosionForce"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "1200"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HitWidth",       "50"},
                                {"PulseAmplitude", "0.2"},
                                {"DefaultDamage",  "150"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COP_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HitWidth", "50"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ENERGY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "EXTREMEHEATDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "NOOXYDAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "EXTREMECOLDDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TOXICGASDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RADIATIONDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "IMPACTSHIP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "33"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "IMPACTGROUND"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "100"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "IMPACTINSTANCE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "125"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "18"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNDMG_MED"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "20"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTBIGGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGRENADEDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LASERDAMAGE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "12"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SMLCREATUREDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MEDCREATUREDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LRGCREATUREDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "65"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "HUGECREATUREDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "90"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYERPREDDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "50"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PREDDMGVR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "30"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDCRTDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "60"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIEND_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDSPIT_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "4"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AISHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPLASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "26"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYGUN1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "26"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYGUN2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "27"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYGUN3"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "27"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYLASER1"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "30"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYLASER3"},
                            ["SECTION_ACTIVE"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "40"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOUNTYLASER3"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "60"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKERLASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "POLICEGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "27"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "POLICELASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "26"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLASTEROID"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "16"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MEDIUMASTEROID"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "16"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEASTEROID"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "51"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTERGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "31"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTERLASER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "31"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GASPLANT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "25"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VENT_HEAT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "45"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPORE_VENT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "50"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFIEND_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "80"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATER_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "90"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRABPLANT_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "30"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CLAM_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "50"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VENUSFLY_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "27"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "INTERACT_ENERGY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "37"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BASETURRETPDMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "12"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "LIGHTNING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "100"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "METEOR"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "100"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TORNADO"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "42"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MINIDRONE_DMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "10"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENTINEL_FLAME"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "4.5"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATERAID"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "15"}
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRange", "750"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Scale"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.25"},
                                {"y", "0.25"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "30"},
                                {"y", "80"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"FlybySpawns", "Array"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Length", "5000"},
                                {"Offset", "750"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"MiningFlybySpawns"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRange", "250"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetaryPirateFlybySpawns", "StartTime"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.75"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PirateBattleSpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PoliceSpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "120"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "5000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "750"},
                                {"y", "2000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "Count"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "GcAIShipSpawnData.xml", "Spread", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "750"},
                                {"y", "2750"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "ChildSpawns", "Spread"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "350"},
                                {"y", "1000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
                            ["WHERE_IN_SUBSECTION"] =
                            {
                                {"x", "3000"},
                                {"y", "3000"},
                            },
                            ["WISUBSEC_LOP"] = "AND",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "2500"},
                                {"y", "5000"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns"},
                            ["WHERE_IN_SUBSECTION"] =
                            {
                                {"x", "400"},
                                {"y", "600"},
                            },
                            ["WISUBSEC_LOP"] = "AND",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "350"},
                                {"y", "800"},
                            },
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AbandonedFreighterSpawns"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinRange", "500"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "BLACK_HOLE"},
                                {"Id", "ATLAS_BEACON1"},
                                {"Id", "ATLAS_BEACON2"},
                                {"Id", "WEIRD_METAL"},
                                {"Id", "SPINNER"},
                                {"Id", "CRYSTAL"},
                                {"Id", "LINE_GEO"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpawnChance", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "NEURON"},
                                {"Id", "GAS_BRAIN"},
                                {"Id", "HORROR"},
                                {"Id", "JELLYFISH"},
                                {"Id", "BONES"},
                                {"Id", "EYE"},
                                {"Id", "TRADER_HAIL"},

                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpawnChance", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RELIC_HAIL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpawnChance", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "REPAIR_HAIL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpawnChance", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ABAND_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SpawnChance",   "0.5"},
                                {"SpawnDistance", "5000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ALIEN_SHIP_LOOP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AllowedInEmptySystem", "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ALIEN_PIRATES"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"NumberOfShips", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONE_SET_MED", "SentinelType", "SummonerDrone"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAmount", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "DRONE_SET_LRG_A", "SentinelType", "MedicDrone"},
                                {"Id", "QUAD_SET",        "SentinelType", "MedicDrone"},
                                {"Id", "QUAD_SET_HARD",   "SentinelType", "MedicDrone"},
                                {"Id", "MECH_SET",        "SentinelType", "MedicDrone"},
                                {"Id", "MECH_SET_HARD",   "SentinelType", "MedicDrone"},
                                {"Id", "WALKER_SET",      "SentinelType", "MedicDrone"},
                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinAmount", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "QUAD_SET",        "SentinelType", "SummonerDrone"},
                                {"Id", "QUAD_SET_HARD",   "SentinelType", "SummonerDrone"},
                                {"Id", "QUAD_SET_HARD",   "SentinelType", "Quad"},
                                {"Id", "MECH_SET",        "SentinelType", "SummonerDrone"},
                                {"Id", "MECH_SET_HARD",   "SentinelType", "Mech"},
                                {"Id", "WALKER_SET",      "SentinelType", "SummonerDrone"},
                                {"Id", "WALKER_SET_HARD", "SentinelType", "Walker"},

                            },
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAmount", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONE_SET_LRG_A", "SentinelType", "SummonerDrone"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinAmount", "2"},
                                {"MaxAmount", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "DRONE_SET_LRG_B", "SentinelType", "CombatDrone"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxAmount", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MECH_SET", "SentinelType", "Mech"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="Quad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="2" />
        </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MECH_SET_HARD", "SentinelType", "CombatDrone"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinAmount", "3"},
                                {"MaxAmount", "6"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKER_SET_HARD", "SentinelType", "MedicDrone"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinAmount", "1"},
                                {"MaxAmount", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "WALKER_SET_HARD", "SentinelType", "MedicDrone"},
                            ["SECTION_UP"] = 1,
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="CombatDrone" />
          </Property>
          <Property name="MinAmount" value="3" />
          <Property name="MaxAmount" value="6" />
        </Property>
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="Mech" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="2" />
        </Property>
]]
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "8000"},
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RewardCount",         "2"},
                                {"Health",              "10000"},
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATE_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RewardCount",         "3"},
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "POLICE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADER_ESCORT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_DOGFIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_FLYBY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_C"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "35000"},
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_B"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Behaviour",           "SQUADRON_STRONG"},
                                {"RewardCount",         "2"},
                                {"Health",              "50000"},
                                {"LevelledExtraHealth", "75000"},
                                {"Gun",                 "SHIPPLASMAGUN"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_A"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Behaviour",           "SQUADRON_WEAK"},
                                {"RewardCount",         "3"},
                                {"Health",              "6500"},
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_S"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PlanetBehaviour",     "SQUADRON_STRONG"},
                                {"RewardCount",         "4"},
                                {"Health",              "100000"},
                                {"LevelledExtraHealth", "75000"},
                                {"Gun",                 "SHIPROCKET"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ALIEN_HOSTILE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",              "40000"},
                                {"LevelledExtraHealth", "75000"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",           "4"},
                                {"AttackWeaponRange",            "2000"},
                                {"AttackApproachMinRange",       "150"},
                                {"AttackBoostTimeToRange",       "8"},
                                {"AttackBoostRange",             "2000"},
                                {"AttackMaxPlanetHeight",        "150"},
                                {"AttackTurnMaxMinTime",         "1"},
                                {"AttackTurnMaxTimeRange",       "9"},
                                {"NumHitsBeforeBail",            "8000"},
                                {"NumHitsBeforeReposition",      "5000"},
                                {"FleeBoost",                    "80"},
                                {"FleeRepositionAngleMin",       "45"},
                                {"FleeRepositionAngleMax",       "180"},
                                {"FleeRepositionUrgentAngleMin", "90"},
                                {"FleeRepositionUrgentAngleMax", "180"},
                                {"FleeRange",                    "1200"},
                                {"FleeMinTime",                  "2"},
                                {"FleeUrgentRange",              "100"},
                                {"PlanetFleeHeightExtra",        "1200"},
                                {"AttackTargetMaxRange",         "1500"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",      "4"},
                                {"AttackWeaponRange",       "2000"},
                                {"AttackReadyTime",         "0.1"},
                                {"AttackMaxTime",           "4"},
                                {"AttackApproachMinRange",  "150"},
                                {"AttackApproachMaxRange",  "1200"},
                                {"AttackTooCloseRange",     "50"},
                                {"AttackFlybyOffset",       "150"},
                                {"AttackBoostTimeToRange",  "3"},
                                {"NumHitsBeforeBail",       "7000"},
                                {"NumHitsBeforeReposition", "5000"},
                                {"FleeBoost",               "100"},
                                {"FleeUrgentBrake",         "0.2"},
                                {"FleeUrgentBoost",         "1.5"},
                                {"FleeUrgentRange",         "1200"},
                                {"PlanetFleeHeightExtra",   "1200"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"BehaviourTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle", "4"},
                                {"GunFireRate",        "3"},
                                {"FleeBoost",          "80"},
                                {"FleeUrgentBoost",    "90"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_WEAK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",      "0.1"},
                                {"GunFireRate",             "0.15"},
                                {"AttackShootWaitTime",     "0.1"},
                                {"AttackShootTimeMax",      "3"},
                                {"AttackReadyTime",         "0.1"},
                                {"AttackTurnMaxMinTime",    "1"},
                                {"NumHitsBeforeBail",       "6000"},
                                {"NumHitsBeforeReposition", "6000"},
                                {"FleeRange",               "1200"},
                                {"FleeMinTime",             "1.5"},
                                {"PlanetFleeHeightExtra",   "500"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GunDispersionAngle",    "0"},
                                {"GunFireRate",           "7"},
                                {"AttackShootWaitTime",   "0.1"},
                                {"AttackShootTimeMin",    "1"},
                                {"AttackShootTimeMax",    "1"},
                                {"AttackReadyTime",       "0.1"},
                                {"PlanetFleeHeightExtra", "500"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed", "50"},
                                {"MaxSpeed", "115"},
                                {"TurnMax",  "1.5"},
                                {"Falloff",  "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",       "50"},
                                {"MaxSpeed",       "180"},
                                {"BoostSpeed",     "1300"},
                                {"TurnMax",        "1.75"},
                                {"DirectionBrake", "0.4"},
                                {"Falloff",        "0"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_EASY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",       "90"},
                                {"MaxSpeed",       "125"},
                                {"TurnMax",        "1.5"},
                                {"DirectionBrake", "0.8"},
                                {"Falloff",        "0"},
                                {"MinHeight",      "75"},
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLANET_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",       "90"},
                                {"MaxSpeed",       "125"},
                                {"TurnMax",        "1.75"},
                                {"DirectionBrake", "0.8"},
                                {"Falloff",        "0"},
                                {"MinHeight",      "75"},
                            },
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"EngineTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "RAID_BUILDING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",   "70"},
                                {"MaxSpeed",   "300"},
                                {"BoostSpeed", "500"},
                                {"Falloff",    "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_SLOW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "160"},
                                {"DirectionBrake", "0.6"},
                                {"Falloff",        "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADRON_FAST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",       "180"},
                                {"BoostSpeed",     "1300"},
                                {"TurnMax",        "1.5"},
                                {"DirectionBrake", "0.3"},
                                {"Falloff",        "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STANDARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "25000"},
                                {"RechargeTime",        "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "41000"},
                                {"RechargeTime",        "12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FAST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "16000"},
                                {"RechargeTime",        "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FAST_STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"LevelledExtraHealth", "31000"},
                                {"RechargeTime",        "8"},
                            }
                        },
                    }
                },
            }
        }
    }
}