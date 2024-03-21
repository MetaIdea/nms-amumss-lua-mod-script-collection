NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "_AEOY.pak",
["MOD_AUTHOR"]              = "44-69-6D-61",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.33",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Radius_DoNotPlaceAnywhereNear", "50"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BuildingPlacementScaleMinMax", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0.15"},
                                {"y", "10"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AllowSavingOnAbandonedFreighters",      "True"},
                                {"SkipIntro",                             "True"},
                                {"SkipLogos",                             "True"},
                                {"DisableVibration",                      "True"},
                                {"MapWarpCheckIgnoreFuel",                "True"},
                                {"MapWarpCheckIgnoreDrive",               "True"},
                                {"EverythingIsFree",                      "True"},
                                {"EverythingIsKnown",                     "True"},
                                {"EverythingIsStar",                      "True"},
                                {"InfiniteStamina",                       "True"},
                                {"DisableHazards",                        "True"},
                                {"IgnoreMissionRank",                     "True"},
                                {"CanLeaveDialogs",                       "True"},
                                {"IgnoreFreighterSpawnWarpRequirement",   "True"},
                                {"DisableStorms",                         "True"},
                                {"MPMissionsAlwaysEPIC",                  "True"},
                                {"ShowFireteamMembersUA",                 "True"},
                                {"RevealAllTitles",                       "True"},
                                {"UnlockAllTitles",                       "True"},
                                {"AlwaysAllowShipOperations",             "True"},
                                {"AlwaysAllowVehicleOperations",          "True"},
                                {"AlwaysAllowFreighterInventoryAccess",   "True"},
                                {"UnlockAllSeasonRewards",                "True"},
                                {"UnlockAllTwitchRewards",                "True"},
                                {"AllSettlementsAreCompleted",            "True"},
                                {"UseClouds",                             "False"},
                                {"EnableCloudAnimation",                  "False"},
                                {"SpecialsShop",                          "True"},
                                {"MultiplePlayerFreightersInASystem",     "True"},
                                {"AllSeasonMilestonesShowComplete",       "True"},
                                {"IgnoreSteamDev",                        "True"},
                                {"EnableBaseBuildingExpandables",         "True"},
                                {"InfiniteInteractions",                  "True"},
                                {"DebugBuildingSpawns",                   "True"},
                                {"DisableProfanityFilter",                "True"},
                                {"DisableFileWatcher",                    "True"},
                                {"ShowFramerate",                         "True"},
                                {"Proto2DevKit",                          "True"},
                                {"AlwaysIncludeLocalPlayerInChatMessage", "True"},
                                {"CertificateSecurityBypass",             "True"},
                                {"OverrideUsernameForDev",                "True"},
                                {"RecordNetworkStatsOnBoot",              "True"},
                                {"DisableLimits",                         "True"},
                                {"DisableBaseBuildingLimits",             "True"},
                                {"BaseDownloadTimeout",                   "60"},
                                {"LoadBalanceTimeoutMS",                  "45"},
                                {"AllowOverrideSettlementOwnership",      "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MissionSurveyScanSpeedScannableComp", "0.1"},
                                {"MissionSurveySonarMaxPulseSpeed",     "4"},
                                {"SurveyScanMinSpeed",                  "1"},
                                {"SurveyScanMaxSpeed",                  "1"},
                                {"SurveyMaxDistance",                   "900"},
                                {"TerrainResourceScanTime",             "1"},
                                {"TerrainResourceScanRange",            "2200"},
                                {"TerrainResourceCompassRange",         "220"},
                                {"BinocTimeBeforeScan",                 "0.01"},
                                {"BinocMinScanTime",                    "0.01"},
                                {"BinocScanTime",                       "0.01"},
                                {"BinocCreatureScanTime",               "0.11"},
                                {"CriticalHitMultiplier",               "5"},
                                {"SpaceCombatRadius",                   "3000"},
                                {"SpaceBattleRadius",                   "3000"},
                                {"FreighterBattleRadius",               "3000"},
                                {"CreatureMinScanTime",                 "0.1"},
                                {"NewDiscoveryDisplayTime",             "4"},
                                {"BuildingBeamDistance",                "900"},
                                {"WaypointScanTime",                    "1"},
                                {"ResourceCommonReducer",               "4"},
                                {"ResourceCommonMaxAmount",             "12"},
                                {"DockNodeBuyRadius",                   "25"},
                                {"BeaconInteractRange",                 "15"},
                                {"ShipInteractRadius",                  "300"},
                                {"ZoomFindBuildingRange",               "800"},
                                {"TorchFoV",                            "140"},
                                {"TorchStrength",                       "12.5"},
                                {"TorchDimStrength",                    "1"},
                                {"UndergroundTorchFoV",                 "90"},
                                {"UndergroundTorchFoVFar",              "130"},
                                {"UndergroundTorchStrength",            "10.5"},
                                {"UndergroundTorchStrengthFar",         "9.5"},
                                {"SimpleInteractionPickupAngle",        "75"},
                                {"SimpleInteractionPickupRadius",       "20"},
                                {"InteractionPickupAngle",              "155"},
                                {"JumpToCenterFuelCost",                "0"},
                                {"NPCWorkerInteractionCooldown",        "10"},
                                {"KnowAllRunes",                        "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpacePirateTimers", "GcExperienceTimers.xml", "Normal", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "120"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SpacePirateTimers", "GcExperienceTimers.xml", "Low", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "180"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ZoomLevels", "GcZoomData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxScanDistance", "500"},
                                {"WalkSpeed",       "2"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ZoomLevels", "GcZoomData.xml", "GcZoomData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "85"},
                                {"MaxScanDistance", "125"},
                                {"WalkSpeed",       "1.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ZoomLevels", "GcZoomData.xml", "GcZoomData.xml", "GcZoomData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "35"},
                                {"MaxScanDistance", "170"},
                                {"WalkSpeed",       "1.4"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ZoomLevels", "GcZoomData.xml", "GcZoomData.xml", "GcZoomData.xml", "GcZoomData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FoV",             "5"},
                                {"MaxScanDistance", "1500"},
                                {"WalkSpeed",       "1.3"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BaseBuildingSelectionScanEffect", "GcScanEffectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R",                "0.658"},
                                {"G",                "0.582"},
                                {"B",                "0.667"},
                                {"FresnelIntensity", "8"},
                                {"WaveOffset",       "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BaseBuildingRemotePlayerSelectionScanEffect", "GcScanEffectData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.195"},
                                {"G", "0.85"},
                                {"B", "0.68"},
                            }
                        },
                       {
                            ["SPECIAL_KEY_WORDS"] = {"TorchColour", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.249"},
                                {"G", "0.466"},
                                {"B", "0.656"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"AlienShipEvolveCosts"},
                            ["LINE_OFFSET"] = "+1",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                                {"IGNORE", "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SCANNING\SCANDATATABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOL_HARD"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WAYPOINT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "2"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BEACON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RADIO_TOWER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DISTRESS_SIGNAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DEBUG_PLANET"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DEBUG_SPACE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VISUAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseTime",  "3"},
                                {"ChargeTime", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ChargeTime", "0.1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_LOCAL"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", "1500"},
                                {"ChargeTime", "0.1"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundWalkSpeed",                       "5"},
                                {"GroundRunSpeed",                        "5.5"},
                                {"JetpackUnderwaterDrainRate",            "0.01"},
                                {"JetpackUnderwaterFillRate",             "999"},
                                {"UnderwaterMaxSpeed",                    "12"},
                                {"UnderwaterForce",                       "20"},
                                {"UnderwaterMaxJetpackSpeed",             "12"},
                                {"UnderwaterJetpackForce",                "35"},
                                {"BinocularRangeSpace",                   "20000"},
                                {"RobotMultiplierWithFriends",            "3"},
                                {"OtherPlayerTrackArrowRange",            "2000"},
                                {"WantedLevelPlayerRangeSpace",           "500"},
                                {"PlayerTransferRange",                   "3000"},
                                {"PlayerSpaceTransferRange",              "20000"},
                                {"FreeJetpackRange",                      "999"},
                                {"FreeJetpackRangePrime",                 "9"},
                                {"FreeJetpackRangeNonTerrain",            "27"},
                                {"JetpackDrainHorizontalFactor",          "0.01"},
                                {"MeleeBoostAirForce",                    "5"},
                                {"RocketBootsBoostTankDrainSpeed",        "0.01"},
                                {"RocketBootsDriftTankDrainSpeed",        "0.01"},
                                {"RocketBootsMaxSpeed",                   "25"},
                                {"StealthMinLevel",                       "0.25"},
                                {"StealthDrainRate",                      "0.001"},
                                {"StealthRechargeRate",                   "15"},
                                {"JetpackForce",                          "35"},
                                {"JetpackMaxSpeed",                       "15"},
                                {"JetpackUpForce",                        "45"},
                                {"JetpackIgnitionForce",                  "65"},
                                {"JetpackIgnitionTime",                   "0.5"},
                                {"JetpackFillRate",                       "999"},
                                {"JetpackFillRateMidair",                 "999"},
                                {"JetpackFillRateSpaceStationMultiplier", "15"},
                                {"JetpackFillRateNexusMultiplier",        "30"},
                                {"SpaceJetpackForce",                     "50"},
                                {"SpaceJetpackUpForce",                   "40"},
                                {"SpaceJetpackMaxSpeed",                  "30"},
                                {"SpaceJetpackDrainRate",                 "0.01"},
                                {"NeverPreyedOn",                         "True"},
                                {"LuckyWithTech",                         "True"},
                                {"BulletCostReducer",                     "4"},
                                {"BulletClipMultiplier",                  "4"},
                                {"TraderStayCloseLockOffset",             "30"},
                                {"GunBaseClipSize",                       "12"},
                                {"StaminaRecoveryRate",                   "2.1"},
                                {"WantedTimeoutAggressive",               "20"},
                                {"PlayerViewTargetRange",                 "2000"},
                                {"InteractionScanRange",                  "180"},
                                {"InteractionButtonRange",                "70"},
                                {"InteractionButtonRangeVehicle",         "60"},
                                {"InteractionSubstanceRange",             "50"},
                                {"AutoAimFixedInterceptSpeed",            "500"},
                                {"AutoAimRadiusExtra",                    "4"},
                                {"AimDistanceShip",                       "6000"},
                                {"AimSpeed",                              "250"},
                                {"LaserBeamMineRate",                     "1.3"},
                                {"LaserBeamTerrainDeformRadius",          "3"},
                                {"LaserBeamAmmoUseTime",                  "0.1"},
                                {"ReloadButtonHoldTimeToHolster",         "0.1"},
                                {"WeaponRailRechargeTime",                "0.1"},
                                {"FullClipReloadSpeedMultiplier",         "6"},
                                {"ReloadTapButtonSpeedIncrease",          "999"},
                                {"MaxFallSpeed",                          "40"},
                                {"CriticalHitTime",                       "0.5"},
                                {"LowGuildRank",                          "1"},
                                {"MedGuildRank",                          "1"},
                                {"HighGuildRank",                         "1"},
                                {"BestGuildRank",                         "1"},
                                {"LaserWeaponRange",                      "2000"},
                                {"LaserShipRange",                        "50000"},
                                {"TerrainLaserRange",                     "500"},
                                {"VehicleLaserRange",                     "10000"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"JetpackTankTimes"},
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
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"EnablePulseDriveSpaceStationOrient", "True"},
                                {"WarpInRangeNexus",                   "1000"},
                                {"WarpNexusDistance",                  "-3000"},
                                {"LandingCheckBuildings",              "False"},
                                {"LandingCheckBuildingRadiusFactor",   "0.55"},
                                {"ShieldRechargeMinHitTime",           "3"},
                                {"NoBoostStationDistance",             "200"},
                                {"NoBoostAnomalyDistance",             "200"},
                                {"NoBoostSpaceAnomalyDistance",        "200"},
                                {"NoBoostFreighterDistance",           "200"},
                                {"NoBoostShipDistance",                "200"},
                                {"HitAsteroidDamage",                  "1000"},
                                {"PlayerFreighterClearSpaceRadius",    "300"},
                                {"MuzzleLightIntensity",               "4.5"},
                                {"AimSpeedTrackDistance",              "1000"},
                                {"TakeOffCost",                        "0"},
                                {"MiniWarpShakeStrength",              "0.1"},
                                {"MiniWarpPlanetRadius",               "200"},
                                {"MiniWarpStationRadius",              "300"},
                                {"MiniWarpFuelTime",                   "0.1"},
                                {"MiniWarpChargeTime",                 "0.1"},
                                {"MiniWarpSpeed",                      "90000"},
                                {"MiniWarpCooldownTime",               "0.1"},
                                {"BoostNoAsteroidRadius",              "100"},
                                {"ShipHeatAlertTime",                  "0.6"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "350"},
                                {"BoostMaxSpeed", "3500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "240"},
                                {"MinSpeed",      "0.01"},
                                {"BoostMaxSpeed", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "160"},
                                {"BoostMaxSpeed", "3500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "140"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "2500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "350"},
                                {"BoostMaxSpeed", "2500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",      "0.01"},
                                {"BoostMaxSpeed", "300"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "150"},
                                {"BoostMaxSpeed", "2500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "140"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "1500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "350"},
                                {"BoostMaxSpeed", "2100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MinSpeed",      "0.01"},
                                {"BoostMaxSpeed", "360"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",      "150"},
                                {"BoostMaxSpeed", "2100"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeed",         "140"},
                                {"BoostThrustForce", "500"},
                                {"BoostMaxSpeed",    "1500"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeedMax",      "10"},
                                {"BoostMaxSpeedMax", "15"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeedMax",      "40"},
                                {"BoostMaxSpeedMax", "20"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxSpeedMax",      "60"},
                                {"BoostMaxSpeedMax", "30"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GunAimArray", "GcPlayerSpaceshipAim.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AimDistanceRange", "5800"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GunAimArray", "GcPlayerSpaceshipAim.xml", "GcPlayerSpaceshipAim.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AimDistanceRange", "5800"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"MissileAim", "GcPlayerSpaceshipAim.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AimDistanceRange", "2"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MechJetpackJetScaleTime",         "0.1"},
                                {"MechPlayerGroundTurnSpeed",       "0.1"},
                                {"MechAIGroundTurnSpeed",           "0.1"},
                                {"MechArmPitchAngleMin",            "-50"},
                                {"MechArmPitchAngleMax",            "80"},
                                {"MechTurretTurnTimeGround",        "0.1"},
                                {"MechTurretMaxAngleGround",        "210"},
                                {"MechTurretTurnTimeAir",           "0.1"},
                                {"MechTurretMaxAngleAir",           "210"},
                                {"MechJetpackDrainRate",            "0.01"},
                                {"MechJetpackFillRate",             "999"},
                                {"MechIdleStopDelay",               "0.3"},
                                {"MechTitanFallTerrainEditEnabled", "False"},
                                {"GunFireRate",                     "0.1"},
                                {"SummoningRange",                  "1055"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsPlaceable",           "True"},
                                {"BuildableOnPlanetBase", "True"},
                                {"BuildableOnSpaceBase",  "True"},
                                {"BuildableOnFreighter",  "True"},
                                {"BuildableOnPlanet",     "True"},
                                {"BuildableUnderwater",   "True"},
                                {"BuildableAboveWater",   "True"},
                                {"CanRotate3D",           "True"},
                                {"CanScale",              "True"},
                            }
                        }
                    }
                },
            }
        }
    }
}