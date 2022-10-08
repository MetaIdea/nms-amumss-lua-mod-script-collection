MINMULTI = 2
MAXMULTI = 4

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "_Extra Savage Sentinels by Exosolar.pak",
["MOD_AUTHOR"]    = "Exosolar",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.00",
["MODIFICATIONS"] =
	{
		{
			["MBIN_CHANGE_TABLE"] =
			{
				{
					["MBIN_FILE_SOURCE"]  = "GCROBOTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"GrenadeLaunchFlightTime",                2},
								{"MaxNumPatrolDrones",                     6},
								{"UnderwaterPerceptionMargin",             3},
								{"CombatWaveSpawnTime",                    5},
								{"WalkerEnergyLength",                     20},
								{"WalkerEnergyMinAlpha",                   0.1},
								{"RobotHUDMarkerRange",                    120},
								{"DroneSpawnHeight",                       2},
								{"MaxNumInvestigatingDrones",              8},
								{"WalkerLaserOvershootStart",              -2},
								{"WalkerLaserOvershootEnd",                2},
								{"WalkerGunShootTime",                     7},
								{"WalkerGunChargeTime",                    0.8},
								{"WalkerGunRate",                          0.035},
								{"QuadLookAngleMax",                       120},
								{"QuadAttackRange",                        80},
								{"QuadAttackTurnAngleMax",                 120},
								{"QuadAttackTurnAngleMin",                 20},
								{"QuadAttackAngle",                        10},
								{"QuadChargeTargetLockPercent",            0.8},
								{"QuadJumpBackRange",                      16},
								{"QuadPounceMinRange",                     7},
								{"QuadPounceMinTimeBetweenPounces",        6},
								{"QuadPounceDamageRadius",                 1.66},
								{"QuadCannotSeeTargetRepositionTime",      1.5},
								{"QuadChargeTime",                         0.45},
								{"QuadFireTime",                           1.2},
								{"DroneReAttackTime",                      10},
								{"DronePatrolAttackSightTime",             2.5},
								{"DroneAttackGetInRangeBoost",             2},
								{"DroneAggressiveInvestigateAttackTime",   1},
								{"FireRateLastHitBypassTime",              5.1},
								{"FireRateModifierMin",                    1.65},
								{"FireRateModifierMax",                    0.8},
								{"DronePerceptionRange",                   20},
								{"DronePerceptionRangeHostile",            35},
								{"DronePerceptionSightRange",              50},
								{"DronePerceptionSightRangeHostile",       92},
								{"DronePerceptionSightAngle",              45},
								{"DroneInvestigateMinWitnessRangeCantSee", 2.5},
								{"DronePerceptionMinHearingSpeed",         4},
								{"DroneCriminalScanTime",                  12},
								{"DroneInvestigateMinScanTime",            0.5},
								{"DroneInvestigateMinWitnessRange",        22},
								{"DroneInvestigateMinWitnessTime",         10},
								{"DroneCrimePostInvestigateWaitTime",      20},
								{"DronePatrolSearchTime",                  3.5},
								{"DroneCrimeCooldown",                     0.3},
								{"DroneCrimeCooldownWaitTime",             10},
								{"DroneCrimeCooldownWaitTimeAtMax",        15},
								{"DroneDecisionTime",                      2},
								{"DroneCrimeWitnessInvestigateDistance",   45},
								{"DronePatrolDistanceMin",                 15},
								{"DronePatrolDistanceMax",                 50},
								{"DronePatrolTargetDistance",              25},
								{"DroneSearchTime",                        10},
								{"DroneSearchPauseTime",                   0.5},
								{"DroneSearchCriminalScanRadius",          8},
								{"DroneSearchCriminalScanRadiusWanted",    20},
								{"MechMinMaintainFireTargetTime",          4},
								{"MechAttackRate",                         2}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadLookTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"x", 1},
								{"y", 1.1}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadAttackTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"x", 1},
								{"y", 1.2}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset1"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"x", -0.005},
								{"y", 0.065}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset2"},
							["VALUE_CHANGE_TABLE"]  =
							{
								{"x", -0.005},
								{"y", -0.007}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerLaser"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LaserMiningDamage",    130},
								{"LaserChargeTime",      1},
								{"LaserTime",            1.66},
								{"LaserLightChargeSize", 40},
								{"LaserLightAttackSize", 70},
								{"R",                    0.863},
								{"G",                    0.688}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadLaser"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"LaserChargeTime",      0.5},
								{"LaserTime",            0.66},
								{"LaserLightChargeSize", 25},
								{"LaserLightAttackSize", 9},
								{"G",                    0.588}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"DroneControl"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"DronePatrolHonkTime",                 1.2},
								{"DronePatrolHonkProbability",          7},
								{"DroneAlertTime",                      20},
								{"AttackAngle",                         30},
								{"AttackActivateTime",                  0.01},
								{"AttackBobAmount",                     0.5},
								{"AttackBobRotation",                   0.05},
								{"AttackMoveMinChoiceTime",             0.05},
								{"AttackMoveAngle",                     1},
								{"AttackMaxDistanceFromAlert",          150},
								{"DroneSearchCriminalScanRadiusInShip", 8},
								{"DroneScanPlayerTime",                 15},
								{"LeanAmount",                          0.5},
								{"LeanSpeedMin",                        5},
								{"LeanSpeedRange",                      2},
								{"EyeFocusTime",                        0.00001},
								{"EyeNumRandomsMin",                    5},
								{"EyeNumRandomsMax",                    9999999},
								{"EyeTimeMin",                          0.5},
								{"EyeTimeMax",                          80},
								{"EyeAngleMax",                         1},
								{"EngineDirSpeedMin",                   60},
								{"EngineDirAngleMax",                   0}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             4000},
								{"HealthIncreasePerLevel", 1400},
								{"RepairTime",             1},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONEARMOURED.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             6000},
								{"HealthIncreasePerLevel", 2100},
								{"RepairTime",             2},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONEMEDIC.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             4500},
								{"HealthIncreasePerLevel", 1400},
								{"RepairTime",             1.5},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/DRONESUMMONER.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             5000},
								{"HealthIncreasePerLevel", 2100},
								{"RepairTime",             1.5},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/CORRUPTEDDRONE.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             13000},
								{"HealthIncreasePerLevel", 4500},
								{"RepairTime",             2},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             17000},
								{"HealthIncreasePerLevel", 8500},
								{"RepairTime",             4},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/SENTINELMECH.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             32000},
								{"HealthIncreasePerLevel", 12000},
								{"RepairTime",             6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Resource", "MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"BaseHealth",             64000},
								{"HealthIncreasePerLevel", 25000},
								{"RepairTime",             6},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SENMECHGUN"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ProjectileSpread", 0.07},
								{"FireInterval",     0.03},
								{"NumShotsMin",      45},
								{"NumShotsMax",      75},
								{"IdealRange",       20},
								{"MinRange",         10},
								{"MaxRange",         70},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "SENMECHCANON"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MaxRange", 100},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id", "MECHFLAME"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"ProjectileSpread", 0.07},
								{"FireInterval",     0.03},
								{"NumShotsMin",      50},
								{"NumShotsMax",      70},
								{"CooldownTimeMin",  2},
								{"CooldownTimeMax",  4},
								{"IdealRange",       8},
								{"MinRange",         1},
								{"MaxRange",         40},
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Attack","GcDroneControlData.xml"},
							["VALUE_CHANGE_TABLE"] =
							{
								{"MaxSpeed",       8},
								{"Strength",       1.6},
								{"DirectionBrake", 0.6}
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Search","GcDroneControlData.xml"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MaxSpeed",       12},
								{"Strength",       2},
								{"DirectionBrake", 2.5}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GcDroneWeaponData.xml"},
							["REPLACE_TYPE"] = "ALL",
							["MATH_OPERATION"] = "*",
							["VALUE_MATCH"] = "120",
							["VALUE_MATCH_OPTIONS"]	= "~=",
							["VALUE_CHANGE_TABLE"] =
							{
								{"Range", 2}
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] =
					{
						{
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["MATH_OPERATION"] = "*",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] =
							{
								{"MinAmount", MINMULTI},
								{"MaxAmount", MAXMULTI},
							}
						},
					}
				},
			}
		},
	}
}