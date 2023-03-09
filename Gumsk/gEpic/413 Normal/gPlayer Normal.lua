Author = "Gumsk"
ModName = "gPlayer"
ModNameSub = "Normal"
BaseDescription = "Large power increases in player globals"
GameVersion = "411"
ModVersion = "a"
FileSource = "GCPLAYERGLOBALS.GLOBAL.MBIN"
  
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
						{"BinocularRangePlanet",2000},				--1000
						{"BinocularRangeSpace",20000},				--10000
						{"PlayerTransferRange",200},				--20
						{"PlayerSpaceTransferRange",4000},			--2000
						-- {"CommunicatorSpeed",20},					--30
						-- {"LuckyWithTech","True"},					--False
						-- {"LaserMiningDamageMultiplier",2},			--1
						{"InteractionScanRange",150},				--80
						{"InteractionButtonRange",15},				--10
						{"InteractionSubstanceRange",100},			--40
						{"MaxBuildHeight",512},						--64
						{"OtherPlayerTrackArrowRange",2000},		--100
						-- {"DefaultHitPoints",100},					--60
						-- {"DefaultHealthPips",5},					--3
						-- {"DefaultShipHealthPips",10},				--6
						-- {"MaxHealthPips",20},						--9
						{"UseLargeHealthBar","False"},				--True
						-- {"HealthRechargeMinTimeSinceDamage",1},		--10
						-- {"HealthPipRechargeRate",100},				--200
						-- {"EnergyDischargeRateLow",0.01},			--0.02
						-- {"EnergyDischargeRateMedium",0.1},			--0.25
						-- {"EnergyDischargeRateHigh",0.5},			--0.9
						{"EnergyDischargeRateFloatingInSpace",0},	--30
						-- {"ShieldRestoreSpeed",1.0},					--0.2
						-- {"ShieldRestoreDelay",5},					--10
						-- {"ShieldRechargeMinTimeSinceDamage",10},	--30
						-- {"ShieldRechargeRate",30},					--10
						-- {"DeathDamageTechBrokenPercent",8},			--40
						{"HardLandMax",150},						--18
						{"GroundWalkSpeed",6},						--4.4
						{"GroundRunSpeed",11},						--8
						-- {"AnimWalkSpeed",2},						--1.5
						-- {"AnimRunSpeed",6},							--4
						{"MaxFallSpeed",50},						--30
						-- {"FreeJetpackRange",7},						--3
						-- {"FreeJetpackRangeNonTerrain",2},			--1.1
						-- {"JetpackDrainHorizontalFactor",3},			--2.5
						{"JetpackForce",80},						--31 ; lateral force added when pressing in a direction. Existing force remains until direction is released
						--{"JetpackBrake",2.2},						--2.2
						{"JetpackMinLevel",0.1},					--0.5 ; ?How flat does the ground need to be to ignite jetpack? At 99, couldn't ignite in most places
						{"JetpackMaxSpeed",35},						--5 ; Lateral speed adjustments while airborne, whether using jetpack or not
						{"JetpackMaxUpSpeed",60},					--30
						{"JetpackUpForce",80},						--30 ; Needs to be above about 20 to overcome standard gravity
						{"JetpackIgnitionForce",80},				--60 ; Initial force applied before JetpackIgnitionTime
						{"JetpackIgnitionTime",9999},				--0.4 ; How many seconds until transition from JetpackIgnitionForce to JetpackForce and JetpackUpForce
						{"JetpackMinIgnitionTime",0.1},				--0.2 ; How quickly after igniting the jetpack FROM A SURFACE will jetpack thrust stop?
						-- {"JetpackFillRate",1},						--0.5
						{"JetpackUpForceDeadPlanetExtra",20},		--10
						{"JetpackForceDeadPlanetExtra",30},			--15
						{"JetpackIgnitionForceDeadPlanetExtra",60},	--45
						-- SpaceJetpackForce = 40								--40
						-- SpaceJetpackUpForce = 30								--30
						-- SpaceJetpackIgnitionForce = 15						--15
						-- SpaceJetpackMaxSpeed = 10							--10
						-- SpaceJetpackDrainRate = 0.3							--0.3
						-- RocketBootsEnabled = "True"							--True
						-- RocketBootsUseCustomCamera = "False"					--False
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
						-- RocketBootsHeightAdjustUpStrength = 0.57				--0.57
						-- RocketBootsHeightAdjustDownStrength = 0.3			--0.3
						-- RocketBootsJetpackMinLevel = 1						--1
						-- RocketBootsBoostTankDrainSpeed = 6					--6
						-- RocketBootsDriftTankDrainSpeed = 1					--1
						-- RocketBootsBoostOnTime = 0.2							--0.2
						-- RocketBootsBoostOffTime = 0.2						--0.2
						-- RocketBootsZigZagStrength = 0						--0
						-- RocketBootsZigZagForceDuration = 0.4					--0.4
						-- RocketBootsMaxSpeed = 20								--20
						-- RocketBootsDriftEndTime = 2							--2
						-- RocketBootsWindUpBraking = 0.9						--0.9
						-- RocketBootsDriftBraking = 0.6						--0.6
						-- RocketBootsDriftDownwardForce = 0.5					--0.5
						{"JetpackUnderwaterDrainRate",0.3},			--0.4
						{"JetpackUnderwaterFillRate",2},			--1
						{"UnderwaterMaxSpeed",6},					--4
						{"UnderwaterForce",25},						--15
						{"UnderwaterMaxJetpackSpeed",25},			--8
						{"UnderwaterJetpackForce",50},				--25
						{"AutoLandRange",150},						--100
						-- {"AutoLandTime",1},							--2
						-- {"MeleeCooldown",0.3},						--0.62
						-- {"ChargeMeleeCooldown",0.7},				--1.3
						-- {"MeleeDistance",4},						--2.8
						-- {"MeleeDistance3P",3.5},					--1.8
						-- {"MeleeRadius",0.75},						--0.75
						-- {"MeleeHitTime",0.2},						--0.2
						-- {"MeleeSpeedBoost",8},						--1
						-- {"MeleeSpeedDamageBoost",4.0},				--1.2
						-- {"MeleeSpeedBoostRangeMultiplier",4.0},		--1.2
						-- {"MeleeStaminaDrain",0.05},					--0.2
						-- {"MeleeRange",15},							--8
						-- {"MeleeTime",0.4},							--0.8
						{"MinTimeAfterMeleeBeforeBoost",0.04},		--0.05
						{"MaxTimeAfterMeleeBeforeBoost",0.6},		--0.5
						{"MeleeBoostAirForce",7},					--3
						{"MeleeToAirBoostInitialImpulse",10},		--5
						{"MaxTimeInMeleeBoost",2},					--1.4
						-- {"WeaponZoomRecoilMultiplier",1.5},			--2
						-- {"FrontShieldSpeedSlowdown",0.7},			--0.5
						-- {"WeaponShotgunSlowdown",0.8},				--0.7
						-- {"BulletCostReducer",3},					--2
						-- {"BulletClipMultiplier",3},					--2
						-- {"LaserShakeMin",0.4},						--0.5
						-- {"LaserShakeMax",1.0},						--2.0
						-- {"GunRecoil",3.5},							--5
						-- {"LaserRecoil",.01},						--2
						-- {"BeamRecoil",4},							--6
						-- {"GrenadeRecoil",6},						--10
						-- {"ThirdPersonRecoilMultiplier",1.2},		--1.5
						-- {"GunRecoilMin",0.1},						--0.15
						-- {"GunRecoilMax",1.0},						--1.6
						-- {"AutoAim","True"},							--False
						-- {"AutoAimMaxAccelFactor",0.8},
						-- {"AutoAimFixedInterceptSpeed",200},
						-- {"AutoAimTimeOut",0.5},
						-- {"AutoAimMaxAngle",25},
						-- {"AutoAimMinScreenDistance",20},
						-- {"AutoAimRadiusExtra",2},
						-- {"AutoAimStickyMin",1},
						-- {"AutoAimStickyMax",0.25},
						-- {"AimDistanceShip",3000},
						-- {"GunBaseClipSize",20},						--10
						-- {"GrenadeBaseClipSize",200},				--100
						-- {"LaserWeaponRange",150},					--100
						-- {"LaserShipRange",1500},					--1000
						{"TerrainLaserRange",150},					--100
						{"VehicleLaserRange",300},					--200
						-- {"LaserBeamMineRate",0.5},					--0.3
						-- {"GrenadeTerrainDeformRadius",4},
						-- {"LaserBeamTerrainDeformRadius",2},
						-- {"LaserBeamTerrainDeformVariance",0.4},
						-- {"GrenadeCarveRadius",5},
						-- {"ChargeTime",0.3},							--0.4
						-- {"EnergyBallSpeed",300},					--200
						-- {"ChargedEnergyBallSpeed",150},				--75
						{"DamageRateWhenUnderNoGravity",0.1},		--10
					}
				},
			}
		}
	}
}
}}