Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter various player settings."
FileSource01 = "GCPLAYERGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
GroundWalkForceMultiplier = 24			-- Force applied while walking | 22 | 310
GroundWalkBrakeWhileMoving = 6.6		-- Brake force applied while in motion | 5.5 | 312
GroundWalkSpeed = 6.4					-- Walking speed | 4.4 | 313
GroundRunSpeed = 9.4					-- Running speed | 8 | 315
GroundWalkSpeedLowG = 3.2				-- Walking speed in low gravity | 1.6 | 316
GroundRunSpeedLowG = 5.2				-- Running speed in low gravity | 3.5 | 317

JetpackUnderwaterDrainRate = 0.2		-- Rate the jetpack drain underwater | 0.4 | 476
JetpackUnderwaterFillRate = 1.5			-- Rate the jetpack refills underwater | 1 | 476
UnderwaterMaxSpeed = 6					-- Swimming speed | 4 | 485
UnderwaterMaxJetpackSpeed = 10			-- Jetpack speed while underwater | 8 | 487
UnderwaterMaxJetpackEscapeSpeed = 12	-- Underwater exit speed while using jetpack | 8 | 489

HardModeEnergyDischargeRateLow = 0.04	-- Rate the suit energy is drained | 0.08 | 595
HardModeEnergyDischargeRateMedium = 0.4	-- '' | 0.8 | 596
HardModeEnergyDischargeRateHigh = 1.1	-- '' | 2.2 | 597
EnergyDischargeRateLow = 0.01			-- '' | 0.02 | 600
EnergyDischargeRateMedium = 0.125		-- '' | 0.25 | 601
EnergyDischargeRateHigh = 0.45			-- '' | 0.9 | 602
EnergyDischargeRateFloatingInSpace = 5	-- '' | 30 | 603

FreeJetpackRange = 30					--  | 3 | 642
FreeJetpackRangeNonTerrain = 30			--  | 1.1 | 644
JetpackDrainHorizontalFactor = 1.25		--  | 2.5 | 645

RocketBootsImpulse = 4					--  | 2.5 | 655
RocketBootsBoostForce = 75				--  | 68 | 656
RocketBootsDriftForce = 35				--  | 30 | 657
RocketBootsMinDesiredHeight = 4			--  | 2 | 660
RocketBootsMaxDesiredHeight = 12		--  | 6 | 661
RocketBootsHeightAdjustTime = 0.36		--  | 0.18 | 662
RocketBootsHeightAdjustUpStrength = 0.66	--  | 0.57 | 663
RocketBootsBoostTankDrainSpeed = 2		--  | 6 | 666

JetpackBrake = 6.6						--  | 2.2 | 678
JetpackMaxSpeed = 15					-- Jetpack speed | 5 | 680
JetpackIgnitionTime = 0.2				-- Time it takes to start the Jetpack | 0.4 | 684
JetpackTankTime01 = 16					--  | 4 | 687
JetpackTankTime02 = 24					--  | 6 | 688
JetpackTankTime03 = 36					--  | 8 | 689
JetpackFillRate = 1						-- Rate at which Jetpack refills | 0.5 | 691
JetpackFillRateHardMode = 0.5			-- Rate at which Jetpack refills on Survival | 0.2 | 692
JetpackFillRateMidair = 0.5				-- Rate at which Jetpack refills while in the air | 0.25 | 693
JetpackFillRateSpaceStationMultiplier = 10	-- Multiplier used on Jetpack refill rate while on Space Stations | 5 | 694
JetpackFillRateFleetMultiplier = 10		-- Multiplier used on Jetpack refill rate while on your Fleet | 5 | 695
JetpackIgnitionForceDeadPlanetExtra = 30	-- The initial force applied during Jetpack use while on Dead Planets | 45 | 699

SpaceJetpackMaxSpeed = 25				-- Jetpack speed while in Space | 10 | 705
SpaceJetpackDrainRate = 0.1				-- Rate the Jetpack drains while in Space | 0.3 | 706


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ ["PRECEDING_KEY_WORDS"] = "",
					["VALUE_CHANGE_TABLE"] = {
						{"GroundWalkForceMultiplier", GroundWalkForceMultiplier},  
						{"GroundWalkBrakeWhileMoving", GroundWalkBrakeWhileMoving}, 
						{"GroundWalkSpeed", GroundWalkSpeed}, 
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
						{"UnderwaterMaxSpeed", UnderwaterMaxSpeed}, 
						{"UnderwaterMaxSpeed", UnderwaterMaxSpeed}, 
						{"UnderwaterMaxSpeed", UnderwaterMaxSpeed}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = "", 
					["LINE_OFFSET"] = "+1",		--one line down from "JetpackTankTimes"
					["VALUE_CHANGE_TABLE"] = {
						{"JetpackTankTimes", JetpackTankTime01}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = "", 
					["LINE_OFFSET"] = "+2",		--two lines down from "JetpackTankTimes"
					["VALUE_CHANGE_TABLE"] = {
						{"JetpackTankTimes", JetpackTankTime02}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = "", 
					["LINE_OFFSET"] = "+3",		--three lines down from "JetpackTankTimes"
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