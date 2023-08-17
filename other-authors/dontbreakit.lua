NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_dontbreakit.pak",
["MOD_AUTHOR"]              = "",
["LUA_AUTHOR"]              = "JohnyO",
["NMS_VERSION"]             = "4.37",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"DebugForceShowInactives","True",},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCCREATUREGLOBALS.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHurtingCreaturesACrime","False",},
                                {"EnableFlyingSnakeTails","True",},
                                {"EnableNewStuff","True",},
                                {"IndoorObstacleAvoidStrength","6",},
                                {"FishDesiredDepth","-10",},
                                {"FishMinHeightAboveSeaBed","8",},
                                {"RockTransformGlobalChance","80",},
                                {"ShowScale","True",},
                                {"AggressiveSharks","False",},
                                {"AsteroidCreatureSpawnPercentOverride","10",},
                                {"AllowSleeping","True",},
                                {"PetEggLayingInterval","00",},
                                {"DrawRoutineInfo","True",},
                                {"AngryRockProportionNormal","15.0",},
                                {"AngryRockProportionSurvival","20.5",},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AllowSavingOnAbandonedFreighters", "True"},
                                {"ScreenshotMode","True"},
                                {"SkipIntro", "True"},
                                {"SkipLogos", "True"},
                                {"DisableVibration", "True"},
                                {"MapWarpCheckIgnoreFuel", "True"},
                                {"MapWarpCheckIgnoreDrive", "True"},
                                {"EverythingIsFree", "True"},
                                {"EverythingIsKnown", "True"},
                                {"EverythingIsStar", "True"},
                                {"InfiniteStamina", "True"},
                                {"DisableHazards", "True"},
                                {"IgnoreMissionRank", "True"},
                                {"CanLeaveDialogs", "True"},
                                {"IgnoreFreighterSpawnWarpRequirement", "True"},
                                {"DisableStorms", "True"},
                                {"MPMissionsAlwaysEPIC", "True"},
                                {"ShowFireteamMembersUA", "True"},
                                {"RevealAllTitles", "True"},
                                {"UnlockAllTitles", "True"},
                                {"AlwaysAllowShipOperations", "True"},
                                {"AlwaysAllowVehicleOperations", "True"},
                                {"AlwaysAllowFreighterInventoryAccess", "True"},
                                {"UnlockAllSeasonRewards", "True"},
                                {"UnlockAllTwitchRewards", "True"},
                                {"AllSettlementsAreCompleted", "True"},
                                {"UseClouds", "False"},
                                {"EnableCloudAnimation", "False"},
                                {"SpecialsShop", "True"},
                                {"MultiplePlayerFreightersInASystem", "True"},
                                {"AllSeasonMilestonesShowComplete", "True"},
                                {"IgnoreSteamDev", "True"},
                                {"EnableBaseBuildingExpandables", "True"},
                                {"InfiniteInteractions", "False"},
                                {"DebugBuildingSpawns", "True"},
                                {"DisableProfanityFilter", "True"},
                                {"DisableFileWatcher", "True"},
                                {"ShowFramerate", "True"},
                                {"Proto2DevKit", "True"},
                                {"AlwaysIncludeLocalPlayerInChatMessage", "True"},
                                {"CertificateSecurityBypass", "True"},
                                {"OverrideUsernameForDev", "True"},
                                {"RecordNetworkStatsOnBoot", "True"},
                                {"DisableLimits", "True"},
                                {"DisableBaseBuildingLimits", "True"},
                                {"BaseDownloadTimeout", "60"},
                                {"LoadBalanceTimeoutMS", "45"},
                                {"AllowOverrideSettlementOwnership", "True"},
                                {"RenderCreatureDetails","True",},
                                {"DisableStorms","True",},
                                {"UseLegacyBuildingTable","True",},
                                {"BodyTurning","False",},
                                {"ShowMissionIdInTitle","True",},
                                {"EnableAccessibleUI","True",},
                                {"DisablePartialStories","True",},
                                {"UnlockAllStories","True",},
                                {"UnlockAllWords","True",},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCUIGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"QuickMenuAllowCycle","True",},
                                {"DebugMissionLogText","True",},
                             }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MissionSurveyScanSpeedScannableComp", "0.1"},
                                {"MissionSurveySonarMaxPulseSpeed", "4"},
                                {"SurveyScanMinSpeed", "1"},
                                {"SurveyScanMaxSpeed", "1"},
                                {"SurveyMaxDistance", "900"},
                                {"TerrainResourceScanTime", "1"},
                                {"TerrainResourceScanRange", "2200"},
                                {"TerrainResourceCompassRange", "220"},
                                {"BinocTimeBeforeScan", "0.01"},
                                {"BinocMinScanTime", "0.01"},
                                {"BinocScanTime", "0.01"},
                                {"BinocCreatureScanTime", "0.11"},
                                {"SimpleInteractionPickupAngle", "75"},
                                {"SimpleInteractionPickupRadius", "20"},
                                {"InteractionPickupAngle", "155"},
                                {"JumpToCenterFuelCost", "0"},
                                {"NPCWorkerInteractionCooldown", "10"},
                                {"KnowAllRunes", "True"},
                                {"UseSecondaryBiomeSubstances","True",},
                                {"AllowSpaceScanEvents","True",},
                                {"BinocsDisplayUnknownCreatures","True",},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\\SIMULATION\\SCANNING\\SCANDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","TOOL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","TOOL_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","WAYPOINT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "2"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","BEACON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","RADIO_TOWER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","DISTRESS_SIGNAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","DEBUG_PLANET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","DEBUG_SPACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","SHIP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","VISUAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","VEHICLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","VEHICLE_LOCAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "1500"},
                                {"ChargeTime", "0.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"JetpackUnderwaterDrainRate", "0.01"},
                                {"JetpackUnderwaterFillRate", "999"},
                                {"UnderwaterMaxSpeed", "35"},
                                {"UnderwaterForce", "30"},
                                {"UnderwaterMaxJetpackSpeed", "12"},
                                {"UnderwaterJetpackForce", "35"},
                                {"BinocularRangeSpace", "20000"},
                                {"RobotMultiplierWithFriends", "3"},
                                {"OtherPlayerTrackArrowRange", "2000"},
                                {"WantedLevelPlayerRangeSpace", "500"},
                                {"PlayerTransferRange", "3000"},
                                {"PlayerSpaceTransferRange", "20000"},
                                {"FreeJetpackRange", "99"},
                                {"FreeJetpackRangePrime", "99"},
                                {"FreeJetpackRangeNonTerrain", "99"},
                                {"JetpackDrainHorizontalFactor", "0"},
                                {"MeleeBoostAirForce", "30"},
                                {"JetpackForce", "25"},
                                {"JetpackMaxSpeed", "50"},
                                {"JetpackUpForce","60"},
                                {"JetpackIgnitionForce", "90"},
                                {"JetpackIgnitionTime", "0.1"},
                                {"JetpackFillRate", "999"},
                                {"JetpackFillRateMidair", "999"},
                                {"JetpackFillRateSpaceStationMultiplier", "15"},
                                {"JetpackFillRateNexusMultiplier", "30"},
                                {"SpaceJetpackForce", "50"},
                                {"SpaceJetpackUpForce", "40"},
                                {"SpaceJetpackMaxSpeed", "30"},
                                {"SpaceJetpackDrainRate", "0.01"},
                                {"NeverPreyedOn", "True"},
                                {"LuckyWithTech", "True"},
                                {"InteractionScanRange", "180"},
                                {"InteractionButtonRange", "70"},
                                {"InteractionButtonRangeVehicle", "60"},
                                {"InteractionSubstanceRange", "50"},
                                {"AutoAimFixedInterceptSpeed", "500"},
                                {"AutoAimRadiusExtra", "4"},
                                {"AimDistanceShip", "6000"},
                                {"AimSpeed", "250"},
                                {"LaserBeamMineRate", "1.3"},
                                {"LaserBeamTerrainDeformRadius", "3"},
                                {"LaserBeamAmmoUseTime", "0.1"},
                                {"ReloadButtonHoldTimeToHolster", "0.1"},
                                {"WeaponRailRechargeTime", "0.1"},
                                {"FullClipReloadSpeedMultiplier", "6"},
                                {"ReloadTapButtonSpeedIncrease", "999"},
                                {"MaxFallSpeed", "40"},
                                {"CriticalHitTime", "0.5"},
                                {"LowGuildRank", "1"},
                                {"MedGuildRank", "1"},
                                {"HighGuildRank", "1"},
                                {"BestGuildRank", "1"},
                                {"LaserWeaponRange", "2000"},
                                {"LaserShipRange", "50000"},
                                {"TerrainLaserRange", "500"},
                                {"VehicleLaserRange", "10000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes",},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "999"},
                                {"IGNORE", "999"},
                                {"IGNORE", "999"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnablePulseDriveSpaceStationOrient", "True"},
                                {"WarpInRangeNexus", "1000"},
                                {"WarpNexusDistance", "-3000"},
                                {"LandingCheckBuildings", "False"},
                                {"LandingCheckBuildingRadiusFactor", "0.55"},
                                {"ShieldRechargeMinHitTime", "3"},
                                {"NoBoostStationDistance", "200"},
                                {"NoBoostAnomalyDistance", "200"},
                                {"NoBoostSpaceAnomalyDistance", "200"},
                                {"NoBoostFreighterDistance", "200"},
                                {"NoBoostShipDistance", "200"},
                                {"HitAsteroidDamage", "1000"},
                                {"PlayerFreighterClearSpaceRadius", "300"},
                                {"MuzzleLightIntensity", "4.5"},
                                {"AimSpeedTrackDistance", "1000"},
                                {"TakeOffCost", "0"},
                                {"MiniWarpShakeStrength", "0.1"},
                                {"MiniWarpPlanetRadius", "200"},
                                {"MiniWarpStationRadius", "300"},
                                {"MiniWarpFuelTime", "0.1"},
                                {"MiniWarpChargeTime", "0.1"},
                                {"MiniWarpSpeed", "90000"},
                                {"MiniWarpCooldownTime", "0.1"},
                                {"BoostNoAsteroidRadius", "100"},
                                {"ShipHeatAlertTime", "0.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "350"},
                                {"BoostMaxSpeed", "3500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "240"},
                                {"MinSpeed",      "0.01"},
                                {"BoostMaxSpeed", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "Control", "CombatEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"BoostMaxSpeed", "3500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "Control", "AtmosCombatEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "140"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "2500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "350"},
                                {"BoostMaxSpeed", "2500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",      "0.01"},
                                {"BoostMaxSpeed", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlLight", "CombatEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "150"},
                                {"BoostMaxSpeed", "2500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlLight", "AtmosCombatEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "140"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "1500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "350"},
                                {"BoostMaxSpeed", "2100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",      "0.01"},
                                {"BoostMaxSpeed", "360"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "CombatEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "150"},
                                {"BoostMaxSpeed", "2100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "AtmosCombatEngine" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "140"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "1500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlBonusB" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeedMax",      "10"},
                                {"BoostMaxSpeedMax", "15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlBonusA" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeedMax",      "40"},
                                {"BoostMaxSpeedMax", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = { "ControlBonusS" },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeedMax",      "60"},
                                {"BoostMaxSpeedMax", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GunAimArray","GcPlayerSpaceshipAim.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AimDistanceRange", "5800"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GunAimArray","GcPlayerSpaceshipAim.xml","GcPlayerSpaceshipAim.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AimDistanceRange", "5800"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissileAim","GcPlayerSpaceshipAim.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AimDistanceRange", "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MechJetpackJetScaleTime", "0.1"},
                                {"MechPlayerGroundTurnSpeed", "0.1"},
                                {"MechAIGroundTurnSpeed", "0.1"},
                                {"MechArmPitchAngleMin", "-50"},
                                {"MechArmPitchAngleMax", "80"},
                                {"MechTurretTurnTimeGround", "0.1"},
                                {"MechTurretMaxAngleGround", "210"},
                                {"MechTurretTurnTimeAir", "0.1"},
                                {"MechTurretMaxAngleAir", "210"},
                                {"MechJetpackDrainRate", "0.01"},
                                {"MechJetpackFillRate", "999"},
                                {"MechIdleStopDelay", "0.3"},
                                {"MechTitanFallTerrainEditEnabled", "False"},
                                {"GunFireRate", "0.1"},
                                {"SummoningRange", "1055"},
                                {"ShowTempVehicleMesh","True"},
                                {"ShowVehicleDebugging","True"},
                                {"ShowVehicleWheelGuards","True"},
                                {"ShowVehicleText","True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\\REALITY\\TABLES\\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsPlaceable", "True"},
                                {"BuildableOnPlanetBase", "True"},
                                {"BuildableOnSpaceBase", "True"},
                                {"BuildableOnFreighter", "True"},
                                {"BuildableOnPlanet", "True"},
                                {"BuildableUnderwater", "True"},
                                {"BuildableAboveWater", "True"},
                                {"CanRotate3D", "True"},
                                {"CanScale", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = "METADATA\\REALITY\\TABLES\\LEGACYBASEBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsPlaceable", "True"},
                                {"BuildableOnPlanetBase", "True"},
                                {"BuildableOnSpaceBase", "True"},
                                {"BuildableOnFreighter", "True"},
                                {"BuildableOnPlanet", "True"},
                                {"BuildableUnderwater", "True"},
                                {"BuildableAboveWater", "True"},
                                {"CanRotate3D", "True"},
                                {"CanScale", "True"},
                            }
                        }
                    }
                },
            }
        }
    }
}