Author = "Gumsk"
ModName = "gPlayer"
ModNameSub = "Normal"
BaseDescription = "Smaller power increases in player globals"
GameVersion = "399"
ModVersion = "a"
FileSource = "GCPLAYERGLOBALS.GLOBAL.MBIN"

BinocularRangePlanet = 2000							--1000
BinocularRangeSpace = 20000							--10000
	MinBinocActiveTime = 0.6							--0.6
PlayerTransferRange = 200							--20
PlayerSpaceTransferRange = 4000						--2000
	CommunicatorSpeed = 30								--30
	SolarRegenFactor = 0.01								--0.01 ; No effect? Maybe just small
	InventoryDamage = "True"							--True
	NeverPreyedOn = "False"								--False
	LuckyWithTech = "False"								--False
	UpgradeExosuitWithProduct = "True"					--True
	ExosuitUpgradeProduct = "NAV_DATA_DROP"				--NAV_DATA_DROP
	SuitInventoryStartSeed = 2							--2
	LowGuildRank = 3									--3
	MedGuildRank = 5									--5
	HighGuildRank = 8									--8
	BestGuildRank = 10									--10
	NormalModeSubstanceRewardMultiplier = 0.9			--0.9
	HardModeSubstanceRewardMultiplier = 0.75			--0.75
	UseEnergy = "True"									--True
	LootForceMultiplier = 20							--20 
	ObjectScanTime = 3									--3
	DroneProbeScanTime = 3								--3
	LaserMiningDamageMultiplier = 1						--1
	SleepFadeTime = 3.5									--3.5
	SpaceMaxGravityDist = 1024							--1024
	SpaceMinGravityDist = 512							--512
InteractionScanRange = 150							--80
InteractionButtonRange = 15							--10
	InteractionFocusTime = 0.5							--0.5
InteractionSubstanceRange = 100						--40
MaxBuildHeight = 512								--64

--Multiplayer
OtherPlayerTrackArrowRange = 2000					--100  

--Health
	DefaultHitPoints = 60								--60
	DefaultHealthPips = 3								--3
	DefaultShipHealthPips = 6							--6
	MaxHealthPips = 9									--9
UseLargeHealthBar = "False"							--True
	DroneSpawnAccelerator = 10							--10
	HealthRechargeMinTimeSinceDamage = 10				--10
	HealthPipRechargeRate = 200							--200
	MinEnergyPercentOnRespawn = 0.5						--0.5
	HardModeEnergyDischargeRateLow = 0.08				--0.08
	HardModeEnergyDischargeRateMedium = 0.8				--0.8
	HardModeEnergyDischargeRateHigh = 2.2				--2.2
	HazardDamageMinTime = 20							--20
	EnergyDamageMinTime = 30							--30
	EnergyDischargeRateLow = 0.02						--0.02
	EnergyDischargeRateMedium = 0.25					--0.25
	EnergyDischargeRateHigh = 0.9						--0.9
EnergyDischargeRateFloatingInSpace = 0				--30
	EnergyPainRate = 20									--20
	DamageRepairFactor = 0.5							--0.5
	DamageRepairFactorHardMode = 0.5					--0.5
	NormalModeHazardTimeMultiplier = 0.9				--0.9
	NormalModeHazardDamageRateMultiplier = 0.8			--0.8
	NormalModeHazardDamageWoundRateMultiplier = 0.8		--0.8
	NormalModeHazardRechargeUnderground = 1.5			--1.5
	HardModeHazardTimeMultiplier = 0.3					--0.3
	HardModeHazardDamageRateMultiplier = 0.3			--0.3
	HardModeHazardDamageWoundRateMultiplier = 0.5		--0.5
	HardModeHazardRechargeUnderground = 3.5				--3.5
	ShieldRestoreSpeed = 0.2							--0.2
	ShieldRestoreDelay = 10  							--10
	LowHealthEffectPips = 1								--1
	LowHealthEffectShield = 40							--40
	CriticalHitTime = 0.5								--0.5
	CriticalHitDesatTime = 5							--5
	CriticalHitDesatFreq = 2							--2
	WoundTimeMinimum = 5								--5
	WoundDamageLimit = 75								--75
	WoundDamageLimitShip = 150							--150
	WoundDamageDecayTime = 20							--20
	ShieldRechargeMinTimeSinceDamage = 30				--30
	ShieldRechargeRate = 10								--10
	TakeDamageImpulse = 15								--15
	StaminaRate = 0.1									--0.1
	StaminaRecoveryRate = 0.1							--0.1
	StaminaRecoveredFactor = 0.5						--0.5
	PainFlickerAmount = 1.3								--1.3
	PainColourSeperateAmount = 0.04						--0.04
	PainTime = 0.4										--0.4
	DeathDamageDrainChargeFactor = 1					--1
	DeathDamageTechBrokenPercent = 40					--40
	HardLandPainTime = 4								--4
HardLandTime = 8									--0.5
HardLandMin = 50									--5
HardLandMax = 150									--18

--Movement
	RespawnOnPadRadius = 25								--25

	--Foot
	GroundWalkForceMultiplier = 22						--22
	GroundWalkBrake = 11.5								--11.5
	--GroundWalkBrakeWhileMoving = 5.5					--5.5
