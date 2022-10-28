Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various player settings."
FileSource01 = "GCPLAYERGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
GroundWalkForceMultiplier = 24			-- Force applied while walking | 22 | 316
GroundWalkBrakeWhileMoving = 6.6		-- Brake force applied while in motion | 5.5 | 318
GroundWalkSpeed = 6.3					-- Walking speed | 4.4 | 319
GroundWalkSpeedTeleportHmd = 6.3		-- | 4.4 | 320
GroundRunSpeed = 9.3					-- Running speed | 8 | 321
GroundWalkSpeedLowG = 3.0				-- Walking speed in low gravity | 1.6 | 322
GroundRunSpeedLowG = 6.0				-- Running speed in low gravity | 3.5 | 323

JetpackUnderwaterDrainRate = 0.2		-- Rate the jetpack drain underwater | 0.4 | 482
JetpackUnderwaterFillRate = 1.5			-- Rate the jetpack refills underwater | 1 | 483
UnderwaterMaxSpeed = 6					-- Swimming speed | 4 | 491
UnderwaterMaxJetpackSpeed = 10			-- Jetpack speed while underwater | 8 | 493
UnderwaterMaxJetpackEscapeSpeed = 12	-- Underwater exit speed while using jetpack | 8 | 495

EnergyDischargeRateLow = 0.01			--  Rate the suit energy is drained | 0.02 | 604
EnergyDischargeRateMedium = 0.168		-- '' | 0.25 | 605
EnergyDischargeRateHigh = 0.6			-- '' | 0.9 | 606
EnergyDischargeRateFloatingInSpace = 5	-- '' | 30 | 607

FreeJetpackRange = 9					--  | 3 | 648
FreeJetpackRangePrime = 15				--  | 5 | 649
FreeJetpackRangeNonTerrain = 1.2		--  | 1.1 | 650
JetpackDrainHorizontalFactor = 1.25		--  | 2.5 | 651

RocketBootsImpulse = 4					--  | 3 | 661
RocketBootsBoostForce = 75				--  | 68 | 662
RocketBootsDriftForce = 35				--  | 30 | 663
RocketBootsMinDesiredHeight = 4			--  | 2 | 666
RocketBootsMaxDesiredHeight = 12		--  | 6 | 667
RocketBootsHeightAdjustTime = 0.36		--  | 0.18 | 668
RocketBootsHeightAdjustUpStrength = 0.66	--  | 0.57 | 669
RocketBootsBoostTankDrainSpeed = 2		--  | 6 | 672

JetpackBrake = 6.6						--  Jetpack brake | 2.2 | 687
JetpackMaxSpeed = 15					-- Jetpack maximum forward speed | 5 | 689
JetpackIgnitionTime = 0.2				-- Time it takes to start the Jetpack | 0.4 | 693
JetpackTankTime01 = 8					--  | 4 | 696
JetpackTankTime02 = 12					--  | 6 | 697
JetpackTankTime03 = 16					--  | 8 | 698
JetpackFillRate = 1						-- Rate at which Jetpack refills | 0.5 | 700
JetpackFillRateMidair = 0.5				-- Rate at which Jetpack refills while in the air | 0.25 | 701
JetpackFillRateSpaceStationMultiplier = 10	-- Multiplier used on Jetpack refill rate while on Space Stations | 5 | 702
JetpackFillRateFleetMultiplier = 10		-- Multiplier used on Jetpack refill rate while on your Fleet | 5 | 703
JetpackIgnitionForceDeadPlanetExtra = 30	-- The initial force applied during Jetpack use while on Dead Planets | 45 | 707

SpaceJetpackMaxSpeed = 30				-- Jetpack speed while in Space | 10 | 713
SpaceJetpackDrainRate = 0.1				-- Rate the Jetpack drains while in Space | 0.3 | 714

PirateFlybyAttackProbability= .25		-- | .5 | 814


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