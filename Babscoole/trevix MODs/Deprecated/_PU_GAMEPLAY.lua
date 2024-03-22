NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_PU_GAMEPLAY.pak",
["MOD_DESCRIPTION"]         = "",
["MOD_AUTHOR"]              = "trevix",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.36",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Invalid",               "GcDifficultySettingsData.xml"},
                                {"Custom",                "GcDifficultySettingsData.xml"},
                                {"Normal",                "GcDifficultySettingsData.xml"},
                                {"Relaxed",               "GcDifficultySettingsData.xml"},
                                {"Survival",              "GcDifficultySettingsData.xml"},
                                {"Permadeath",            "GcDifficultySettingsData.xml"},
                                {"PermadeathMinSettings", "GcDifficultySettingsData.xml"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TutorialEnabled", "False"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"DamageReceivedMultipliers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"High", "2.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"BreakTechOnDamageMultipliers"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"High", "2"},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShipMiningMul",                   "0"},
                                {"CombatLevelBaseValueCannon",      "0.25"},
                                {"MissionSurveyAutoScanDistance",   "1000"},
                                {"BinocTimeBeforeScan",             "0.2"},
                                {"BinocMinScanTime",                "1"},
                                {"BinocScanTime",                   "1"},
                                {"BinocCreatureScanTime",           "1"},
                                {"MouseSensitivity",                "0.4"},
                                {"MouseSensitivityShip",            "15"},
                                {"MouseSensitivityVehicle",         "15"},
                                {"TorchFoV",                        "70"},
                                {"TorchStrength",                   "8.5"},
                                {"TorchDimFoV",                     "70"},
                                {"TorchDimStrength",                "7"},
                                {"InteractionTorchFoV",             "70"},
                                {"InteractionTorchStrength",        "0"},
                                {"UndergroundTorchStrength",        "8.5"},
                                {"UndergroundTorchStrengthFar",     "10.5"},
                                {"TorchFollowCameraTime",           "0.01"},
                                {"PlayerAmbientSpotLightIntensity", "0"},
                                {"DeadPlanetGravityFactor",         "0.8"},
                                {"PulseEncounterStopSpeed",         "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"TorchColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.45"},
                                {"G", "0.493"},
                                {"B", "0.444"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCROBOTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AttackSentinelWantedValue",            "1"},
                                {"DroneInvestigateSpeedBoost",           "1"},
                                {"EncounterRangeToBlockWantedSpawns",    "500"},
                                {"EncounterRangeToAllowPulledIntoFight", "50"},
                                {"DroneSpawnTime",                       "4"},
                                {"LineOfSightReturnCheckMinDistance",    "70"},
                                {"RobotSightAngle",                      "70"},
                                {"QuadLookAngleMin",                     "40"},
                                {"QuadLookAngleMax",                     "90"},
                                {"QuadAttackTurnAngleMin",               "5"},
                                {"QuadAttackTurnAngleMax",               "160"},
                                {"DroneAggroDamage",                     "400"},
                                {"DronePerceptionMinHearingSpeed",       "2"},
                                {"RobotSteeringFollowWeight",            "1"},
                                {"RobotSightTimer",                      "4.5"},
                                {"DronePatrolAttackSightTime",           "15"},
                                {"DronePatrolSearchTime",                "1.5"},
                                {"DroneDecisionTime",                    "4"},
                                {"DroneInvestigateMinPositionAngle",     "4"},
                                {"DroneInvestigateRepositionTime",       "3"},
                                {"DroneMaxScanAngle",                    "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"QuadLookTurnSpeeds", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "2"},
                                {"y", "2.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"QuadAttackTurnSpeeds", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "2"},
                                {"y", "2.4"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Canon", "GcSentinelMechWeaponData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ExplosionRadius", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"DroneControl", "GcDroneData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DronePatrolDistanceMin", "30"},
                                {"DronePatrolDistanceMax", "60"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CoverResource", "GcSentinelResource.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"HealthIncreasePerLevel", "100"},
                                {"RepairThreshold",        "50"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSETTLEMENTGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"BuildingUpgradeTimeInSeconds", "720"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SettlementBuildingTimes"},
                            ["MATH_OPERATION"] = "/",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Settlement_LandingZone",     10},
                                {"Settlement_Bar",             10},
                                {"Settlement_Tower",           10},
                                {"Settlement_Market",          10},
                                {"Settlement_Small",           10},
                                {"Settlement_SmallIndustrial", 10},
                                {"Settlement_Medium",          10},
                                {"Settlement_Large",           10},
                                {"Settlement_Double",          10},
                                {"Settlement_Farm",            10},
                                {"Settlement_Factory",         10},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ApplyHeightForce",         "False"},
                                {"ApplyHeightAlign",         "False"},
                                {"CockpitExitAnimOffset",    "0.5"},
                                {"LandingOnGroundTip",       "0"},
                                {"ShieldRechargeMinHitTime", "30"},
                                {"ShieldRechargeRate",       "3"},
                                {"MiniWarpLinesNum",         "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"HandControllerDeadZone", "Vector3f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.1"},
                                {"y", "0.1"},
                                {"z", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StickData", "GcPlayerStickData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TurnFast", "1.8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MELEE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "1"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "220"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MELEE_KICK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "0.3"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "46"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BOLTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "0.5"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.6"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FLAMETHROW"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AkEvent", "WPN_SHIP_CYCLOTRON_FIRE"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "0.25"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.6"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CANNON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "GRENADE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "3"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MINE_GREN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "50"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STUN_GREN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "MINIROBOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNFRIENDL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGUNWEAK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",  "8"},
                                {"BulletScaler", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTSMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "0.25"},
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.8"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTSHOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "0.35"},
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGRENADE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultBounces",     "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTGRENADE2"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultBounces",     "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTBIGGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Scale",              "70"},
                                {"Radius",             "20"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2000"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPSHOTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "40"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPMINIGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "2"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPPLASMAGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "45"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TRADERGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "POLICEGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "20"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AISHIPGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "20"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FREIGHTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "20"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COP_FREIGHTGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",         "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BASE_TURRET_M"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLEGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIPROCKET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius",             "45"},
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "2"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDSPIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLERSPIT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TURRETINT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENMECHCANON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SENMECHSMG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLESTUNGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PIRATERAIDGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SQUADGUN"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"DefaultDamage",      "80"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CREATURE_SHOCK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush",        "8"},
                                {"BulletLength",       "0.2"},
                                {"BulletGlowWidthMax", "0.5"},
                                {"BulletScaler",       "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "CREATURE_SHOCK"},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] =
[[
    <Property value="GcProjectileData.xml">
      <Property name="Id" value="CREATURE_SHOCK" />
      <Property name="Model" value="GcResourceElement.xml">
        <Property name="Filename" value="" />
        <Property name="ResHandle" value="GcResource.xml">
          <Property name="ResourceID" value="0" />
        </Property>
        <Property name="Seed" value="GcSeed.xml">
          <Property name="Seed" value="0" />
          <Property name="UseSeedValue" value="False" />
        </Property>
        <Property name="AltId" value="" />
        <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList.xml">
          <Property name="Samplers" />
        </Property>
      </Property>
      <Property name="FireAudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="ChargedFireAudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="OverheatAudioEvent" value="GcAudioWwiseEvents.xml">
        <Property name="AkEvent" value="INVALID_EVENT" />
      </Property>
      <Property name="Scale" value="1" />
      <Property name="IsAutonomous" value="False" />
      <Property name="ApplyCombatLevelMultipliers" value="False" />
      <Property name="Radius" value="0.1" />
      <Property name="CapsuleHeight" value="0" />
      <Property name="DefaultSpeed" value="200" />
      <Property name="Gravity" value="0" />
      <Property name="Life" value="3" />
      <Property name="Offset" value="0" />
      <Property name="RagdollPush" value="100" />
      <Property name="PhysicsPush" value="2.5" />
      <Property name="DroneImpulse" value="0" />
      <Property name="DefaultDamage" value="0" />
      <Property name="ExtraPlayerDamage" value="0" />
      <Property name="DamageType" value="GcDamageType.xml">
        <Property name="DamageType" value="Melee" />
      </Property>
      <Property name="DefaultBounces" value="0" />
      <Property name="BounceMaxSpeed" value="0" />
      <Property name="BounceDamping" value="0.8" />
      <Property name="BounceFinalStopTime" value="0" />
      <Property name="HitOnBounce" value="True" />
      <Property name="PlayerDamage" value="JELLYFISH_DMG" />
      <Property name="CriticalHitModifier" value="1.5" />
      <Property name="PiercingDamagePercentage" value="0" />
      <Property name="UseCustomBulletData" value="False" />
      <Property name="CustomBulletData" value="GcProjectileLineData.xml">
        <Property name="BulletLength" value="0.1" />
        <Property name="BulletGlowWidthTime" value="0.15" />
        <Property name="BulletGlowWidthMax" value="1" />
        <Property name="BulletGlowWidthMin" value="8" />
        <Property name="BulletGlowWidthCurve" value="TkCurveType.xml">
          <Property name="Curve" value="Linear" />
        </Property>
        <Property name="BulletScaler" value="1" />
        <Property name="BulletScalerMinDist" value="0" />
        <Property name="BulletScalerMaxDist" value="800" />
        <Property name="BulletMinScaleDistance" value="200" />
        <Property name="BulletMaxScaleDistance" value="2000" />
      </Property>
      <Property name="UseDamageNumberData" value="False" />
      <Property name="DamageImpactMergeTime" value="0.2" />
      <Property name="DamageImpactTimeBetweenNumbers" value="0.2" />
      <Property name="DamageImpactMinDistance" value="5" />
      <Property name="Colour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="OverrideLightColour" value="False" />
      <Property name="LightColour" value="Colour.xml">
        <Property name="R" value="1" />
        <Property name="G" value="1" />
        <Property name="B" value="1" />
        <Property name="A" value="1" />
      </Property>
      <Property name="BehaviourFlags" value="None" />
      <Property name="Class" value="Player" />
      <Property name="DefaultImpact" value="GUNHIT" />
      <Property name="CriticalImpact" value="" />
      <Property name="Impacts" />
      <Property name="ImpactOffset" value="Vector3f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="0" />
        <Property name="z" value="0" />
      </Property>
      <Property name="CombatEffectsOnImpact">
        <Property value="GcImpactCombatEffectData.xml">
          <Property name="CombatEffectType" value="GcCombatEffectType.xml">
            <Property name="CombatEffectType" value="Stun" />
          </Property>
          <Property name="TotalDuration" value="5" />
          <Property name="DamagePerSeccond" value="0" />
          <Property name="CurrentDuration" value="0" />
        </Property>
      </Property>
    </Property>
]]
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "2"},
                                {"PhysicsPush",   "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER", "LightColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.96"},
                                {"G", "0.967"},
                                {"B", "0.96"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER_RAIL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "2"},
                                {"PhysicsPush",   "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER_BOLT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "2"},
                                {"PhysicsPush",   "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PLAYER_SHIP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "4"},
                                {"PhysicsPush",   "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_SHIP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "COP_FREIGHTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOT_QUAD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOT_WALKER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "BASE_TURRET_L"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "TURRET_POINTER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "PET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "2"},
                                {"PhysicsPush",   "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "VEHICLE_ARM"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "2"},
                                {"PhysicsPush",   "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "SHIP_TRACER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PhysicsPush", "8"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Id", "AI_SHIP_MINING"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DefaultDamage", "9"},
                                {"PhysicsPush",   "8"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\DAMAGETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "BASICDAMAGE"},
                                {"Id", "FIENDSPIT_DMG"},
                                {"Id", "MPPLAYER_SHOT"},
                                {"Id", "MPPLAYER_SMG"},
                                {"Id", "MPPLAYER_CANNON"},
                                {"Id", "MPVEHICLE"},
                                {"Id", "MPVEHICLEGUN"},
                                {"Id", "LOSTINSPACE"},
                                {"Id", "FISHFIEND_PROP"},
                                {"Id", "BIOFRIGATE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "ENERGY"},
                                {"Id", "EXTREMEHEATDMG"},
                                {"Id", "NOOXYDAMAGE"},
                                {"Id", "EXTREMECOLDDMG"},
                                {"Id", "TOXICGASDMG"},
                                {"Id", "RADIATIONDMG"},
                                {"Id", "INTERACT_ENERGY"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "32"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "IMPACTDAMAGE"},
                                {"Id", "IMPACTSHIP"},
                                {"Id", "IMPACTGROUND"},
                                {"Id", "GRABPLANT_DMG"},
                                {"Id", "SCUTTLERSPITDMG"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Damage", "12"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "STANDING_STONE"},
                                {"Id", "FREIGHTERLASER"},
                                {"Id", "VENUSFLY_DMG"},
                                {"Id", "INTERACT_SMALL"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "20"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "SPIDER_EXPLODE"},
                                {"Id", "FLOATER_DMG"},
                                {"Id", "JELLYFISH_DMG"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "SMLCREATUREDMG"},
                                {"Id", "SPIDERDMG"},
                                {"Id", "MEDCREATUREDMG"},
                                {"Id", "LIGHTNING"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "LRGCREATUREDMG"},
                                {"Id", "HUGECREATUREDMG"},
                                {"Id", "PLAYERPREDDMG"},
                                {"Id", "PREDDMGVR"},
                                {"Id", "INTERACT_LARGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "15"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "WEIRDCRTDMG"},
                                {"Id", "WORM_DMG"},
                                {"Id", "JUSTPUSH"},
                                {"Id", "CLAM_DMG"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "FIEND_DMG"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "WALKERLASER"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "VENT_HEAT"},
                                {"Id", "FISHFIEND_PROP"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "100"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "SPORE_VENT"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "25"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"Id", "FISHFIEND_DMG"},
                                {"Id", "METEOR"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PushForce", "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TimeToMake", "0.25"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP_TELEPORT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyCategory", "Ship"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "F_HDRIVEBOOST1"},
                                {"ID", "F_HDRIVEBOOST2"},
                                {"ID", "F_SCANNER"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TechnologyRarity", "Impossible"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO"},
                            ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml", "GcTechnologyRequirement.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID", "QUAD_PROD"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE_ROBO"},
                            ["PRECEDING_KEY_WORDS"] = {"GcTechnologyRequirement.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ID", "MECH_PROD"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_S10_SCAN"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "200"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_Range"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "400"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_Rate"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "4"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_ClipSize"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "50"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "20"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_Dispersion"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "7"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_BurstCap"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2000"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_BOLT", "StatsType", "Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "1"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_BOLT", "StatsType", "Weapon_Projectile_BurstCap"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2000"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_Dispersion"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "20"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "100"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_BurstCap"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2000"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SMG", "StatsType", "Weapon_Projectile_Dispersion"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "12"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SMG", "StatsType", "Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "8"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SMG", "StatsType", "Weapon_Projectile_BurstCap"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2000"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME", "StatsType", "Weapon_Projectile_Dispersion"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "12"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME", "StatsType", "Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "20"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME", "StatsType", "Weapon_Projectile_BurstCap"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "2000"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON", "StatsType", "Weapon_Projectile_Damage"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "100"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON", "StatsType", "Weapon_Projectile_Recoil"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "160"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON", "StatsType", "Weapon_Projectile_Dispersion"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "10"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_CANNON", "StatsType", "Weapon_ChargedProjectile_ExtraSpeed"},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", "40"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "UT_CANNON", "StatsType", "Weapon_ChargedProjectile_ChargeTime"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_MONONUB1"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_MONONUB2"},
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "MAINT_MONONUB3"},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SPACE\AISPACESHIPATTACKDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STANDARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",            "1600"},
                                {"RechargeDelayTime", "3"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",            "3000"},
                                {"RechargeDelayTime", "6"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FAST"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",            "400"},
                                {"RechargeDelayTime", "2"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "FAST_STRONG"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Health",            "1600"},
                                {"RechargeDelayTime", "3"},
                            }
                        },
                        {
                            ["PRECEDING_FIRST"] = "TRUE",
                            ["PRECEDING_KEY_WORDS"] = {"ShieldTable"},
                            ["SPECIAL_KEY_WORDS"] = {"Id", "NULL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"RechargeDelayTime", "6"},
                            }
                        },
                    }
                },
            }
        }
    }
}