GroundWalkSpeed = 6									--4.4 .
GroundRunSpeed = 11									--8 .
	GroundWalkRecoverySpeedDamper = 0.4					--0.4
	HoldForce = 50										--50
	HoldTime = 0.1										--0.1
	HoldActionDistX = -0.4								--(-0.4)
	HoldActionDistY = -1.3								--(-1.3)
	HoldActionDistZ = 2									--2
	HoldDistX = 0										--0
	HoldDistY = -0.5									--(-0.5)
	HoldDistZ = 4										--4
	HoldMaxForce = 500									--500
	HoldRotate = 5										--5
	BalanceStrength = 0.5								--0.5
	BalanceSpeed = 2									--2
	ExertionSmoothTime = 6								--6
	ExertionFromPainTime = 5							--5
	AnimWalkSpeed = 1.5									--1.5
	AnimRunSpeed = 4									--4
	AnimWalkToRunSpeed = 4.5							--4.5
	AnimWalkBlendPoint = 0.05							--0.05
	AnimRunBlendPoint = 0.1								--0.1
	MaxSlopeAngle = 89									--89
	SlopeSlidingSpeed = -15								--(-15)
	SlopeSlideBrake = 18.5								--18.5
	MinSlideTime = 0.3									--0.3
	MaxWalkableSlopeAngle = 65							--45
	MinSpidermanSlopeAngle = 45							--45
	MinTimeToHoldSpidermanPose = 0.5					--0.7
	MaxSpidermanSlopeAngle = 79							--65
	MaxClingableSlopeAngle = 89							--81
	MinimumPushOffForceToSlide = 0.4					--0.4
	ClimbableStickinessAngle = 40						--30
	MinUpAmount = 0.4									--0.4
	FootOffset = 0.2									--0.2
MaxFallSpeed = 50									--30
	PushForceDecay = 40									--40
	LeanFwdMaxAngle = 120								--120
	LeanBackMaxAngle = 40								--40
	LeanLeftMaxAngle = 35								--35
	LeanRightMaxAngle = 35								--35
	LeanAmount = 0.4									--0.4
	LeanAmountFwd = 0.05								--0.05

	--Jetpack
	FreeJetpackRange = 3								--3
	FreeJetpackRangeNonTerrain = 1.1						--1.1
	JetpackDrainHorizontalFactor = 2.5					--2.5
JetpackForce = 40									--31 ; lateral force added when pressing in a direction. Existing force remains until direction is released
	JetpackBrake = 2.2									--2.2
JetpackMinLevel = 0.1								--0.5 ; ?How flat does the ground need to be to ignite jetpack? At 99, couldn't ignite in most places
JetpackMaxSpeed = 20								--5
JetpackMaxUpSpeed = 60								--30
JetpackUpForce = 45									--30 ; Needs to be above about 20 to overcome standard gravity
	JetpackIgnitionForce = 60							--60 ; No noticeable effect
JetpackIgnitionTime = 5							--0.4 ; 
JetpackMinIgnitionTime = .1							--0.2 ; How quickly after igniting the jetpack FROM A SURFACE will jetpack thrust stop?
	-- JetpackTankTime1 = 4								--4
	-- JetpackTankTime1 = 6								--6
	-- JetpackTankTime1 = 8								--8
	JetpackFillRate = 0.5									--0.5
	JetpackFillRateHardMode = 0.2						--0.2
	--JetpackFillRateMidair = 0.25						--0.25
JetpackFillRateSpaceStationMultiplier = 20			--5
	--JetpackFillRateFleetMultiplier = 20					--5
	--JetpackFillRateNexusMultiplier = 20					--20
JetpackUpForceDeadPlanetExtra = 20					--10
JetpackForceDeadPlanetExtra = 30					--15
JetpackIgnitionForceDeadPlanetExtra = 60			--45
	-- SpaceJetpackForce = 60								--40
	-- SpaceJetpackUpForce = 50							--30
	-- SpaceJetpackIgnitionForce = 30						--15
	-- SpaceJetpackMaxSpeed = 40							--10
	-- SpaceJetpackDrainRate = 0.3							--0.3
	-- RocketBootsEnabled = "True"							--True
	-- RocketBootsUseCustomCamera = "False"				--False
	-- RocketBootsActivationWindow = 0.25					--0.25
	-- RocketBootsDoubleTapTime = 0.2						--0.2
	-- RocketBootsImpulse = 3								--3
	-- RocketBootsBoostForce = 68							--68
	-- RocketBootsDriftForce = 30							--30
	-- RocketBootsForceStartTime = 0.4						--0.4
	-- RocketBootsForceDuration = 0.2						--0.2
	-- RocketBootsMinDesiredHeight = 2						--2
	-- RocketBootsMaxDesiredHeight = 6						--6
	-- RocketBootsHeightAdjustTime = 0.18					--0.18
	-- RocketBootsHeightAdjustUpStrength = 0.57			--0.57
	-- RocketBootsHeightAdjustDownStrength = 0.3			--0.3
	-- RocketBootsJetpackMinLevel = 1						--1
	-- RocketBootsBoostTankDrainSpeed = 6					--6
	-- RocketBootsDriftTankDrainSpeed = 1					--1
	-- RocketBootsBoostOnTime = 0.2						--0.2
	-- RocketBootsBoostOffTime = 0.2						--0.2
	-- RocketBootsZigZagStrength = 0						--0
	-- RocketBootsZigZagForceDuration = 0.4				--0.4
	-- RocketBootsMaxSpeed = 20							--20
	-- RocketBootsDriftEndTime = 2							--2
	-- RocketBootsWindUpBraking = 0.9						--0.9
	-- RocketBootsDriftBraking = 0.6						--0.6
	-- RocketBootsDriftDownwardForce = 0.5					--0.5

	--Underwater
JetpackUnderwaterDrainRate = 0.3					--0.4
JetpackUnderwaterFillRate = 2						--1
	UnderwaterMargin = 1.5								--1.5
	UnderwaterMinDepth = 2								--2
	UnderwaterSurfaceTension = 2						--2
	UnderwaterSurfaceTensionOffset = -0.6				--(-0.6)
	UnderwaterSurfaceForceFlattenAngleMin = 10			--10
	UnderwaterSurfaceForceFlattenAngleRange = 20		--20
	UnderwaterImpact = 0.2								--0.2
