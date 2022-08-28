ModName = "_Extra Savage Sentinels by ExosolarX"
GameVersion = "3_99.1"
Description = "Increases the difficulty of Sentinels by changing aggression, firrate, range, sight distance, etc."

function AddWaveSequence (Set)
    return
[[<Property value="GcSentinelSpawnSequence.xml">
          <Property name="Waves">
            <Property value="NMSString0x10.xml">
              <Property name="Value" value="]]..Set..[[" />
            </Property>
          </Property>
        </Property>]]
end

--Adds a new set of just a Sentinel Quad with nothing else
AddQuadSoloSet =
[[<Property value="GcSentinelSpawnWave.xml">
      <Property name="Id" value="QUAD_SOLO" />
      <Property name="Spawns">
        <Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="Quad" />
          </Property>
          <Property name="MinAmount" value="1" />
          <Property name="MaxAmount" value="1" />
        </Property>
      </Property>
      <Property name="ReinforceAt" value="0" />
    </Property>]]

function AddSentinels (SentinelType, MinAmount, MaxAmount)
    return
[[<Property value="GcSentinelSpawnData.xml">
          <Property name="Type" value="GcSentinelTypes.xml">
            <Property name="SentinelType" value="]]..SentinelType..[[" />
          </Property>
          <Property name="MinAmount" value="]]..MinAmount..[[" />
          <Property name="MaxAmount" value="]]..MaxAmount..[[" />
        </Property>]]
