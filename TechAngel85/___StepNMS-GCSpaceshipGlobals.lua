Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with Spaceships."
FileSource01 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step / Miscellaneous ##
LandingHoverOffset = 1.5				--  | 3 | 14
LandingMargin = 0.7						-- The size of the area that must be considered "cleared" of object to allow for landing | 1.4 | 17
LandingObstacleMinHeight = 2.5			-- The minimum height of objects that obstruct landing | 2 | 18

--Launch Cost Reduction
LaunchThrustersMinimumSummonPercentage = 10		-- Minimum fuel cost for summoning ship | 25 |1443

--HoverTakeoffHeight = 90					-- Initial height upon ship takeoff | 90 | 340
HoverSpeedFactor = 0.001				-- Speed at which ship hovers | 20 | 345
HoverMinSpeed = 0.001					-- Minimum speed at which ship will hover | 1 | 347
LandingPushNoseUpFactor = 0.05			-- Angle the ship nose will point upwards during landing | 0.15 | 371
GroundHeightBrakeMultiplier = 1.8		-- | 1.2 | 386

NoBoostAnomalyDistance = 1500			-- Distance from Anomaly that boost is disabled | 3000 | 983

MiniWarpLinesSpacing = 12000			-- Spacing between the vertical metric lines during warp | 3000 | 1105

FreighterApproachSpeedDamper = 1		-- The amount of speed dampener applied when approaching Freighters | 0.5 | 1202
MiniWarpShakeStrength = 1				-- The strength of the shake during warp | 2 | 1204
MiniWarpSpeed = 45000					-- Speed at which ship travels during warp | 30000 | 1210
MiniWarpTopSpeedTime = 0.25				-- Time it takes to reach top warp speed | 0.1 | 1211
MiniWarpExitTime = 0.25 				-- Time it take to exit warp | 0.5 | 1221
MiniWarpHUDArrowAttractAngle = 5		-- The sensitivity the mouse will auto-hover over marker icons | 10  | 1222
MiniWarpHUDArrowAttractAngleDense = 3	-- The sensitivity the mouse will auto-hover over marker icons when the icons are considered densely packed | 4 | 1226
MiniWarpHUDArrowNumMarkersToBeDense = 4	-- The number of icons that are close together to be considered densely packed, at which time the sensitivity will change to "MiniWarpHUDArrowAttractAngleDense" | 6 | 1227
MiniWarpNoAsteroidRadius = 3000			-- The distance asteroids will be while in warp | 1500 | 1234
AnomalyStationMaxApproachSpeed = 200	-- The max speed allow during docking approach to the Anomaly | 60 | 1255

--## Step / Ship Controls ##
ShipPlanetBrakeAlignMaxTime = 4			-- Replaces all instances of this value | 8 | 495...

-- Control/SpaceEngine
ControlSEThrustForce = 60				-- Amount of force the thruster has | 40 | 417
ControlSEMaxSpeed = 540					-- Max speed the ship will travel | 180 | 418
ControlSEMinSpeed = 0					-- Minimum allowed speed for the ship | 1 | 419
ControlSEFalloff = 0.5					-- The amount of speed the ship will automatically loose during coasting | 0.7 | 420
ControlSEBoostMaxSpeed = 2700			-- The max speed the ship will travel during boosting | 1200 | 
ControlSEBoostFalloff = 0.5				-- The amount of speed the ship will automatically loose during coasting | 0.7 | 
ControlSEBoostingTurnDamp = 0.2			-- The amount of speed the ship will automatically loose during turning | 0.1 | 
ControlSEDirectionBrakeMin = 1.2		-- The minimum amount of directional brake applied | 1 | 
ControlSEDirectionBrake = 1.7			-- The amount of normal directional brake applied | 1.5 | 
ControlSEReverseBrake = 1				-- The amount of reverse brake applied | 0.5 | 
ControlSEOverspeedBrake = 6				-- The amount of brake applied when over the max speed | 3 | 
ControlSETurnBrakeMax = 3				-- The max amount of brake applied while turning | 2 | 432
ControlSETurnStrength = 5				-- The strength of the turning brake | 1 | 
ControlSERollAutoTime = 1				-- The length of time it takes for an auto-roll correction event to occur | 2 | 436