UnderwaterMaxSpeed = 6								--4
UnderwaterForce = 25								--15
UnderwaterMaxJetpackSpeed = 25						--8
UnderwaterJetpackForce = 50							--25
	UnderwaterMaxJetpackEscapeSpeed = 8					--8
	UnderwaterJetpackEscapeForce = 20					--20
	UnderwaterBrake = 3									--3
	UnderwaterFloat = 0									--0
	UnderwaterFloatForce = 15							--15
	UnderwaterFloatRange = 2							--2
	UnderwaterFloatFreq = 0.5  							--0.5
	DeepWaterDepth = 45									--45

	--Ship
	ShipSummonLastSafeMargin = 20						--20
	ShipPriceExp2 = 4.5									--4.5
	WeaponPriceExp2 = 1									--1
	FreighterPriceExp2 = 2								--2
	ShipCoolFactor = 1.5								--1.5
	WeaponCoolFactor = 3								--3
	FreighterCoolFactor = 1.5							--1.5
AutoLandRange = 150									--100
	AutoLandTime = 2									--2

--Weapons
	--Melee
	MeleeCooldown = 0.62								--0.62
	ChargeMeleeCooldown = 1.3							--1.3
	MeleeDistance = 2.8									--2.8
	MeleeDistance3P = 1.8								--1.8
	MeleeRadius = 0.75									--0.75
	MeleeHitTime = 0.2									--0.2
	MeleeSpeedBoost = 1									--1
	MeleeSpeedDamageBoost = 1.2							--1.2
	MeleeSpeedBoostRangeMultiplier = 1.2				--1.2
	MeleeStaminaDrain = 0.2								--0.2
	MeleeRange = 8										--8
	MeleeTime = 0.8										--0.8
	MeleeForcePush = 100								--100
	MeleeOffset = 0.8									--0.8
	PushForceAirFactor = 0.4							--0.4
	TargetDistance = 20									--20
	TargetRadius = 4									--4

MinTimeAfterMeleeBeforeBoost = 0.04					--0.05
MaxTimeAfterMeleeBeforeBoost = 0.6					--0.5
MeleeBoostAirForce = 7								--3
MeleeToAirBoostInitialImpulse = 10					--5
MaxTimeInMeleeBoost = 2								--1.4

	WeaponZoomEnabled = "True"							--True
	WeaponZoomFOV = 0.7									--0.7
	WeaponZoomRecoilMultiplier = 2						--2
	FrontShieldSpeedSlowdown = 0.5						--0.5
	GrenadeBounceDamping = 0.1							--0.1
	GrenadeBounceMaxSpeed = 16							--16
	GrenadeStopExplodeTime = 0.4						--0.4
	WeaponShotgunSlowdown = 0.7							--0.7
	BulletCostReducer = 2								--2
	BulletClipMultiplier = 2							--2
	HeatShieldTime = 200								--200
	LaserShakeMin = 0.5									--0.5
	LaserShakeMax = 2									--2
	GunRecoil = 5										--5
	LaserRecoil = 2										--2
	BeamRecoil = 6										--6
	GrenadeRecoil = 10									--10
	GunRecoilSpring = 0.33								--0.33
	BlastRecoilSpring = 0.3								--0.3
	RailRecoilSpring = 0.1								--0.1
	PulseRecoilSpring = 0.19							--0.19
	GunRecoilSettleSpring = 0.4							--0.4
	ThirdPersonRecoilMultiplier = 1.5					--1.5
	GunRecoilMin = 0.15									--0.15
	GunRecoilMax = 1.6									--1.6
	ProjectileDamageFalloff = 1							--1
	ShotgunDispersion = 0.8								--0.8
	AutoAim = "False"									--False
	AutoAimMaxAccelFactor = 0.8							--0.8
	AutoAimFixedInterceptSpeed = 200					--200
	AutoAimTimeOut = 0.5								--0.5
	AutoAimMaxAngle = 25								--25
	AutoAimMinScreenDistance = 20						--20
	AutoAimRadiusExtra = 2								--2
	AutoAimStickyMin = 1								--1
	AutoAimStickyMax = 0.25								--0.25
	AimDistanceShip = 3000								--3000
	AimSpeed = 200										--200
	AimWeightAdd = 0.02									--0.02
	AimMinWeight = 0.01									--0.01
	AimDecay = 0.6										--0.6
	AimOffset = 1.5										--1.5
	AimShootableTargetAngle = 100						--100
	AimDisperseTime = 2.5								--2.5
	AimDisperseMinTime = 0.2							--0.2
	AimDisperseCooldownTime = 0.2						--0.2
	AimDisperseCooldownFactor = 6						--6
	MaxProjectileRadiusMultiplier = 5					--5
	GunBaseClipSize = 10								--10
	GrenadeBaseClipSize = 100							--100
	FullClipReloadSpeedMultiplier = 2					--2
	ReloadTapButtonSpeedIncrease = 1					--1
	LaserWeaponRange = 100								--100
	LaserShipRange = 1000								--1000
TerrainLaserRange = 150								--100
VehicleLaserRange = 300								--200
	LaserBeamMineRate = 0.3								--0.3
	LaserBeamCore = 0.04									--0.04
	LaserBeamFlickerAmp = 1.5							--1.5
	LaserBeamFlickerFreq = 1							--1
	LaserEndOffset = 0.1								--0.1
	GrenadeTerrainDeformRadius = 4						--4
	LaserBeamTerrainDeformRadius = 2					--2
	LaserBeamTerrainDeformVariance = 0.4				--0.4
	LaserBeamAmmoUseTime = 0.5							--0.5
	ReloadButtonHoldTimeToHolster = 0.75				--0.75
	WeaponChangeModeTime = 0							--0
	WeaponLowerDelay = 3								--3
	WeaponHolsterDelay = 6								--6
	WeaponLag = 0.6										--0.6
	WeaponBobFactorWalkDeadZone = 1						--1
	WeaponBobFactorWalk = 0.2							--0.2
	WeaponBobFactorRun = 0.2							--0.2
	WeaponBobBlendTime = 0.5							--0.5
	WeaponGrenadeTime = 0.5								--0.5
	WeaponGunTime = 0.12								--0.12
	WeaponRailFireTime = 0.4							--0.4
	WeaponRailRechargeTime = 0.8						--0.8
	BulletBend = 0.01									--0.01
	GrenadeCarveRadius = 5								--5
	ChargeTime = 0.4									--0.4
	EnergyBallSpeed = 200								--200
	ChargedEnergyBallSpeed = 75							--75
	LookRayRadius = 1									--1
	PickRange = 15										--15
DamageRateWhenUnderNoGravity = 0.1					--10

--Sentinels
	RobotMultiplierWithFriends = 2						--2
	DroneStartLocationRadius = 3000						--3000
	DroneScanTimeToForget = 1							--1
	CombatSpawnMinWantedTime = 10						--10
	WalkerAlertRange = 100								--100
	WalkerSightRange = 300								--300
	WalkerSightAngle = 120								--120
	--CombatEscalateTime = 5								--5
	CombatEscapeRadius = 200							--200
	CombatEscapeTime = 3								--3
	WantedDroneEventRadius = 60							--60
	WantedMinSpaceTime = 20								--20
	WantedMinPlanetTime = 5								--5
	WantedLevelDelay = 0.1								--0.1
	WantedWitnessTimer = 0.6							--0.6
	WantedWitnessFuzzyTime = 1.4						--1.4
	WantedMinorCrimeAmount = 0.1						--0.1
	WantedTimeoutAggressive = 20						--20
	-- WantedTimeout1 = 10									--10
	-- WantedTimeout2 = 15									--15
	-- WantedTimeout3 = 10									--10
	-- WantedTimeout4 = 15									--15
	-- WantedTimeout5 = 10									--10
	-- WantedEscalate1 = -1								--(-1)
	-- WantedEscalate2 = 30								--30
	-- WantedEscalate3 = 60								--60
	-- WantedEscalate4 = 90								--90
	-- WantedEscalate5 = -1								--(-1)
	-- WantedExtEscalate1 = -1								--(-1)
	-- WantedExtEscalate2 = 20								--20
	-- WantedExtEscalate3 = 40								--40
	-- WantedExtEscalate4 = 120							--120
	-- WantedExtEscalate5 = -1								--(-1)

--Pirates
	-- ExperienceHardPiratesDamagePotentialMin = 600		--600
	-- ExperienceHardPiratesDamagePotentialRange = 800		--800
	-- ExperienceHardPiratesDamageMaxOdds = 0.85			--0.85
	-- ExperienceMediumPiratesDamagePotentialMin = 400		--400
	-- ExperienceMediumPiratesDamagePotentialRange = 400	--400
	-- ExperienceMediumPiratesDamageMaxOdds = 0.85			--0.85
	PirateHailPercent = 100								--100
	PirateBountyInitTime = 2							--2
	PirateProbeInitTime = 2								--2
	PirateProbeAttackWaitTime = 4						--4
	PirateProbeAttackWarnTime = 3						--3
	PirateProbeScanTime = 7								--7
	PirateProbeScanTotalTime = 8.5						--8.5
	PirateProbeHailPause = 1							--1
	PirateBattleMarkerRange = 5001						--5001
	PirateBattleWarnTime = 3							--3
	PirateBattleMarkerTime = 4							--4
	PirateBattleMaxTime = 300							--300
