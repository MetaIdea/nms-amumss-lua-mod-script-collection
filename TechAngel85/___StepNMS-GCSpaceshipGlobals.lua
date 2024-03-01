Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with Spaceships."
FileSource01 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step / Miscellaneous ##
LandingHoverOffset = 1.5				--  | 3 | 16
LandingMargin = 0.7						-- The size of the area that must be considered "cleared" of object to allow for landing | 1.4 | 19
LandingObstacleMinHeight = 2.5			-- The minimum height of objects that obstruct landing | 2 | 20

HoverSpeedFactor = 0					-- Speed at which ship hovers | 20 | 351
HoverMinSpeed = 0.1						-- Minimum speed at which ship will hover | 1 | 353
LandingPushNoseUpFactor = 0.05			-- Angle the ship nose will point upwards during landing | 0.15 | 377

NoBoostAnomalyDistance = 1500			-- Distance from Anomaly that boost is disabled | 3000 | 1138

MiniWarpLinesSpacing = 12000			-- Spacing between the vertical metric lines during warp | 3000 | 1285

FreighterApproachSpeedDamper = 1		-- The amount of speed dampener applied when approaching Freighters | 0.5 | 1355
MiniWarpShakeStrength = 1				-- The strength of the shake during warp | 2 | 1357
MiniWarpSpeed = 50000					-- Speed at which ship travels during warp | 30000 | 1363
MiniWarpExitTime = 0.3	 				-- Time it take to exit warp | 0.5 | 1374
MiniWarpHUDArrowAttractAngle = 3		-- The sensitivity the mouse will auto-snap over marker icons | 10  | 1375
MiniWarpHUDArrowAttractAngleDense = 3	-- The sensitivity the mouse will auto-snap over marker icons when the icons are considered densely packed | 4 | 1379
MiniWarpHUDArrowAttractAngleStation = 4	-- The sensitivity the mouse will auto-snap over station markers | 5 | 
MiniWarpHUDArrowNumMarkersToBeDense = 4	-- The number of icons that are close together to be considered densely packed, at which time the sensitivity will change to "MiniWarpHUDArrowAttractAngleDense" | 6 | 1380
AnomalyStationMaxApproachSpeed = 180	-- The max speed allow during docking approach to the Anomaly | 60 | 1408

--Launch Cost Reduction
LaunchThrustersMinimumSummonPercentage = 10		-- Minimum fuel cost for summoning ship | 25 | 1579

--## Step / Ship Controls ##
ShipPlanetBrakeAlignMaxTime = 4			-- Replaces all instances of this value | 8 | 495...

-- Control/SpaceEngine
ControlSEThrustForce = 60				-- Amount of force the thruster has | 40 | 423
ControlSEMaxSpeed = 540					-- Max speed the ship will travel | 180 | 424
ControlSEMinSpeed = 0					-- Minimum allowed speed for the ship | 1 | 425
ControlSEBoostMaxSpeed = 2400			-- The max speed the ship will travel during boosting | 1200 | 
ControlSEBoostingTurnDamp = 0.2			-- The amount of speed the ship will automatically loose during turning | 0.1 | 
ControlSEReverseBrake = 1				-- The amount of reverse brake applied | 0.5 | 
ControlSEOverspeedBrake = 6				-- The amount of brake applied when over the max speed | 3 | 
ControlSETurnBrakeMax = 3				-- The max amount of brake applied while turning | 2 | 438
ControlSETurnStrength = 5				-- The strength of the turning brake | 1 | 
ControlSERollAutoTime = 1				-- The length of time it takes for an auto-roll correction event to occur | 2 | 442

-- Control/PlanetEngine
ControlPEThrustForce = 30				--  | 20| 454
ControlPEMaxSpeed = 250					--  | 125 |
ControlPEMinSpeed = 0.1					--  | 20 | 
ControlPEFalloff = 0.35					--  | 0.5 | 
ControlPEBoostMaxSpeed = 375			--  | 155 | 
ControlPEReverseBrake = 1.5				--  | 1 | 
ControlPETurnBrakeMin = 3				-- The minimum amount of brake applied while turning | 2 | 
ControlPETurnBrakeMax = 4				--  | 3 | 
ControlPETurnStrength = 5				--  | 1 | 