-- Control/PlanetEngine
ControlPEThrustForce = 30				--  | 20| 448
ControlPEMaxSpeed = 250					--  | 125 |
ControlPEMinSpeed = 0.001				--  | 20 | 
ControlPEFalloff = 0.25					--  | 0.5 | 
ControlPEBoostMaxSpeed = 375			--  | 155 | 
ControlPEBoostFalloff = 0.5				--  | 0.7 | 
ControlPEDirectionBrakeMin = 1.3		--  | 1 | 
ControlPEDirectionBrake = 1.8			--  | 1.5 | 
ControlPEReverseBrake = 1.5				--  | 1 | 
ControlPETurnBrakeMin = 3				-- The minimum amount of brake applied while turning | 2 | 
ControlPETurnBrakeMax = 4				--  | 3 | 
ControlPETurnStrength = 5				--  | 1 | 
ControlPERollAutoTime = 0.25			--  | 0.5 | 
ControlPEBalanceTimeMin = 0.3			--  | 0.6 | 
ControlPEBalanceTimeMax = 0.85			--  | 0.7 | 

-- Control/CombatEngine
ControlCEMaxSpeed = 160					--  | 80 | 480
ControlCETurnStrength = 4				--  | 1.3 | 
ControlCERollAutoTime = 1				--  | 2 | 

-- ControlLight/SpaceEngine
ControlLTSEThrustForce = 90				--  | 80 | 566
ControlLTSEMaxSpeed = 7200				--  | 180 | 
ControlLTSEMinSpeed = 0					--  | 1 | 
ControlLTSEFalloff = 0.4				--  | 0.7 | 
ControlLTSEBoostMaxSpeed = 3600			--  | 1300 | 
ControlLTSEBoostFalloff = 0.4			--  | 0.7 | 
ControlLTSEBoostingTurnDamp = 0.15		--  | 0.1 | 
ControlLTSEDirectionBrakeMin = 1		--  | 0.8 | 
ControlLTSEDirectionBrake = 1.5			--  | 1.2 | 
ControlLTSEReverseBrake = 1.2			--  | 0.5 | 
ControlLTSEOverspeedBrake = 6			--  | 3 | 
ControlLTSETurnBrakeMin = 2				--  | 1 | 
ControlLTSETurnBrakeMax = 4				--  | 3 | 
ControlLTSETurnStrength = 6				--  | 1.1 | 
ControlLTSERollAutoTime = 1				--  | 2 | 

-- ControlLight/PlanetEngine
ControlLTPEThrustForce = 45				--  | 40| 597
ControlLTPEMaxSpeed = 375				--  | 125 | 
ControlLTPEMinSpeed = 0.001				--  | 20 | 
ControlLTPEFalloff = 0.25				--  | 0.5 |
ControlLTPEBoostMaxSpeed = 750			--  | 150 | 
ControlLTPEBoostFalloff = 0.25			--  | 0.7 | 
ControlLTPEDirectionBrakeMin = 1.1		--  | 0.75 | 
ControlLTPEDirectionBrake = 1.6			--  | 1.15 | 
ControlLTPEReverseBrake = 1.7			--  | 1 | 
ControlLTPETurnBrakeMin = 4				--  | 3 | 
ControlLTPETurnBrakeMax = 5				--  | 4 | 
ControlLTPETurnStrength = 6				--  | 1.65 | 
ControlLTPERollAutoTime = 0.25			--  | 0.5 | 
ControlLTPEBalanceTimeMin = 0.3			--  | 0.6 | 
ControlLTPEBalanceTimeMax = 0.85		--  | 1.7 | 

-- ControlLight/CombatEngine
ControlLTCEMaxSpeed = 160				--  | 80 | 628
ControlLTCEBoostFalloff = 0.3			--  | 0.7 | 
ControlLTCETurnStrength = 3				--  | 1.5 | 
ControlLTCERollAutoTime = 1				--  | 2 | 