MaxNumShipsAttackingPlayer = 5						--3

  
NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {
{
	["MBIN_CHANGE_TABLE"] = {
		{
			["MBIN_FILE_SOURCE"] = FileSource,
			["EXML_CHANGE_TABLE"] = {
				{
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"BinocularRangePlanet",BinocularRangePlanet},
						{"BinocularRangeSpace",BinocularRangeSpace},
						{"MinBinocActiveTime",MinBinocActiveTime},
						{"PlayerTransferRange",PlayerTransferRange},
						{"PlayerSpaceTransferRange",PlayerSpaceTransferRange},
						{"CommunicatorSpeed",CommunicatorSpeed},
						{"SolarRegenFactor",SolarRegenFactor},
						{"InventoryDamage",InventoryDamage},
						{"NeverPreyedOn",NeverPreyedOn},
						{"LuckyWithTech",LuckyWithTech},
						{"UpgradeExosuitWithProduct",UpgradeExosuitWithProduct},
						{"ExosuitUpgradeProduct",ExosuitUpgradeProduct},
						{"SuitInventoryStartSeed",SuitInventoryStartSeed},
						{"LowGuildRank",LowGuildRank},
						{"MedGuildRank",MedGuildRank},
						{"HighGuildRank",HighGuildRank},
						{"BestGuildRank",BestGuildRank},
						{"NormalModeSubstanceRewardMultiplier",NormalModeSubstanceRewardMultiplier},
						{"HardModeSubstanceRewardMultiplier",HardModeSubstanceRewardMultiplier},
						{"UseEnergy",UseEnergy},
						{"LootForceMultiplier",LootForceMultiplier},
						{"ObjectScanTime",ObjectScanTime},
						{"DroneProbeScanTime",DroneProbeScanTime},
						{"LaserMiningDamageMultiplier",LaserMiningDamageMultiplier},
						{"SleepFadeTime",SleepFadeTime},
						{"SpaceMaxGravityDist",SpaceMaxGravityDist},
						{"SpaceMinGravityDist",SpaceMinGravityDist},
						{"InteractionScanRange",InteractionScanRange},
						{"InteractionButtonRange",InteractionButtonRange},
						{"InteractionFocusTime",InteractionFocusTime},
						{"InteractionSubstanceRange",InteractionSubstanceRange},
						{"MaxBuildHeight",MaxBuildHeight},
						{"OtherPlayerTrackArrowRange",OtherPlayerTrackArrowRange},

						{"DefaultHitPoints",DefaultHitPoints},
						{"DefaultHealthPips",DefaultHealthPips},
						{"DefaultShipHealthPips",DefaultShipHealthPips},
						{"MaxHealthPips",MaxHealthPips},
						{"UseLargeHealthBar",UseLargeHealthBar},
						{"DroneSpawnAccelerator",DroneSpawnAccelerator},
						{"HealthRechargeMinTimeSinceDamage",HealthRechargeMinTimeSinceDamage},
						{"HealthPipRechargeRate",HealthPipRechargeRate},
						{"MinEnergyPercentOnRespawn",MinEnergyPercentOnRespawn},
						{"HardModeEnergyDischargeRateLow",HardModeEnergyDischargeRateLow},
						{"HardModeEnergyDischargeRateMedium",HardModeEnergyDischargeRateMedium},
						{"HardModeEnergyDischargeRateHigh",HardModeEnergyDischargeRateHigh},
						{"HazardDamageMinTime",HazardDamageMinTime},
						{"EnergyDamageMinTime",EnergyDamageMinTime},
						{"EnergyDischargeRateLow",EnergyDischargeRateLow},
						{"EnergyDischargeRateMedium",EnergyDischargeRateMedium},
						{"EnergyDischargeRateHigh",EnergyDischargeRateHigh},
						{"EnergyDischargeRateFloatingInSpace",EnergyDischargeRateFloatingInSpace},
						{"EnergyPainRate",EnergyPainRate},
						{"DamageRepairFactor",DamageRepairFactor},
						{"DamageRepairFactorHardMode",DamageRepairFactorHardMode},
						{"NormalModeHazardTimeMultiplier",NormalModeHazardTimeMultiplier},
						{"NormalModeHazardDamageRateMultiplier",NormalModeHazardDamageRateMultiplier},
						{"NormalModeHazardDamageWoundRateMultiplier",NormalModeHazardDamageWoundRateMultiplier},
						{"NormalModeHazardRechargeUnderground",NormalModeHazardRechargeUnderground},
						{"HardModeHazardTimeMultiplier",HardModeHazardTimeMultiplier},
						{"HardModeHazardDamageRateMultiplier",HardModeHazardDamageRateMultiplier},
						{"HardModeHazardDamageWoundRateMultiplier",HardModeHazardDamageWoundRateMultiplier},
						{"HardModeHazardRechargeUnderground",HardModeHazardRechargeUnderground},
						{"ShieldRestoreSpeed",ShieldRestoreSpeed},
						{"ShieldRestoreDelay",ShieldRestoreDelay},
						{"LowHealthEffectPips",LowHealthEffectPips},
						{"LowHealthEffectShield",LowHealthEffectShield},
						{"CriticalHitTime",CriticalHitTime},
						{"CriticalHitDesatTime",CriticalHitDesatTime},
						{"CriticalHitDesatFreq",CriticalHitDesatFreq},
						{"WoundTimeMinimum",WoundTimeMinimum},
						{"WoundDamageLimit",WoundDamageLimit},
						{"WoundDamageLimitShip",WoundDamageLimitShip},
						{"WoundDamageDecayTime",WoundDamageDecayTime},
						{"ShieldRechargeMinTimeSinceDamage",ShieldRechargeMinTimeSinceDamage},
						{"ShieldRechargeRate",ShieldRechargeRate},
						{"TakeDamageImpulse",TakeDamageImpulse},
						{"StaminaRate",StaminaRate},
						{"StaminaRecoveryRate",StaminaRecoveryRate},
						{"StaminaRecoveredFactor",StaminaRecoveredFactor},
						{"PainFlickerAmount",PainFlickerAmount},
						{"PainColourSeperateAmount",PainColourSeperateAmount},
						{"PainTime",PainTime},
						{"DeathDamageDrainChargeFactor",DeathDamageDrainChargeFactor},
						{"DeathDamageTechBrokenPercent",DeathDamageTechBrokenPercent},
						{"HardLandPainTime",HardLandPainTime},
						{"HardLandTime",HardLandTime},
						{"HardLandMin",HardLandMin},
						{"HardLandMax",HardLandMax},
						{"RespawnOnPadRadius",RespawnOnPadRadius},
						{"GroundWalkForceMultiplier",GroundWalkForceMultiplier},
						{"GroundWalkBrake",GroundWalkBrake},
						{"GroundWalkSpeed",GroundWalkSpeed},
						{"GroundRunSpeed",GroundRunSpeed},
						{"GroundWalkRecoverySpeedDamper",GroundWalkRecoverySpeedDamper},
						{"HoldForce",HoldForce},
						{"HoldTime",HoldTime},
						{"HoldActionDistX",HoldActionDistX},
						{"HoldActionDistY",HoldActionDistY},
						{"HoldActionDistZ",HoldActionDistZ},
						{"HoldDistX",HoldDistX},
						{"HoldDistY",HoldDistY},
						{"HoldDistZ",HoldDistZ},
						{"HoldMaxForce",HoldMaxForce},
						{"HoldRotate",HoldRotate},
						{"BalanceStrength",BalanceStrength},
						{"BalanceSpeed",BalanceSpeed},
						{"ExertionSmoothTime",ExertionSmoothTime},
						{"ExertionFromPainTime",ExertionFromPainTime},
						{"AnimWalkSpeed",AnimWalkSpeed},
						{"AnimRunSpeed",AnimRunSpeed},
						{"AnimWalkToRunSpeed",AnimWalkToRunSpeed},
						{"AnimWalkBlendPoint",AnimWalkBlendPoint},
						{"AnimRunBlendPoint",AnimRunBlendPoint},
						{"MaxSlopeAngle",MaxSlopeAngle},
						{"SlopeSlidingSpeed",SlopeSlidingSpeed},
						{"SlopeSlideBrake",SlopeSlideBrake},
						{"MinSlideTime",MinSlideTime},
						{"MaxWalkableSlopeAngle",MaxWalkableSlopeAngle},
						{"MinSpidermanSlopeAngle",MinSpidermanSlopeAngle},
						{"MinTimeToHoldSpidermanPose",MinTimeToHoldSpidermanPose},
						{"MaxSpidermanSlopeAngle",MaxSpidermanSlopeAngle},
						{"MaxClingableSlopeAngle",MaxClingableSlopeAngle},
						{"MinimumPushOffForceToSlide",MinimumPushOffForceToSlide},
						{"ClimbableStickinessAngle",ClimbableStickinessAngle},
						{"MinUpAmount",MinUpAmount},
						{"FootOffset",FootOffset},
						{"MaxFallSpeed",MaxFallSpeed},
						{"PushForceDecay",PushForceDecay},
						{"LeanFwdMaxAngle",LeanFwdMaxAngle},
						{"LeanBackMaxAngle",LeanBackMaxAngle},
						{"LeanLeftMaxAngle",LeanLeftMaxAngle},
						{"LeanRightMaxAngle",LeanRightMaxAngle},
						{"LeanAmount",LeanAmount},
						{"LeanAmountFwd",LeanAmountFwd},
						{"FreeJetpackRange",FreeJetpackRange},
						{"FreeJetpackRangeNonTerrain",FreeJetpackRangeNonTerrain},
						{"JetpackDrainHorizontalFactor",JetpackDrainHorizontalFactor},	
						{"JetpackForce",JetpackForce},
						{"JetpackBrake",JetpackBrake},
						{"JetpackMinLevel",JetpackMinLevel},
						{"JetpackMaxSpeed",JetpackMaxSpeed},
						{"JetpackMaxUpSpeed",JetpackMaxUpSpeed},
						{"JetpackUpForce",JetpackUpForce},
						{"JetpackIgnitionForce",JetpackIgnitionForce},
						{"JetpackIgnitionTime",JetpackIgnitionTime},
						{"JetpackMinIgnitionTime",JetpackMinIgnitionTime},
						{"JetpackFillRate",JetpackFillRate},
						{"JetpackFillRateHardMode",JetpackFillRateHardMode},
						{"JetpackFillRateSpaceStationMultiplier",JetpackFillRateSpaceStationMultiplier},
						{"JetpackUpForceDeadPlanetExtra",JetpackUpForceDeadPlanetExtra},
						{"JetpackForceDeadPlanetExtra",JetpackForceDeadPlanetExtra},
						{"JetpackIgnitionForceDeadPlanetExtra",JetpackIgnitionForceDeadPlanetExtra},
						{"JetpackUnderwaterDrainRate",JetpackUnderwaterDrainRate},
						{"JetpackUnderwaterFillRate",JetpackUnderwaterFillRate},

						{"UnderwaterMargin",UnderwaterMargin},
						{"UnderwaterMinDepth",UnderwaterMinDepth},
						{"UnderwaterSurfaceTension",UnderwaterSurfaceTension},
						{"UnderwaterSurfaceTensionOffset",UnderwaterSurfaceTensionOffset},
						{"UnderwaterSurfaceForceFlattenAngleMin",UnderwaterSurfaceForceFlattenAngleMin},
						{"UnderwaterSurfaceForceFlattenAngleRange",UnderwaterSurfaceForceFlattenAngleRange},
						{"UnderwaterImpact",UnderwaterImpact},
						{"UnderwaterMaxSpeed",UnderwaterMaxSpeed},
						{"UnderwaterForce",UnderwaterForce},
						{"UnderwaterMaxJetpackSpeed",UnderwaterMaxJetpackSpeed},
						{"UnderwaterJetpackForce",UnderwaterJetpackForce},
						{"UnderwaterMaxJetpackEscapeSpeed",UnderwaterMaxJetpackEscapeSpeed},
						{"UnderwaterJetpackEscapeForce",UnderwaterJetpackEscapeForce},
						{"UnderwaterBrake",UnderwaterBrake},
						{"UnderwaterFloat",UnderwaterFloat},
						{"UnderwaterFloatForce",UnderwaterFloatForce},
						{"UnderwaterFloatRange",UnderwaterFloatRange},
						{"UnderwaterFloatFreq",UnderwaterFloatFreq},
						{"DeepWaterDepth",DeepWaterDepth},

						{"ShipSummonLastSafeMargin",ShipSummonLastSafeMargin},
						{"ShipPriceExp2",ShipPriceExp2},
						{"WeaponPriceExp2",WeaponPriceExp2},
						{"FreighterPriceExp2",FreighterPriceExp2},
						{"ShipCoolFactor",ShipCoolFactor},
						{"WeaponCoolFactor",WeaponCoolFactor},
						{"FreighterCoolFactor",FreighterCoolFactor},
						{"AutoLandRange",AutoLandRange},
						{"AutoLandTime",AutoLandTime},
						
						{"MeleeCooldown",MeleeCooldown},
						{"ChargeMeleeCooldown",ChargeMeleeCooldown},
						{"MeleeDistance",MeleeDistance},
						{"MeleeDistance3P",MeleeDistance3P},
						{"MeleeRadius",MeleeRadius},
						{"MeleeHitTime",MeleeHitTime},
						{"MeleeSpeedBoost",MeleeSpeedBoost},
						{"MeleeSpeedDamageBoost",MeleeSpeedDamageBoost},
						{"MeleeSpeedBoostRangeMultiplier",MeleeSpeedBoostRangeMultiplier},
						{"MeleeStaminaDrain",MeleeStaminaDrain},
						{"MeleeRange",MeleeRange},
						{"MeleeTime",MeleeTime},
						{"MeleeForcePush",MeleeForcePush},
						{"MeleeOffset",MeleeOffset},
						{"PushForceAirFactor",PushForceAirFactor},
						{"TargetDistance",TargetDistance},
						{"TargetRadius",TargetRadius},
						{"MinTimeAfterMeleeBeforeBoost",MinTimeAfterMeleeBeforeBoost},
						{"MaxTimeAfterMeleeBeforeBoost",MaxTimeAfterMeleeBeforeBoost},
						{"MeleeBoostAirForce",MeleeBoostAirForce},
						{"MeleeToAirBoostInitialImpulse",MeleeToAirBoostInitialImpulse},
						{"MaxTimeInMeleeBoost",MaxTimeInMeleeBoost},

						{"WeaponZoomEnabled",WeaponZoomEnabled},
						{"WeaponZoomFOV",WeaponZoomFOV},
						{"WeaponZoomRecoilMultiplier",WeaponZoomRecoilMultiplier},
						{"FrontShieldSpeedSlowdown",FrontShieldSpeedSlowdown},
						{"GrenadeBounceDamping",GrenadeBounceDamping},
						{"GrenadeBounceMaxSpeed",GrenadeBounceMaxSpeed},
						{"GrenadeStopExplodeTime",GrenadeStopExplodeTime},
						{"WeaponShotgunSlowdown",WeaponShotgunSlowdown},
						{"BulletCostReducer",BulletCostReducer},
						{"BulletClipMultiplier",BulletClipMultiplier},
						{"HeatShieldTime",HeatShieldTime},
						{"LaserShakeMin",LaserShakeMin},
						{"LaserShakeMax",LaserShakeMax},
						{"GunRecoil",GunRecoil},
						{"LaserRecoil",LaserRecoil},
						{"BeamRecoil",BeamRecoil},
						{"GrenadeRecoil",GrenadeRecoil},
						{"GunRecoilSpring",GunRecoilSpring},
						{"BlastRecoilSpring",BlastRecoilSpring},
						{"RailRecoilSpring",RailRecoilSpring},
						{"PulseRecoilSpring",PulseRecoilSpring},
						{"GunRecoilSettleSpring",GunRecoilSettleSpring},
						{"ThirdPersonRecoilMultiplier",ThirdPersonRecoilMultiplier},
						{"GunRecoilMin",GunRecoilMin},
						{"GunRecoilMax",GunRecoilMax},
						{"ProjectileDamageFalloff",ProjectileDamageFalloff},
						{"ShotgunDispersion",ShotgunDispersion},
						{"AutoAim",AutoAim},
						{"AutoAimMaxAccelFactor",AutoAimMaxAccelFactor},
						{"AutoAimFixedInterceptSpeed",AutoAimFixedInterceptSpeed},
						{"AutoAimTimeOut",AutoAimTimeOut},
						{"AutoAimMaxAngle",AutoAimMaxAngle},
						{"AutoAimMinScreenDistance",AutoAimMinScreenDistance},
						{"AutoAimRadiusExtra",AutoAimRadiusExtra},
						{"AutoAimStickyMin",AutoAimStickyMin},
						{"AutoAimStickyMax",AutoAimStickyMax},
						{"AimDistanceShip",AimDistanceShip},
						{"AimSpeed",AimSpeed},
						{"AimWeightAdd",AimWeightAdd},
						{"AimMinWeight",AimMinWeight},
						{"AimDecay",AimDecay},
						{"AimOffset",AimOffset},
						{"AimShootableTargetAngle",AimShootableTargetAngle},
						{"AimDisperseTime",AimDisperseTime},
						{"AimDisperseMinTime",AimDisperseMinTime},
						{"AimDisperseCooldownTime",AimDisperseCooldownTime},
						{"AimDisperseCooldownFactor",AimDisperseCooldownFactor},
						{"MaxProjectileRadiusMultiplier",MaxProjectileRadiusMultiplier},
						{"GunBaseClipSize",GunBaseClipSize},
						{"GrenadeBaseClipSize",GrenadeBaseClipSize},
						{"FullClipReloadSpeedMultiplier",FullClipReloadSpeedMultiplier},
						{"ReloadTapButtonSpeedIncrease",ReloadTapButtonSpeedIncrease},
						{"LaserWeaponRange",LaserWeaponRange},
						{"LaserShipRange",LaserShipRange},
						{"TerrainLaserRange",TerrainLaserRange},
						{"VehicleLaserRange",VehicleLaserRange},
						{"LaserBeamMineRate",LaserBeamMineRate},
						{"LaserBeamCore",LaserBeamCore},
						{"LaserBeamFlickerAmp",LaserBeamFlickerAmp},
						{"LaserBeamFlickerFreq",LaserBeamFlickerFreq},
						{"LaserEndOffset",LaserEndOffset},
						{"GrenadeTerrainDeformRadius",GrenadeTerrainDeformRadius},
						{"LaserBeamTerrainDeformRadius",LaserBeamTerrainDeformRadius},
						{"LaserBeamTerrainDeformVariance",LaserBeamTerrainDeformVariance},
						{"LaserBeamAmmoUseTime",LaserBeamAmmoUseTime},
						{"ReloadButtonHoldTimeToHolster",ReloadButtonHoldTimeToHolster},
						{"WeaponChangeModeTime",WeaponChangeModeTime},
						{"WeaponLowerDelay",WeaponLowerDelay},
						{"WeaponHolsterDelay",WeaponHolsterDelay},
						{"WeaponLag",WeaponLag},
						{"WeaponBobFactorWalkDeadZone",WeaponBobFactorWalkDeadZone},
						{"WeaponBobFactorWalk",WeaponBobFactorWalk},
						{"WeaponBobFactorRun",WeaponBobFactorRun},
						{"WeaponBobBlendTime",WeaponBobBlendTime},
						{"WeaponGrenadeTime",WeaponGrenadeTime},
						{"WeaponGunTime",WeaponGunTime},
						{"WeaponRailFireTime",WeaponRailFireTime},
						{"WeaponRailRechargeTime",WeaponRailRechargeTime},
						{"BulletBend",BulletBend},
						{"GrenadeCarveRadius",GrenadeCarveRadius},
						{"ChargeTime",ChargeTime},
						{"EnergyBallSpeed",EnergyBallSpeed},
						{"ChargedEnergyBallSpeed",ChargedEnergyBallSpeed},
						{"LookRayRadius",LookRayRadius},
						
						{"PickRange",PickRange},
						{"DamageRateWhenUnderNoGravity",DamageRateWhenUnderNoGravity},
						
						{"RobotMultiplierWithFriends",RobotMultiplierWithFriends},
						{"DroneStartLocationRadius",DroneStartLocationRadius},
						{"DroneScanTimeToForget",DroneScanTimeToForget},
						{"CombatSpawnMinWantedTime",CombatSpawnMinWantedTime},
						{"WalkerAlertRange",WalkerAlertRange},
						{"WalkerSightRange",WalkerSightRange},
						{"WalkerSightAngle",WalkerSightAngle},
						{"WalkerSightAngle",WalkerSightAngle},
						{"CombatEscapeRadius",CombatEscapeRadius},
						{"CombatEscapeTime",CombatEscapeTime},
						{"WantedDroneEventRadius",WantedDroneEventRadius},
						{"WantedMinSpaceTime",WantedMinSpaceTime},
						{"WantedMinPlanetTime",WantedMinPlanetTime},
						{"WantedLevelDelay",WantedLevelDelay},
						{"WantedWitnessTimer",WantedWitnessTimer},
						{"WantedWitnessFuzzyTime",WantedWitnessFuzzyTime},
						{"WantedMinorCrimeAmount",WantedMinorCrimeAmount},
						{"WantedTimeoutAggressive",WantedTimeoutAggressive},
						-- {"WantedTimeout1",WantedTimeout1},
						-- {"WantedTimeout2",WantedTimeout2},
						-- {"WantedTimeout3",WantedTimeout3},
						-- {"WantedTimeout4",WantedTimeout4},
						-- {"WantedTimeout5",WantedTimeout5},
						-- {"WantedEscalate1",WantedEscalate1},
						-- {"WantedEscalate2",WantedEscalate2},
						-- {"WantedEscalate3",WantedEscalate3},
						-- {"WantedEscalate4",WantedEscalate4},
						-- {"WantedEscalate5",WantedEscalate5},
						-- {"WantedExtEscalate1",WantedExtEscalate1},
						-- {"WantedExtEscalate2",WantedExtEscalate2},
						-- {"WantedExtEscalate3",WantedExtEscalate3},
						-- {"WantedExtEscalate4",WantedExtEscalate4},
						-- {"WantedExtEscalate5",WantedExtEscalate5},
						
						-- {"ExperienceHardPiratesDamagePotentialMin",ExperienceHardPiratesDamagePotentialMin},
						-- {"ExperienceHardPiratesDamagePotentialRange",ExperienceHardPiratesDamagePotentialRange},
						-- {"ExperienceHardPiratesDamageMaxOdds",ExperienceHardPiratesDamageMaxOdds},
						-- {"ExperienceMediumPiratesDamagePotentialMin",ExperienceMediumPiratesDamagePotentialMin},
						-- {"ExperienceMediumPiratesDamagePotentialRange",ExperienceMediumPiratesDamagePotentialRange},
						-- {"ExperienceMediumPiratesDamageMaxOdds",ExperienceMediumPiratesDamageMaxOdds},
						{"PirateHailPercent",PirateHailPercent},
						{"PirateBountyInitTime",PirateBountyInitTime},
						{"PirateProbeInitTime",PirateProbeInitTime},
						{"PirateProbeAttackWaitTime",PirateProbeAttackWaitTime},
						{"PirateProbeAttackWarnTime",PirateProbeAttackWarnTime},
						{"PirateProbeScanTime",PirateProbeScanTime},
						{"PirateProbeScanTotalTime",PirateProbeScanTotalTime},
						{"PirateProbeHailPause",PirateProbeHailPause},
						{"PirateBattleMarkerRange",PirateBattleMarkerRange},
						{"PirateBattleWarnTime",PirateBattleWarnTime},
						{"PirateBattleMarkerTime",PirateBattleMarkerTime},
						{"PirateBattleMaxTime",PirateBattleMaxTime},
						{"MaxNumShipsAttackingPlayer",MaxNumShipsAttackingPlayer},
					}
				},
			}
		}
	}
}
}}