-- Control/CombatEngine
ControlCEMaxSpeed = 160					--  | 80 | 486
ControlCETurnStrength = 4				--  | 1.3 | 
ControlCERollAutoTime = 1				--  | 2 | 

-- ControlLight/SpaceEngine
ControlLTSEThrustForce = 90				--  | 80 | 566
ControlLTSEMaxSpeed = 720				--  | 180 | 
ControlLTSEMinSpeed = 0					--  | 1 | 
ControlLTSEBoostMaxSpeed = 3600			--  | 1300 | 
ControlLTSEBoostingTurnDamp = 0.15		--  | 0.1 | 
ControlLTSEReverseBrake = 1.2			--  | 0.5 | 
ControlLTSEOverspeedBrake = 6			--  | 3 | 
ControlLTSETurnBrakeMin = 2				--  | 1 | 
ControlLTSETurnBrakeMax = 4				--  | 3 | 
ControlLTSETurnStrength = 6				--  | 1.1 | 
ControlLTSERollAutoTime = 1				--  | 2 | 

-- ControlLight/PlanetEngine
ControlLTPEThrustForce = 50				--  | 40| 603
ControlLTPEMaxSpeed = 375				--  | 125 | 
ControlLTPEMinSpeed = 0.1					--  | 20 | 
ControlLTPEFalloff = 0.25				--  | 0.5 |
ControlLTPEBoostMaxSpeed = 550			--  | 150 | 
ControlLTPEDirectionBrakeMin = 1.1		--  | 0.75 | 
ControlLTPEDirectionBrake = 1.5			--  | 1.15 | 
ControlLTPEReverseBrake = 1.5			--  | 1 | 
ControlLTPETurnBrakeMin = 4				--  | 3 | 
ControlLTPETurnBrakeMax = 5				--  | 4 | 
ControlLTPETurnStrength = 6				--  | 1.65 | 

-- ControlLight/CombatEngine
ControlLTCEMaxSpeed = 160				--  | 80 | 635
ControlLTCETurnStrength = 3				--  | 1.5 | 
ControlLTCERollAutoTime = 1				--  | 2 | 

-- ControlHeavy/SpaceEngine
ControlHVYSEThrustForce = 50			--  | 40 | 721
ControlHVYSEMaxSpeed = 360				--  | 180 | 
ControlHVYSEMinSpeed = 0				--  | 1 | 
ControlHVYSEBoostMaxSpeed = 1800		--  | 1100 | 
ControlHVYSEBoostingTurnDamp = 0.25		--  | 0.1 | 
ControlHVYSEReverseBrake = 0.8			--  | 0.5 | 
ControlHVYSEOverspeedBrake = 6			--  | 3 | 
ControlHVYSETurnBrakeMax = 2			--  | 3 | 
ControlHVYSETurnStrength = 4			--  | 0.6 | 
ControlHVYSERollAutoTime = 1			--  | 2 | 

-- ControlHeavy/PlanetEngine
ControlHVYPEThrustForce = 35			--  | 20| 752
ControlHVYPEMaxSpeed = 200				--  | 130 | 
ControlHVYPEMinSpeed = 0.1				--  | 20 | 
ControlHVYPEBoostThrustForce = 40		--  | 20 | 
ControlHVYPEBoostMaxSpeed = 275			--  | 185 | 
ControlHVYPEBoostingTurnDamp = 0.2		--  | 0.15 | 
ControlHVYPEDirectionBrakeMin = 1.5		--  | 0.35 | 
ControlHVYPEDirectionBrake = 2			--  | 0.8 | 
ControlHVYPETurnBrakeMin = 2			--  | 1 | 
ControlHVYPETurnBrakeMax = 3			--  | 2 | 
ControlHVYPETurnStrength = 4			--  | 0.7 | 