-- ControlHeavy/SpaceEngine
ControlHVYSEThrustForce = 45			--  | 40 | 715
ControlHVYSEMaxSpeed = 360				--  | 180 | 
ControlHVYSEMinSpeed = 0				--  | 1 | 
ControlHVYSEFalloff = 0.5				--  | 0.7 |
ControlHVYSEBoostMaxSpeed = 1800		--  | 1100 | 
ControlHVYSEBoostFalloff = 0.5			--  | 0.7 | 
ControlHVYSEBoostingTurnDamp = 0.25		--  | 0.1 | 
ControlHVYSEDirectionBrakeMin = 1.4		--  | 1 | 
ControlHVYSEDirectionBrake = 1.9		--  | 1.5 | 
ControlHVYSEReverseBrake = 0.8			--  | 0.5 | 
ControlHVYSEOverspeedBrake = 6			--  | 3 | 
ControlHVYSETurnBrakeMax = 2			--  | 3 | 
ControlHVYSETurnStrength = 4			--  | 0.6 | 
ControlHVYSERollAutoTime = 1			--  | 2 | 

-- ControlHeavy/PlanetEngine
ControlHVYPEThrustForce = 45			--  | 20| 746
ControlHVYPEMaxSpeed = 200				--  | 130 | 
ControlHVYPEMinSpeed = 0.001			--  | 20 | 
ControlHVYPEFalloff = 0.5				--  | 0.5 | 
ControlHVYPEBoostThrustForce = 40		--  | 20 | 
ControlHVYPEBoostMaxSpeed = 275			--  | 185 | 
ControlHVYPEBoostFalloff = 0.5			--  | 0.7 | 
ControlHVYPEBoostingTurnDamp = 0.2		--  | 0.15 | 
ControlHVYPEDirectionBrakeMin = 1.5		--  | 0.35 | 
ControlHVYPEDirectionBrake = 2			--  | 0.8 | 
ControlHVYPEReverseBrake = 1.3			--  | 1 | 
ControlHVYPETurnBrakeMin = 2			--  | 1 | 
ControlHVYPETurnBrakeMax = 3			--  | 2 | 
ControlHVYPETurnStrength = 4			--  | 0.7 | 
ControlHVYPERollAutoTime = 0.25			--  | 0.5 | 
ControlHVYPEBalanceTimeMin = 0.3		--  | 0.65 | 
ControlHVYPEBalanceTimeMax = 0.85		--  | 1.75 | 

-- ControlHeavy/CombatEngine
ControlHVYCEMaxSpeed = 160				--  | 80 | 777
ControlHVYCEBoostFalloff = 0.5			--  | 0.7 | 
ControlHVYCETurnStrength = 2			--  | 1 | 
ControlHVYCERollAutoTime = 1			--  | 2 | 


--## Better Landings ##
GroundNearEffectLightFactor = 0.5		--  | 0.8 |130
LandingCurveHeavyCurve = "SlowOut"		-- The curve model used for how heavy-class ships land/take off | ReallySlowOut | 412


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
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
--## Step ##
						{"LandingHoverOffset", LandingHoverOffset},
						{"LandingMargin", LandingMargin},
						{"LandingObstacleMinHeight", LandingObstacleMinHeight},
						{"HoverSpeedFactor", HoverSpeedFactor}, 
						{"HoverMinSpeed", HoverMinSpeed}, 
						{"LandingPushNoseUpFactor", LandingPushNoseUpFactor}, 
						{"GroundHeightBrakeMultiplier", GroundHeightBrakeMultiplier}, 
						{"NoBoostAnomalyDistance", NoBoostAnomalyDistance}, 
						{"MiniWarpLinesSpacing", MiniWarpLinesSpacing}, 
						{"FreighterApproachSpeedDamper", FreighterApproachSpeedDamper}, 
						{"MiniWarpShakeStrength", MiniWarpShakeStrength}, 
						{"MiniWarpSpeed", MiniWarpSpeed}, 
						{"MiniWarpTopSpeedTime", MiniWarpTopSpeedTime}, 
						{"MiniWarpExitTime", MiniWarpExitTime}, 
						{"MiniWarpHUDArrowAttractAngle", MiniWarpHUDArrowAttractAngle}, 
						{"MiniWarpHUDArrowAttractAngleDense", MiniWarpHUDArrowAttractAngleDense}, 
						{"MiniWarpHUDArrowNumMarkersToBeDense", MiniWarpHUDArrowNumMarkersToBeDense}, 
						{"MiniWarpNoAsteroidRadius", MiniWarpNoAsteroidRadius}, 
						{"AnomalyStationMaxApproachSpeed", AnomalyStationMaxApproachSpeed}, 
						{"LaunchThrustersMinimumSummonPercentage", LaunchThrustersMinimumSummonPercentage}, 
