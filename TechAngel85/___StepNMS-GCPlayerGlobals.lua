Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various player settings."
FileSource01 = "GCPLAYERGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
GroundWalkForceMultiplier = 24			-- Force applied while walking | 22 | 316
GroundWalkBrakeWhileMoving = 6.6		-- Brake force applied while in motion | 5.5 | 318
GroundWalkSpeed = 6.4					-- Walking speed | 4.4 | 319
GroundWalkSpeedTeleportHmd = 6.4		-- | 4.4 | 320
GroundRunSpeed = 9.4					-- Running speed | 8 | 321
GroundWalkSpeedLowG = 3.2				-- Walking speed in low gravity | 1.6 | 322
GroundRunSpeedLowG = 5.2				-- Running speed in low gravity | 3.5 | 323

JetpackUnderwaterDrainRate = 0.2		-- Rate the jetpack drain underwater | 0.4 | 482
JetpackUnderwaterFillRate = 1.5			-- Rate the jetpack refills underwater | 1 | 483
UnderwaterMaxSpeed = 6					-- Swimming speed | 4 | 491
UnderwaterMaxJetpackSpeed = 10			-- Jetpack speed while underwater | 8 | 493
UnderwaterMaxJetpackEscapeSpeed = 12	-- Underwater exit speed while using jetpack | 8 | 495

HardModeEnergyDischargeRateLow = 0.04	-- Rate the suit energy is drained | 0.08 | 602
HardModeEnergyDischargeRateMedium = 0.4	-- '' | 0.8 | 603
HardModeEnergyDischargeRateHigh = 1.1	-- '' | 2.2 | 604
EnergyDischargeRateLow = 0.01			-- '' | 0.02 | 607
EnergyDischargeRateMedium = 0.125		-- '' | 0.25 | 608
EnergyDischargeRateHigh = 0.45			-- '' | 0.9 | 609
EnergyDischargeRateFloatingInSpace = 5	-- '' | 30 | 610

FreeJetpackRange = 18					--  | 3 | 651
FreeJetpackRangePrime = 32					--  | 5 | 652
FreeJetpackRangeNonTerrain = 15			--  | 1.1 | 653
JetpackDrainHorizontalFactor = 1.25		--  | 2.5 | 654

RocketBootsImpulse = 4					--  | 3 | 664
RocketBootsBoostForce = 75				--  | 68 | 665
RocketBootsDriftForce = 35				--  | 30 | 666
RocketBootsMinDesiredHeight = 4			--  | 2 | 669
RocketBootsMaxDesiredHeight = 12		--  | 6 | 670
RocketBootsHeightAdjustTime = 0.36		--  | 0.18 | 671
RocketBootsHeightAdjustUpStrength = 0.66	--  | 0.57 | 672
RocketBootsBoostTankDrainSpeed = 2		--  | 6 | 675

JetpackBrake = 6.6						--  Jetpack brake | 2.2 | 690
JetpackMaxSpeed = 15					-- Jetpack maximum forward speed | 5 | 692
JetpackIgnitionTime = 0.2				-- Time it takes to start the Jetpack | 0.4 | 696
JetpackTankTime01 = 12					--  | 4 | 699
JetpackTankTime02 = 18					--  | 6 | 700
JetpackTankTime03 = 24					--  | 8 | 701
JetpackFillRate = 1						-- Rate at which Jetpack refills | 0.5 | 703
JetpackFillRateHardMode = 0.5			-- Rate at which Jetpack refills on Survival | 0.2 | 704
JetpackFillRateMidair = 0.5				-- Rate at which Jetpack refills while in the air | 0.25 | 705
JetpackFillRateSpaceStationMultiplier = 10	-- Multiplier used on Jetpack refill rate while on Space Stations | 5 | 706
JetpackFillRateFleetMultiplier = 10		-- Multiplier used on Jetpack refill rate while on your Fleet | 5 | 707
JetpackIgnitionForceDeadPlanetExtra = 30	-- The initial force applied during Jetpack use while on Dead Planets | 45 | 711

SpaceJetpackMaxSpeed = 30				-- Jetpack speed while in Space | 10 | 717
SpaceJetpackDrainRate = 0.1				-- Rate the Jetpack drains while in Space | 0.3 | 718

PirateFlybyAttackProbability= .25		-- | .5 | 819


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ 	["PRECEDING_KEY_WORDS"] = "",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"GroundWalkForceMultiplier", GroundWalkForceMultiplier},  
						{"GroundWalkBrakeWhileMoving", GroundWalkBrakeWhileMoving}, 
						{"GroundWalkSpeed", GroundWalkSpeed}, 
						{"GroundWalkSpeedTeleportHmd", GroundWalkSpeedTeleportHmd}, 
						{"GroundRunSpeed", GroundRunSpeed}, 
						{"GroundWalkSpeedLowG", GroundWalkSpeedLowG}, 
						{"GroundRunSpeedLowG", GroundRunSpeedLowG}, 
						{"JetpackUnderwaterDrainRate", JetpackUnderwaterDrainRate}, 
						{"JetpackUnderwaterFillRate", JetpackUnderwaterFillRate}, 
						{"UnderwaterMaxSpeed", UnderwaterMaxSpeed}, 
						{"UnderwaterMaxJetpackSpeed", UnderwaterMaxJetpackSpeed}, 
						{"UnderwaterMaxJetpackEscapeSpeed", UnderwaterMaxJetpackEscapeSpeed}, 
						{"HardModeEnergyDischargeRateLow", HardModeEnergyDischargeRateLow}, 
						{"HardModeEnergyDischargeRateMedium", HardModeEnergyDischargeRateMedium}, 
						{"HardModeEnergyDischargeRateHigh", HardModeEnergyDischargeRateHigh}, 
						{"EnergyDischargeRateLow", EnergyDischargeRateLow}, 
						{"EnergyDischargeRateMedium", EnergyDischargeRateMedium}, 
						{"EnergyDischargeRateHigh", EnergyDischargeRateHigh}, 
						{"EnergyDischargeRateFloatingInSpace", EnergyDischargeRateFloatingInSpace}, 
						{"FreeJetpackRange", FreeJetpackRange}, 
						{"FreeJetpackRangePrime", FreeJetpackRangePrime}, 
						{"FreeJetpackRangeNonTerrain", FreeJetpackRangeNonTerrain}, 
						{"JetpackDrainHorizontalFactor", JetpackDrainHorizontalFactor}, 
						{"RocketBootsImpulse", RocketBootsImpulse}, 
						{"RocketBootsBoostForce", RocketBootsBoostForce}, 
						{"RocketBootsDriftForce", RocketBootsDriftForce}, 
						{"RocketBootsMinDesiredHeight", RocketBootsMinDesiredHeight}, 
						{"RocketBootsMaxDesiredHeight", RocketBootsMaxDesiredHeight}, 
						{"RocketBootsHeightAdjustTime", RocketBootsHeightAdjustTime}, 
						{"RocketBootsHeightAdjustUpStrength", RocketBootsHeightAdjustUpStrength}, 
						{"RocketBootsBoostTankDrainSpeed", RocketBootsBoostTankDrainSpeed}, 
						{"JetpackBrake", JetpackBrake}, 
						{"JetpackMaxSpeed", JetpackMaxSpeed}, 
						{"JetpackIgnitionTime", JetpackIgnitionTime}, 
						{"JetpackFillRate", JetpackFillRate}, 
						{"JetpackFillRateHardMode", JetpackFillRateHardMode}, 
						{"JetpackFillRateMidair", JetpackFillRateMidair}, 
						{"JetpackFillRateSpaceStationMultiplier", JetpackFillRateSpaceStationMultiplier}, 
						{"JetpackFillRateFleetMultiplier", JetpackFillRateFleetMultiplier}, 
						{"JetpackIgnitionForceDeadPlanetExtra", JetpackIgnitionForceDeadPlanetExtra}, 
						{"SpaceJetpackMaxSpeed", SpaceJetpackMaxSpeed}, 
						{"SpaceJetpackDrainRate", SpaceJetpackDrainRate}, 
						{"PirateFlybyAttackProbability", PirateFlybyAttackProbability}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = "", 
					["LINE_OFFSET"] = "+1",		--one line down from "JetpackTankTimes"
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"JetpackTankTimes", JetpackTankTime01}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = "", 
					["LINE_OFFSET"] = "+2",		--two lines down from "JetpackTankTimes"
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"JetpackTankTimes", JetpackTankTime02}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = "", 
					["LINE_OFFSET"] = "+3",		--three lines down from "JetpackTankTimes"
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"JetpackTankTimes", JetpackTankTime03}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE