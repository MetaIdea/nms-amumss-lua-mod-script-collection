Author = "Exosolar"
ModName = "gExos Challenge"
ModNameSub = "Savage Sentinels"
BaseDescription = "Makes sentinels harder"
GameVersion = "370"
ModVersion = "a"


FileSource = "GCROBOTGLOBALS.MBIN"


NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource,
["EXML_CHANGE_TABLE"] = {
	{["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"GrenadeLaunchFlightTime", 2},
		{"MaxNumPatrolDrones", 8},
		{"UnderwaterPerceptionMargin", 3},
		{"CombatWaveSpawnTime", 5},
		{"DroneMiningValueActivate", 100},
		{"DroneCrimeWitnessLimit", 5},
		{"DroneCrimeProximityMultiplier", 5},
		{"DroneHealth", 2000},
		{"CorruptedDroneHealth", 3500},
		{"QuadHealth", 4000},
		{"WalkerHealth", 24000},
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
		{"QuadAttackRange", 80},
		{"QuadAttackAngle", 10},
		{"QuadRepairChargeTime", 4},
		{"QuadJumpBackRange", 16},
		{"QuadPounceMinRange", 7},
		{"QuadPounceMinTimeBetweenPounces", 6},
		{"QuadPounceDamageRadius", 1.66},
		{"QuadCannotSeeTargetRepositionTime", 1.5},
		{"QuadChargeTime", 0.45},		
		{"QuadFireTime", 1.2}}},

	{["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset1"},
	["VALUE_CHANGE_TABLE"] = {
		{"x", -0.005},		
		{"y", 0.065}}},

	{["PRECEDING_KEY_WORDS"] = {"WalkerGunOffset2"},
	["VALUE_CHANGE_TABLE"] = {
		{"x", -0.005},		
		{"y", -0.007}}},

	{["PRECEDING_KEY_WORDS"] = {"WalkerLaser"},
	["INTEGER_TO_FLOAT"] = "FORCE",	
	["VALUE_CHANGE_TABLE"] = {
		{"LaserMiningDamage", 130},
		{"LaserChargeTime", 1},
		{"LaserTime", 1.66},
		{"LaserLightChargeSize", 40},
		{"LaserLightAttackSize", 70},
		{"R", 0.863},		
		{"G", 0.688}}},

	{["PRECEDING_KEY_WORDS"] = {"QuadLaser"},
	["VALUE_CHANGE_TABLE"] = {
		{"LaserChargeTime", 0.5},
		{"LaserTime", 0.66},
		{"LaserLightChargeSize", 25},
		{"LaserLightAttackSize", 9},		
		{"G", 0.588}}},
		
	{["PRECEDING_KEY_WORDS"] = {"DroneControl"},
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"DronePatrolHonkTime", 1.2},
		{"DronePatrolHonkProbability", 7},
		{"DroneAlertTime", 3},		
		{"AttackFireRate", 0.025},
		{"AttackTimeout", 12},
		{"AttackNumShotsMin", 1},		
		{"AttackNumShotsMax", 1},
		{"AttackFireTimeMin", 0.185},
		{"AttackFireTimeMax", 0.185},
		{"AttackAngle", 30},	
		{"AttackRange", 120},		
		{"AttackActivateTime", 1},
		{"AttackBobRotation", 0.05},
		{"AttackMoveDistanceMin", 0.1},
		{"AttackMoveMinChoiceTime", 0.05},	
		{"AttackMoveAngle", 1},
		{"AttackMaxDistanceFromAlert", 150},
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
		{"EngineDirAngleMax", 0}}}
}}}}}}