-- ControlHeavy/CombatEngine
ControlHVYCEMaxSpeed = 160				--  | 80 | 784
ControlHVYCETurnStrength = 2			--  | 1 | 
ControlHVYCERollAutoTime = 1			--  | 2 | 


--## Better Landings ##
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
						{"NoBoostAnomalyDistance", NoBoostAnomalyDistance}, 
						{"MiniWarpLinesSpacing", MiniWarpLinesSpacing}, 
						{"FreighterApproachSpeedDamper", FreighterApproachSpeedDamper}, 
						{"MiniWarpShakeStrength", MiniWarpShakeStrength}, 
						{"MiniWarpSpeed", MiniWarpSpeed}, 
						{"MiniWarpExitTime", MiniWarpExitTime}, 
						{"MiniWarpHUDArrowAttractAngle", MiniWarpHUDArrowAttractAngle}, 
						{"MiniWarpHUDArrowAttractAngleDense", MiniWarpHUDArrowAttractAngleDense}, 
						{"MiniWarpHUDArrowAttractAngleStation", MiniWarpHUDArrowAttractAngleStation}, 
						{"MiniWarpHUDArrowNumMarkersToBeDense", MiniWarpHUDArrowNumMarkersToBeDense}, 
						{"AnomalyStationMaxApproachSpeed", AnomalyStationMaxApproachSpeed}, 
						{"LaunchThrustersMinimumSummonPercentage", LaunchThrustersMinimumSummonPercentage}, 
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
						{"BoostMaxSpeed", ControlSEBoostMaxSpeed}, 
						{"BoostingTurnDamp", ControlSEBoostingTurnDamp}, 
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
						{"ReverseBrake", ControlPEReverseBrake}, 
						{"TurnBrakeMin", ControlPETurnBrakeMin}, 
						{"TurnBrakeMax", ControlPETurnBrakeMax}, 
						{"TurnStrength", ControlPETurnStrength}, 
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
						{"BoostMaxSpeed", ControlLTSEBoostMaxSpeed}, 
						{"BoostingTurnDamp", ControlLTSEBoostingTurnDamp}, 
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
						{"DirectionBrakeMin", ControlLTPEDirectionBrakeMin}, 
						{"DirectionBrake", ControlLTPEDirectionBrake}, 
						{"ReverseBrake", ControlLTPEReverseBrake}, 
						{"TurnBrakeMin", ControlLTPETurnBrakeMin}, 
						{"TurnBrakeMax", ControlLTPETurnBrakeMax}, 
						{"TurnStrength", ControlLTPETurnStrength}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"MaxSpeed", ControlLTCEMaxSpeed}, {"TurnStrength", ControlLTCETurnStrength}, {"RollAutoTime", ControlLTCERollAutoTime}, 
					}
				},
--## Heavy-class ship contols ##
				{["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine",}, 
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", ControlHVYSEThrustForce}, 
						{"MaxSpeed", ControlHVYSEMaxSpeed}, 
						{"MinSpeed", ControlHVYSEMinSpeed}, 
						{"BoostMaxSpeed", ControlHVYSEBoostMaxSpeed}, 
						{"BoostingTurnDamp", ControlHVYSEBoostingTurnDamp}, 
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
						{"BoostThrustForce", ControlHVYPEBoostThrustForce}, 
						{"BoostMaxSpeed", ControlHVYPEBoostMaxSpeed}, 
						{"BoostingTurnDamp", ControlHVYPEBoostingTurnDamp}, 
						{"DirectionBrakeMin", ControlHVYPEDirectionBrakeMin}, 
						{"DirectionBrake", ControlHVYPEDirectionBrake}, 
						{"TurnBrakeMin", ControlHVYPETurnBrakeMin}, 
						{"TurnBrakeMax", ControlHVYPETurnBrakeMax}, 
						{"TurnStrength", ControlHVYPETurnStrength}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"MaxSpeed", ControlHVYCEMaxSpeed}, {"TurnStrength", ControlHVYCETurnStrength}, {"RollAutoTime", ControlHVYCERollAutoTime}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE