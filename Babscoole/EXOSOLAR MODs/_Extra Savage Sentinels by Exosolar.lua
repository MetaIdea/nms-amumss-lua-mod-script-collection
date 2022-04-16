NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Extra Savage Sentinels by Exosolar.pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",
["NMS_VERSION"]				= "3.84",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCROBOTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GrenadeLaunchFlightTime", 2},
								{"MaxNumPatrolDrones", 2},
								{"UnderwaterPerceptionMargin", 2},
								{"CombatWaveSpawnTime", 15},
								{"WalkerEnergyLength", 20},
								{"WalkerEnergyMinAlpha", 0.1},
								{"RobotHUDMarkerRange", 120},
								{"DroneSpawnHeight", 2},
								{"MaxNumInvestigatingDrones", 8},
								{"WalkerLaserOvershootStart", -2},
								{"WalkerLaserOvershootEnd", 2},
								{"WalkerGunShootTime", 7},
								{"WalkerGunChargeTime", 0.8},
								{"WalkerGunRate", 0.035},
								{"QuadLookAngleMax", 120},								
								{"QuadAttackRange", 80},
								{"QuadAttackTurnAngleMax", 120},								
								{"QuadAttackTurnAngleMin", 20},								
								{"QuadAttackAngle", 10},
								{"QuadChargeTargetLockPercent", 0.8},
								{"QuadJumpBackRange", 16},
								{"QuadPounceMinRange", 7},
								{"QuadPounceMinTimeBetweenPounces", 6},
								{"QuadPounceDamageRadius", 1.66},
								{"QuadCannotSeeTargetRepositionTime", 1.5},
								{"QuadChargeTime", 0.45},		
								{"QuadFireTime", 1.2},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadLookTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", 1},		
								{"y", 1.1}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"QuadAttackTurnSpeeds"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", 1},		
								{"y", 1.2}
							}
						},						
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset1"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", -0.005},		
								{"y", 0.065}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset2"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", -0.005},		
								{"y", -0.007}
							}
						},
						{					
							["PRECEDING_KEY_WORDS"] = {"WalkerLaser"},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LaserMiningDamage", 130},
								{"LaserChargeTime", 1},
								{"LaserTime", 1.66},
								{"LaserLightChargeSize", 40},
								{"LaserLightAttackSize", 70},
								{"R", 0.863},		
								{"G", 0.688}
							}
						},
						{						
							["PRECEDING_KEY_WORDS"] = {"QuadLaser"},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"LaserChargeTime", 0.5},
								{"LaserTime", 0.66},
								{"LaserLightChargeSize", 25},
								{"LaserLightAttackSize", 9},		
								{"G", 0.588}
							}
						},
						{						
							["PRECEDING_KEY_WORDS"] = {"DroneControl"},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"DronePatrolHonkTime", 1.2},
								{"DronePatrolHonkProbability", 7},
								{"DroneAlertTime", 3},		
								{"AttackAngle", 30},			
								{"AttackActivateTime", 1},
								{"AttackBobAmount", 0.5},								
								{"AttackBobRotation", 0.05},
								{"AttackMoveMinChoiceTime", 0.05},	
								{"AttackMoveAngle", 1},
								{"AttackMaxDistanceFromAlert", 120},
								{"DroneSearchCriminalScanRadiusInShip", 8},		
								{"DroneScanPlayerTime", 20},
								{"LeanAmount", 0.5},
								{"LeanSpeedMin", 5},
								{"LeanSpeedRange", 2},	
								{"EyeFocusTime", 0.00001},		
								{"EyeNumRandomsMin", 5},
								{"EyeNumRandomsMax", 9999999},
								{"EyeTimeMin", 0.5},
								{"EyeTimeMax", 80},	
								{"EyeAngleMax", 1},
								{"EngineDirSpeedMin", 60},
								{"EngineDirAngleMax", 0}
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONE.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","4000",},
								{"HealthIncreasePerLevel","1400",},
								{"RepairTime","1",},
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONEARMOURED.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","4500",},
								{"HealthIncreasePerLevel","2100",},
								{"RepairTime","2",},
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONEMEDIC.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","4500",},
								{"HealthIncreasePerLevel","1400",},
								{"RepairTime","1.5",},
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONESUMMONER.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","4500",},
								{"HealthIncreasePerLevel","2100",},
								{"RepairTime","1.5",},
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/CORRUPTEDDRONE.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","6000",},
								{"HealthIncreasePerLevel","4500",},
								{"RepairTime","2",},
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","10000",},
								{"HealthIncreasePerLevel","8500",},
								{"RepairTime","4",},
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/SENTINELMECH.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","24000",},
								{"HealthIncreasePerLevel","12000",},
								{"RepairTime","6",},
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","40000",},
								{"HealthIncreasePerLevel","25000",},
								{"RepairTime","6",},
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHGUN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","70",},
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHCANON",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","100",},
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Id","MECHFLAME",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxRange","40",},
							}
						},						
					}
				},
			}
		},
	}	
}