end
--Possible SentinelTypes are: PatrolDrone	CombatDrone		MedicDrone	SummonerDrone	Quad	Mech	Walker

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= ModName..GameVersion..".pak",
["MOD_AUTHOR"]				= "Exosolar",
["LUA_AUTHOR"]				= "Babscoole",		--Edited by Xen0nex
["MOD_DESCRIPTION"]			= Description,
["NMS_VERSION"]				= "3.93",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{	--This section added by Xen0nex
					["MBIN_FILE_SOURCE"] 	= "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CombatSpawnMinWantedTime", 10},				--10				Unknown Function
								{"WantedTimeoutAggressive", 5},					--5					Unknown Function
								{"ExperienceDroneSpawnOffset", 75}				--25				Sets how far from the player Patrol Drones spawn
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedTimeout"},		--Controls how long Sentinels will Search for the player if they run away after a Crime
							["REPLACE_TYPE"]         = "",
							["MATH_OPERATION"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"10", 		20},								--10	seconds at Wanted level 1
								{"15", 		20},								--15	seconds at Wanted level 2, plus whatever the lower Wanted level times are	(e.g. 15 + 10 = 25 seconds total in vanilla)
								{"10", 		15},								--10	etc.
								{"15", 		15},								--15
								{"10", 		10}									--10
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedEscalateTime"},	--Possibly how long Sentinels will search for the player if they run away after destroying a wave of sentinels, which increases the Wanted level???
							["REPLACE_TYPE"]         = "",
							["MATH_OPERATION"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"-1", 		-1},								---1
								{"30", 		30},								--30
								{"60", 		60},								--60
								{"90", 		90},								--90
								{"-1", 		-1}									---1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"WantedExtremeEscalateTime"},	--Seems to be how long Sentinels will search for the player if they run away after a Crime on an Extreme Sentinel Planet???
							["REPLACE_TYPE"]         = "",
							["MATH_OPERATION"] 		= "",
							["VALUE_CHANGE_TABLE"] 	= 
							{	--Old		New
								{"-1", 		-1},								---1
								{"20", 		30},								--20
								{"40", 		45},								--40	seconds at Wanted level 3 total (doesn't seem to add lower level Wanted times)
								{"120", 	120},								--120
								{"-1", 		-1}									---1
							}
						}
					}
				},
				{	--This section also added by Xen0nex, controls which kind and how many Sentinels spawn in various circumstances
					["MBIN_FILE_SOURCE"] 	= "METADATA\SIMULATION\SCENE\EXPERIENCESPAWNTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{	--adds the custom QUAD_SOLO set
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns",	"GcSentinelSpawnWave.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddQuadSoloSet
						},
						{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4"},		--Wanted Level 4 spawns
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequence.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddWaveSequence ("QUAD_SOLO")			--Should add a single Sentinel Quad spawn between the initial drones and the Mech
						},
						--WANTED_4_EX already has Quads
						--[[{
							["SPECIAL_KEY_WORDS"] = {"Id","WANTED_4_EX"},	--Wanted Level 4, "Extreme" version spawns?
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnSequence.xml"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddWaveSequence ("QUAD_SOLO")			--Should add a single Sentinel Quad spawn between the initial drones and the Mech
						},]]
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","FACTORY_A"},		--Manufacturing Facility guards
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{--Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","HARVESTER_A"},	--Planetary Harvester guards
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("SummonerDrone", 1, 1)
						},
						{--Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","HIVE_A"},		--Sentinel Pillar guards
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{--Causes a bug if run through AMUMSS without adding "Spawns", to the front of the Preceding Key Words?
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"Spawns", "GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","HIVE_EX_A"},		--Sentinel Pillar guards, "Extreme" version?
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE",		"SentinelType", "CorruptedDrone"},		--Settlement defense Corrupted Drones
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 4},							--6
								{"MaxAmount", 8},							--6
							}
						},
						--[[{	--Adding non-Corrupted Drones to the Sentinel Defense assaults seems to make a regular Wanted Level event occur at the same time, so you will have escalting waves of regular sentinels in addition to the corrupted Drones
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE"},		--Settlement defense
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 1, 1)
						},
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE"},		--Settlement defense
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("SummonerDrone", 1, 1)
						},]]
						{
							["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"SentinelSpawns"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX",		"SentinelType", "CorruptedDrone"},		--Settlement defense Corrupted Drones, "Extreme" version?
							["SECTION_UP"] = 1,
							["REPLACE_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinAmount", 7},							--9
								{"MaxAmount", 11},							--9
							}
						},
						--[[{	--Adding non-Corrupted Drones to the Sentinel Defense assaults seems to make a regular Wanted Level event occur at the same time, so you will have escalting waves of regular sentinels in addition to the corrupted Drones
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX"},		--Settlement defense, "Extreme" version?
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("Quad", 2, 2)
						},
						{
							--["PRECEDING_FIRST"] = "TRUE",
							["PRECEDING_KEY_WORDS"] = {"GcSentinelSpawnData.xml"},
							["SPECIAL_KEY_WORDS"] = {"Id","SETTLE_EX"},		--Settlement defense, "Extreme" version?
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = AddSentinels ("MedicDrone", 2, 2)
						},]]
					}
				},
				{
					["MBIN_FILE_SOURCE"] 	= "GCROBOTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"GrenadeLaunchFlightTime", 2},
								{"MaxNumPatrolDrones", 6},						--(2)
								{"UnderwaterPerceptionMargin", 3},				--(2)
								{"CombatWaveSpawnTime", 5},						--(15)
								--{"DroneMiningValueActivate", 100},			--From gexo's savage sentinels
								--{"DroneCrimeWitnessLimit", 5},				--From gexo's savage sentinels
								--{"DroneCrimeProximityMultiplier", 5},			--From gexo's savage sentinels
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
								
								--Additions by Xen0nex	v
								{"DroneReAttackTime", 10},							--10				Unknown Function
								{"DronePatrolAttackSightTime", 2.5},				--2.5				Unknown Function
								{"DroneAttackGetInRangeBoost", 2},					--1.4
								{"DroneAggressiveInvestigateAttackTime", 1},		--1					Unknown Function
								{"FireRateLastHitBypassTime", 5.1},					--5.1				Unknown Function
								{"FireRateModifierMin", 1.65},						--1.1				Higher values means drones(other sentinels also?) will attack more frequently
								{"FireRateModifierMax", 0.8},						--0.45				Higher values means drones(other sentinels also?) will attack more frequently
								
								{"DronePerceptionRange", 20},						--15				The following seem to affect how easily sentinels can see/find the player
								{"DronePerceptionRangeHostile", 35},				--25				
								{"DronePerceptionSightRange", 50},					--30				
								{"DronePerceptionSightRangeHostile", 92},			--55				
								{"DronePerceptionSightAngle", 45},					--40				
								
								{"DroneInvestigateMinWitnessRangeCantSee", 2.5},	--2.5				Unknown Function
								{"DronePerceptionMinHearingSpeed", 4},				--4					Unknown Function
								{"DroneCriminalScanTime", 12},						--12				Unknown Function
								{"DroneInvestigateMinScanTime", 0.5},				--0.5				Unknown Function
								{"DroneInvestigateMinWitnessRange", 22},			--22				Unknown Function
								{"DroneInvestigateMinWitnessTime", 10},				--10				Unknown Function
								{"DroneCrimePostInvestigateWaitTime", 20},			--20				Unknown Function
								{"DronePatrolSearchTime", 3.5},						--3.5				Unknown Function, doesn't seem to control how long sentinels will search for you when running away, at least not on aggressive planets
								{"DroneCrimeCooldown", 0.3},						--0.3				Unknown Function
								{"DroneCrimeCooldownWaitTime", 10},					--10				Unknown Function
								{"DroneCrimeCooldownWaitTimeAtMax", 15},			--15				Unknown Function
								{"DroneDecisionTime", 2},							--2					Unknown Function
								{"DroneCrimeWitnessInvestigateDistance", 45},		--30				How close an idle, passive drone needs to be to notice a Crime and begin an Investigation
								
								{"DronePatrolDistanceMin", 15},						--10				These 3 vairables together control how close Patrol Drones will try to stay to their initial spawn point when passivley wandering on patrol
								{"DronePatrolDistanceMax", 50},						--30				
								{"DronePatrolTargetDistance", 25},					--10				
								
								{"DroneSearchTime", 10},							--10				Unknown Function, doesn't seem to control how long sentinels will search for you when running away
								{"DroneSearchPauseTime", 0.5},						--3					Unknown Function
								{"DroneSearchCriminalScanRadius", 8},				--8					Unknown Function
								{"DroneSearchCriminalScanRadiusWanted", 20},		--20				Seems to be how wide of a "net" they look within to try to find the player when searching for them after running away (smaller value means they should find you easier)
								
								{"MechMinMaintainFireTargetTime", 4},				--3
								{"MechAttackRate", 2}								--5
							}
						},
						{	--Also added by Xen0nex														This allows drones to continue to shoot at the player while you are moving away from them
							["PRECEDING_KEY_WORDS"] = {"GcDroneWeaponData.xml"},
							["REPLACE_TYPE"]         = "ALL",
							["MATH_OPERATION"] 		= "*",
                            ["VALUE_MATCH"]         = "120",
							["VALUE_MATCH_OPTIONS"]	= "~=",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Range", 2}								--30 (40 for ROBOTSMG)
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","MECHFLAME"},				--Mech Flamethrower
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0.07},							--0.05
								{"FireInterval", 0.03},								--0.04
								{"NumShotsMin", 50},								--30
								{"NumShotsMax", 70},								--40
								{"CooldownTimeMin", 2},								--3
								{"CooldownTimeMax", 4},								--5
								{"IdealRange", 8},									--8
								{"MinRange", 1},									--2
								{"MaxRange", 30}									--20
								
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Id","SENMECHGUN"},			--Mech SMG
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ProjectileSpread", 0.07},							--0.01			(The Sentinel Mech appears to always aim for a point in space to the left side of the player, completely missing them normally?)
								{"FireInterval", 0.03},								--0.05
								{"NumShotsMin", 45},								--15
								{"NumShotsMax", 75},								--25
								{"IdealRange", 20},									--20
								{"MinRange", 10},									--10
								{"MaxRange", 40}									--40
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Attack","GcDroneControlData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed", 8},								--4
								{"Strength", 1.6},								--1.3
								{"DirectionBrake", 0.6}							--0.3
							}
						},
						{	--Also added by Xen0nex
							["SPECIAL_KEY_WORDS"] = {"Search","GcDroneControlData.xml"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed", 12},								--5
								{"Strength", 2},								--1.5
								{"DirectionBrake", 2.5}							--2
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
								{"DronePatrolHonkTime", 1.2},						--2		(1.2)
								{"DronePatrolHonkProbability", 7},					--4		(7)
								{"DroneAlertTime", 20},								--6		(3)		How long drones will closely watch the player while Investigating after a Crime
								--{"AttackFireRate", 0.025},						--From gexo's savage sentinels
								--{"AttackTimeout", 12},							--From gexo's savage sentinels
								--{"AttackNumShotsMin", 1},							--From gexo's savage sentinels
								--{"AttackNumShotsMax", 1},							--From gexo's savage sentinels
								--{"AttackFireTimeMin", 0.185},						--From gexo's savage sentinels
								--{"AttackFireTimeMax", 0.185},						--From gexo's savage sentinels
								{"AttackAngle", 30},			
								--{"AttackRange", 120},								--From gexo's savage sentinels
								{"AttackActivateTime", 0.01},						--2		(1)		Controls how long they wait before starting to attack you after finding you
								{"AttackBobAmount", 0.5},
								{"AttackBobRotation", 0.05},
								--{"AttackMoveDistanceMin", 0.1},						--From gexo's savage sentinels
								{"AttackMoveMinChoiceTime", 0.05},					--1.5
								{"AttackMoveAngle", 1},
								{"AttackMaxDistanceFromAlert", 150},				--50		(120)
								{"DroneSearchCriminalScanRadiusInShip", 8},			--20		(8?)
								{"DroneScanPlayerTime", 15},						--8			(20?)
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
								{"BaseHealth","3200",},					--800
								{"HealthIncreasePerLevel","1400",},
								{"RepairTime","1",},					--3
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONEARMOURED.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","5800",},					--1450
								{"HealthIncreasePerLevel","2100",},
								{"RepairTime","2",},					--3
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONEMEDIC.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","4000",},					--1000
								{"HealthIncreasePerLevel","1400",},
								{"RepairTime","1.5",},					--1.5
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/DRONESUMMONER.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","5000",},					--1250
								{"HealthIncreasePerLevel","2100",},
								{"RepairTime","1.5",},					--1.5
							}
						},	
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/CORRUPTEDDRONE.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","12800",},				--3200
								{"HealthIncreasePerLevel","4500",},
								{"RepairTime","2",},					--3
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/QUADRUPED.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","16800",},				--4200
								{"HealthIncreasePerLevel","8500",},
								{"RepairTime","4",},					--5
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/SENTINELMECH.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","30000",},				--7500
								{"HealthIncreasePerLevel","12000",},
								{"RepairTime","6",},					--7
							}
						},
						{						
							["SPECIAL_KEY_WORDS"] = {"Resource","MODELS/COMMON/ROBOTS/WALKER.SCENE.MBIN",},
							["INTEGER_TO_FLOAT"] = "FORCE",							
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"BaseHealth","64000",},				--16000
								{"HealthIncreasePerLevel","25000",},
								{"RepairTime","6",},					--7
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