--
--##### Everything after here is from Better Landings mod #####
--
						{"GroundNearEffectLightFactor", GroundNearEffectLightFactor}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LandingCurveHeavy",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Curve", LandingCurveHeavyCurve}, 
					}
				},
--
--##### Everything after here is from Step and alters the ship controls #####
--
--## Normal-class ship contols ##
				{["PRECEDING_KEY_WORDS"] = {"",},
					["REPLACE_TYPE"] = "ALL",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ShipPlanetBrakeAlignMaxTime", ShipPlanetBrakeAlignMaxTime}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", ControlSEThrustForce}, 
						{"MaxSpeed", ControlSEMaxSpeed}, 
						{"MinSpeed", ControlSEMinSpeed}, 
						{"Falloff", ControlSEFalloff}, 
						{"BoostMaxSpeed", ControlSEBoostMaxSpeed}, 
						{"BoostFalloff", ControlSEBoostFalloff}, 
						{"BoostingTurnDamp", ControlSEBoostingTurnDamp}, 
						{"DirectionBrakeMin", ControlSEDirectionBrakeMin}, 
						{"DirectionBrake", ControlSEDirectionBrake}, 
						{"ReverseBrake", ControlSEReverseBrake}, 
						{"OverspeedBrake", ControlSEOverspeedBrake}, 
						{"TurnBrakeMax", ControlSETurnBrakeMax}, 
						{"TurnStrength", ControlSETurnStrength}, 
						{"RollAutoTime", ControlSERollAutoTime}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", ControlPEThrustForce}, 
						{"MaxSpeed", ControlPEMaxSpeed}, 
						{"MinSpeed", ControlPEMinSpeed}, 
						{"Falloff", ControlPEFalloff}, 
						{"BoostMaxSpeed", ControlPEBoostMaxSpeed}, 
						{"BoostFalloff", ControlPEBoostFalloff}, 
						{"DirectionBrakeMin", ControlPEDirectionBrakeMin}, 
						{"DirectionBrake", ControlPEDirectionBrake}, 
						{"ReverseBrake", ControlPEReverseBrake}, 
						{"TurnBrakeMin", ControlPETurnBrakeMin}, 
						{"TurnBrakeMax", ControlPETurnBrakeMax}, 
						{"TurnStrength", ControlPETurnStrength}, 
						{"RollAutoTime", ControlPERollAutoTime}, 
						{"BalanceTimeMin", ControlPEBalanceTimeMin}, 
						{"BalanceTimeMax", ControlPEBalanceTimeMax}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"MaxSpeed", ControlCEMaxSpeed}, {"TurnStrength", ControlCETurnStrength}, {"RollAutoTime", ControlCERollAutoTime}, 
					}
				},
--## Light-class ship contols ##
				{["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", ControlLTSEThrustForce}, 
						{"MaxSpeed", ControlLTSEMaxSpeed}, 
						{"MinSpeed", ControlLTSEMinSpeed}, 
						{"Falloff", ControlLTSEFalloff}, 
						{"BoostMaxSpeed", ControlLTSEBoostMaxSpeed}, 
						{"BoostFalloff", ControlLTSEBoostFalloff}, 
						{"BoostingTurnDamp", ControlLTSEBoostingTurnDamp}, 
						{"DirectionBrakeMin", ControlLTSEDirectionBrakeMin}, 
						{"DirectionBrake", ControlLTSEDirectionBrake}, 
						{"ReverseBrake", ControlLTSEReverseBrake}, 
						{"OverspeedBrake", ControlLTSEOverspeedBrake}, 
						{"TurnBrakeMin", ControlLTSETurnBrakeMin},
						{"TurnBrakeMax", ControlLTSETurnBrakeMax}, 
						{"TurnStrength", ControlLTSETurnStrength}, 
						{"RollAutoTime", ControlLTSERollAutoTime}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", ControlLTPEThrustForce}, 
						{"MaxSpeed", ControlLTPEMaxSpeed}, 
						{"MinSpeed", ControlLTPEMinSpeed}, 
						{"Falloff", ControlLTPEFalloff}, 
						{"BoostMaxSpeed", ControlLTPEBoostMaxSpeed}, 
						{"BoostFalloff", ControlLTPEBoostFalloff}, 
						{"DirectionBrakeMin", ControlLTPEDirectionBrakeMin}, 
						{"DirectionBrake", ControlLTPEDirectionBrake}, 
						{"ReverseBrake", ControlLTPEReverseBrake}, 
						{"TurnBrakeMin", ControlLTPETurnBrakeMin}, 
						{"TurnBrakeMax", ControlLTPETurnBrakeMax}, 
						{"TurnStrength", ControlLTPETurnStrength}, 
						{"RollAutoTime", ControlLTPERollAutoTime}, 
						{"BalanceTimeMin", ControlLTPEBalanceTimeMin}, 
						{"BalanceTimeMax", ControlLTPEBalanceTimeMax}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"MaxSpeed", ControlLTCEMaxSpeed}, 
						{"BoostFalloff", ControlLTCEBoostFalloff}, 
						{"TurnStrength", ControlLTCETurnStrength}, 
						{"RollAutoTime", ControlLTCERollAutoTime}, 
					}
				},
--## Heavy-class ship contols ##
				{["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", ControlHVYSEThrustForce}, 
						{"MaxSpeed", ControlHVYSEMaxSpeed}, 
						{"MinSpeed", ControlHVYSEMinSpeed}, 
						{"Falloff", ControlHVYSEFalloff}, 
						{"BoostMaxSpeed", ControlHVYSEBoostMaxSpeed}, 
						{"BoostFalloff", ControlHVYSEBoostFalloff}, 
						{"BoostingTurnDamp", ControlHVYSEBoostingTurnDamp}, 
						{"DirectionBrakeMin", ControlHVYSEDirectionBrakeMin}, 
						{"DirectionBrake", ControlHVYSEDirectionBrake}, 
						{"ReverseBrake", ControlHVYSEReverseBrake}, 
						{"OverspeedBrake", ControlHVYSEOverspeedBrake}, 
						{"TurnBrakeMax", ControlHVYSETurnBrakeMax}, 
						{"TurnStrength", ControlHVYSETurnStrength}, 
						{"RollAutoTime", ControlHVYSERollAutoTime}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", ControlHVYPEThrustForce}, 
						{"MaxSpeed", ControlHVYPEMaxSpeed}, 
						{"MinSpeed", ControlHVYPEMinSpeed}, 
						{"Falloff", ControlHVYPEFalloff}, 
						{"BoostThrustForce", ControlHVYPEBoostThrustForce}, 
						{"BoostMaxSpeed", ControlHVYPEBoostMaxSpeed}, 
						{"BoostFalloff", ControlHVYPEBoostFalloff}, 
						{"BoostingTurnDamp", ControlHVYPEBoostingTurnDamp}, 
						{"DirectionBrakeMin", ControlHVYPEDirectionBrakeMin}, 
						{"DirectionBrake", ControlHVYPEDirectionBrake}, 
						{"ReverseBrake", ControlHVYPEReverseBrake}, 
						{"TurnBrakeMin", ControlHVYPETurnBrakeMin}, 
						{"TurnBrakeMax", ControlHVYPETurnBrakeMax}, 
						{"TurnStrength", ControlHVYPETurnStrength}, 
						{"RollAutoTime", ControlHVYPERollAutoTime}, 
						{"BalanceTimeMin", ControlHVYPEBalanceTimeMin}, 
						{"BalanceTimeMax", ControlHVYPEBalanceTimeMax}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"MaxSpeed", ControlHVYCEMaxSpeed}, 
						{"BoostFalloff", ControlHVYCEBoostFalloff}, 
						{"TurnStrength", ControlHVYCETurnStrength}, 
						{"RollAutoTime", ControlHVYCERollAutoTime}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE