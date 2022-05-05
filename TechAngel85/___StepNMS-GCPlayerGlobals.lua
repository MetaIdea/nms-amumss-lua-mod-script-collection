Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter various player settings."
FileSource01 = "GCPLAYERGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
GroundWalkForceMultiplier = 24			-- Force applied while walking | 22 | 313
GroundWalkBrakeWhileMoving = 6.6		-- Brake force applied while in motion | 5.5 | 315
GroundWalkSpeed = 6.4					-- Walking speed | 4.4 | 316
GroundRunSpeed = 9.4					-- Running speed | 8 | 318
GroundWalkSpeedLowG = 3.2				-- Walking speed in low gravity | 1.6 | 319
GroundRunSpeedLowG = 5.2				-- Running speed in low gravity | 3.5 | 320

JetpackUnderwaterDrainRate = 0.2		-- Rate the jetpack drain underwater | 0.4 | 479
JetpackUnderwaterFillRate = 1.5			-- Rate the jetpack refills underwater | 1 | 480
UnderwaterMaxSpeed = 6					-- Swimming speed | 4 | 488
UnderwaterMaxJetpackSpeed = 10			-- Jetpack speed while underwater | 8 | 490
UnderwaterMaxJetpackEscapeSpeed = 12	-- Underwater exit speed while using jetpack | 8 | 492

HardModeEnergyDischargeRateLow = 0.04	-- Rate the suit energy is drained | 0.08 | 601
HardModeEnergyDischargeRateMedium = 0.4	-- '' | 0.8 | 602
HardModeEnergyDischargeRateHigh = 1.1	-- '' | 2.2 | 603
EnergyDischargeRateLow = 0.01			-- '' | 0.02 | 606
EnergyDischargeRateMedium = 0.125		-- '' | 0.25 | 607
EnergyDischargeRateHigh = 0.45			-- '' | 0.9 | 608
EnergyDischargeRateFloatingInSpace = 5	-- '' | 30 | 609

FreeJetpackRange = 20					--  | 3 | 650
FreeJetpackRangePrime = 40					--  | 5 | 651
FreeJetpackRangeNonTerrain = 20			--  | 1.1 | 652
JetpackDrainHorizontalFactor = 1.25		--  | 2.5 | 653

RocketBootsImpulse = 4					--  | 3 | 663
RocketBootsBoostForce = 75				--  | 68 | 664
RocketBootsDriftForce = 35				--  | 30 | 665
RocketBootsMinDesiredHeight = 4			--  | 2 | 668
RocketBootsMaxDesiredHeight = 12		--  | 6 | 669
RocketBootsHeightAdjustTime = 0.36		--  | 0.18 | 670
RocketBootsHeightAdjustUpStrength = 0.66	--  | 0.57 | 671
RocketBootsBoostTankDrainSpeed = 2		--  | 6 | 674

JetpackBrake = 6.6						--  | 2.2 | 688
JetpackMaxSpeed = 15					-- Jetpack speed | 5 | 691
JetpackIgnitionTime = 0.2				-- Time it takes to start the Jetpack | 0.4 | 695
JetpackTankTime01 = 12					--  | 4 | 698
JetpackTankTime02 = 18					--  | 6 | 699
JetpackTankTime03 = 24					--  | 8 | 700
JetpackFillRate = 1						-- Rate at which Jetpack refills | 0.5 | 702
JetpackFillRateHardMode = 0.5			-- Rate at which Jetpack refills on Survival | 0.2 | 703
JetpackFillRateMidair = 0.5				-- Rate at which Jetpack refills while in the air | 0.25 | 704
JetpackFillRateSpaceStationMultiplier = 10	-- Multiplier used on Jetpack refill rate while on Space Stations | 5 | 705
JetpackFillRateFleetMultiplier = 10		-- Multiplier used on Jetpack refill rate while on your Fleet | 5 | 706
JetpackIgnitionForceDeadPlanetExtra = 30	-- The initial force applied during Jetpack use while on Dead Planets | 45 | 710

SpaceJetpackMaxSpeed = 25				-- Jetpack speed while in Space | 10 | 716
SpaceJetpackDrainRate = 0.1				-- Rate the Jetpack drains while in Space | 0.3 | 717


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