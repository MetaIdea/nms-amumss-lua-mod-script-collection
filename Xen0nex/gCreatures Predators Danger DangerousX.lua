Author = "Gumsk"		--Edited by Xenonex
ModName = "gCreatures Predators"
ModNameSub = "Danger DangerousX"
BaseDescription = "More aggressive and dangerous predators"
GameVersion = "5_12"
ModVersion = "a"
FileSource1 = "GCCREATUREGLOBALS.MBIN"
FileSource2 = "MODELS\PLANETS\CREATURES\SANDWORMMINI\SANDWORMMINI\ENTITIES\DATA.ENTITY.MBIN"
FileSource3 = "MODELS\PLANETS\CREATURES\FISH\GRABBYPLANT\ENTITIES\GRABBYPLANT.ENTITY.MBIN"
FileSource4 = "MODELS\COMMON\ROBOTS\WALKING_BUILDING\WALKINGBUILDING.ENTITY.MBIN"

--This section added by Xen0nex
EyeballHealthMult = 6						--Multiplier to the Default 1600	(The underwater Eyeball monster / "Abyssal Horror")
WormHealthMult = 3							--Multiplier to the Default 2600	(The big "Hungering Tendrils" / "Titan Worms" on infested planets)
GroundWormSpawnMin = 3						--Default 3		(The same "Hungering Tendrils" as above)
GroundWormSpawnMax = 5						--Default 3

BugQueenHealth = 64000						--Default 32000		(The Vile Queen boss bug)
QueenHealthLevelMul = 2						--Default 1.5
BugQueenSpitCount = 36						--Default 12		How many shots of spit are fired with each attack
BugQueenSpitRadius = 18						--Default 15		This seems be how closely the shots of spit are grouped together
BugQueenSpitballSpeed = 8					--Default 8			This is the speed at which they are initially shot upwards into the air, so higher value means it takes longer for it actually hit the ground
BugQueenSpitballExplosionRadius = 4.2		--Default 2.8
BugFiendHealth = 2000						--Default 700		(Likely the smaller helpers for the The Vile Queen boss bug)

CreatureSmallHealth = 500					--Default 200
CreatureMedHealth = 2100					--Default 1400
CreatureLargeHealth = 3600					--Default 2800
CreatureHugeHealth = 5400					--Default 3600

WalkBuildingType = "WALKINGBUILDING"		--"CREATURE"		Sets the damage multipliers for various weapons vs this target. PTSd adds a custom "WALKINGBUILDING" type in PTSd Weapons Rebalance.lua

--Original section below
SharkAttackSpeed = 15						--Default 10
SharkAttackAccel = 5						--Default 3
AggressiveSharks = "True"					--Default False
PredatorPerceptionDistance = 60				--Default 40
PredatorFishPerceptionDistance = 80			--Default 60
PassiveFleePlayerDistance = 10				--Default 10
AdultBabyKilledNoticeDistance = 100			--Default 70
PercentagePlayerPredators = 0.7				--Default 0.5
PredatorSmallHealth = 1000					--Default 400
PredatorMedHealth = 3000					--Default 1400
PredatorLargeHealth = 5000					--Default 3000
PredatorHugeHealth = 7000					--Default 3500
PlayerPredatorHealthModifier = 1.5			--Default 1.3
PredatorApproachTime = 3					--Default 4
PredatorNoticePauseTime = 1.2				--Default 1.5
PredatorStealthDist = 15					--Default 11
PredatorChargeDist = 10						--Default 7
PredatorChargeDistScale = 0.3				--Default 0.3
FishPredatorChargeDist = 10					--Default 7
FishPredatorChargeDistScale = 0.3			--Default 0.3
ScuttlersCanAttack = "True"					--Default True
ScuttlerHealth = 1500						--Default 600
ScuttlerInitialNoAttackTime = 2.5			--Default 3.5
ScuttlerMoveTimeMin = 0.5					--Default 0.8
ScuttlerMoveTimeMax = 2						--Default 3
ScuttlerIdleTimeMin = 0.2					--Default 0.3
ScuttlerIdleTimeMax = 1.2					--Default 1.8
ScuttlerZigZagTimeMin = 0.2					--Default 0.3
ScuttlerZigZagTimeMax = 1					--Default 1
ScuttlerZigZagStrength = 0.2				--Default 0.1
ScuttlerSpitDelay = 0.03					--Default 0.05
ScuttlerSpitChargeTime = 0.3				--Default 0.4
MiniDroneEnergyRecoverRate = 0.8			--Default 0.5
MiniDroneEnergyUsePerShot = 0.25			--Default 0.33
MiniDroneShotDelay = 0.25					--Default 0.35
MiniDroneShotMaxAngle = 15					--Default 10
FiendsCanAttack = "True"					--Default True
FiendOnscreenMarkers = "False"				--Default True
FiendHealth = 2300							--Default 1000
FiendPerceptionDistance = 80				--Default 60
FiendAggroTime = 30							--Default 45
FiendMaxEngaged = 9							--Default 6
FiendMaxAttackers = 6						--Default 2
FiendMaxVerticalForPounce = 0.5				--Default 0.3
FiendZigZagSpeed = 0						--Default 0
FiendZigZagStrength = 0						--Default 0
FiendEggsToUnlockSpit = 0					--Default 0
MaxFiendsToSpawn = 9						--Default 6
MaxFiendsToSpawnCarnage = 12				--Default 10		Added by Xen0nex
FiendMinSpawnTime = 0.2						--Default 0.25
FiendMaxSpawnTime = 2.3						--Default 3
FiendAggroIncreaseDamageEgg = 1				--Default 1
FiendAggroIncreaseDestroyEgg = 2			--Default 1
FiendAggroDecreasePerSpawn = 0.05			--Default 0.1
FiendCritAreaSize = 0.1						--Default 0.15
FiendDistToConsiderTargetSwtich = 10		--Default 10
FiendDistReduceForBeingShot = 70			--Default 70
FiendBeingShotMemoryTime = 10				--Default 10
MaxFishFiends = 14							--Default 10
FishFiendSmallHealth = 600					--Default 400
FishFiendBigHealth = 18000					--Default 9000		(12000)		Added by Xen0nex
FishFiendSmallBoostStrength = 14			--Default 10
FishFiendSmallBoostTime = 0.7				--Default 0.5
FishFiendSmallScale = 0.3					--Default 0.3
FishFiendBigBoostStrength = 6				--Default 4			(5)			Added by Xen0nex
FishFiendBigBoostTime = 2					--Default 1
FishFiendBigScale = 4						--Default 3
PredatorSpeedMultiplier = 1.3				--Default 1.1

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								--These added by Xen0nex
								{"GroundWormSpawnMin", GroundWormSpawnMin},
								{"GroundWormSpawnMax", GroundWormSpawnMax},
								{"BugQueenHealth", BugQueenHealth},
								{"BugQueenSpitCount", BugQueenSpitCount},
								{"BugQueenSpitRadius", BugQueenSpitRadius},
								{"BugQueenSpitballSpeed", BugQueenSpitballSpeed},
								{"BugQueenSpitballExplosionRadius", BugQueenSpitballExplosionRadius},
								{"BugFiendHealth", BugFiendHealth},
								{"QueenHealthLevelMul", QueenHealthLevelMul},
								{"CreatureSmallHealth", CreatureSmallHealth},
								{"CreatureMedHealth", CreatureMedHealth},
								{"CreatureLargeHealth", CreatureLargeHealth},
								{"CreatureHugeHealth", CreatureHugeHealth},
								{"MaxFiendsToSpawnCarnage", MaxFiendsToSpawnCarnage},
								{"FishFiendBigHealth", FishFiendBigHealth},
								{"FishFiendBigBoostTime", FishFiendBigBoostTime},
								
								{"SharkAttackSpeed", SharkAttackSpeed},
								{"SharkAttackAccel", SharkAttackAccel},
								{"AggressiveSharks", AggressiveSharks},
								{"PredatorPerceptionDistance", PredatorPerceptionDistance},
								{"PredatorFishPerceptionDistance", PredatorFishPerceptionDistance},
								{"PassiveFleePlayerDistance", PassiveFleePlayerDistance},
								{"AdultBabyKilledNoticeDistance", AdultBabyKilledNoticeDistance},
								{"PercentagePlayerPredators", PercentagePlayerPredators},
								{"PredatorSmallHealth", PredatorSmallHealth},
								{"PredatorMedHealth", PredatorMedHealth},
								{"PredatorLargeHealth", PredatorLargeHealth},
								{"PredatorHugeHealth", PredatorHugeHealth},
								{"PlayerPredatorHealthModifier", PlayerPredatorHealthModifier},
								{"PredatorApproachTime", PredatorApproachTime},
								{"PredatorNoticePauseTime", PredatorNoticePauseTime},
								{"PredatorStealthDist", PredatorStealthDist},
								{"PredatorChargeDist", PredatorChargeDist},
								{"PredatorChargeDistScale", PredatorChargeDistScale},
								{"FishPredatorChargeDist", FishPredatorChargeDist},
								{"FishPredatorChargeDistScale", FishPredatorChargeDistScale},
								{"ScuttlersCanAttack", ScuttlersCanAttack},
								{"ScuttlerHealth", ScuttlerHealth},
								{"ScuttlerInitialNoAttackTime", ScuttlerInitialNoAttackTime},
								{"ScuttlerMoveTimeMin", ScuttlerMoveTimeMin},
								{"ScuttlerMoveTimeMax", ScuttlerMoveTimeMax},
								{"ScuttlerIdleTimeMin", ScuttlerIdleTimeMin},
								{"ScuttlerIdleTimeMax", ScuttlerIdleTimeMax},
								{"ScuttlerZigZagTimeMin", ScuttlerZigZagTimeMin},
								{"ScuttlerZigZagTimeMax", ScuttlerZigZagTimeMax},
								{"ScuttlerZigZagStrength", ScuttlerZigZagStrength},
								{"ScuttlerSpitDelay", ScuttlerSpitDelay},
								{"ScuttlerSpitChargeTime", ScuttlerSpitChargeTime},
								{"MiniDroneEnergyRecoverRate", MiniDroneEnergyRecoverRate},
								{"MiniDroneEnergyUsePerShot", MiniDroneEnergyUsePerShot},
								{"MiniDroneShotDelay", MiniDroneShotDelay},
								{"MiniDroneShotMaxAngle", MiniDroneShotMaxAngle},
								{"FiendsCanAttack", FiendsCanAttack},
								{"FiendOnscreenMarkers", FiendOnscreenMarkers},
								{"FiendHealth", FiendHealth},
								{"FiendPerceptionDistance", FiendPerceptionDistance},
								{"FiendAggroTime", FiendAggroTime},
								{"FiendMaxEngaged", FiendMaxEngaged},
								{"FiendMaxAttackers", FiendMaxAttackers},
								{"FiendMaxVerticalForPounce", FiendMaxVerticalForPounce},
								{"FiendZigZagSpeed", FiendZigZagSpeed},
								{"FiendZigZagStrength", FiendZigZagStrength},
								{"FiendEggsToUnlockSpit", FiendEggsToUnlockSpit},
								{"MaxFiendsToSpawn", MaxFiendsToSpawn},
								{"FiendMinSpawnTime", FiendMinSpawnTime},
								{"FiendMaxSpawnTime", FiendMaxSpawnTime},
								{"FiendAggroIncreaseDamageEgg", FiendAggroIncreaseDamageEgg},
								{"FiendAggroIncreaseDestroyEgg", FiendAggroIncreaseDestroyEgg},
								{"FiendAggroDecreasePerSpawn", FiendAggroDecreasePerSpawn},
								{"FiendCritAreaSize", FiendCritAreaSize},
								{"FiendDistToConsiderTargetSwtich", FiendDistToConsiderTargetSwtich},
								{"FiendDistReduceForBeingShot", FiendDistReduceForBeingShot},
								{"FiendBeingShotMemoryTime", FiendBeingShotMemoryTime},
								{"MaxFishFiends", MaxFishFiends},
								{"FishFiendSmallHealth", FishFiendSmallHealth},
								{"FishFiendBigHealth", FishFiendBigHealth},
								{"FishFiendSmallBoostStrength", FishFiendSmallBoostStrength},
								{"FishFiendSmallBoostTime", FishFiendSmallBoostTime},
								{"FishFiendSmallScale", FishFiendSmallScale},
								{"FishFiendBigBoostStrength", FishFiendBigBoostStrength},
								{"FishFiendBigBoostTime", FishFiendBigBoostTime},
								{"FishFiendBigScale", FishFiendBigScale},
								{"PredatorSpeedMultiplier", PredatorSpeedMultiplier},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource2,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["MATH_OPERATION"] 		= "*", 
							["VALUE_CHANGE_TABLE"] = {
								{"Health", WormHealthMult},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource3,
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["MATH_OPERATION"] 		= "*", 
							["VALUE_CHANGE_TABLE"] = {
								{"Health", EyeballHealthMult},
							},
						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = FileSource4,
					["EXML_CHANGE_TABLE"] = {
						{
							["REPLACE_TYPE"] 		= "ONCE",
							["VALUE_MATCH"]         = "CREATURE", 
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"DamageMultiplier", WalkBuildingType},
							}
						},
					},
				},
			}
		}
	}
}