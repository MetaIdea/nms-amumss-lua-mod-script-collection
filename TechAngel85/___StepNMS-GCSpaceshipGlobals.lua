Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter various settings dealing with Spaceships."
FileSource01 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step / Miscellaneous ##
LandingHoverOffset = 1.5				--  | 3 | 11
LandingMargin = 0.7						-- The size of the area that must be considered "cleared" of object to allow for landing | 1.4 | 14
LandingObstacleMinHeight = 2.5			-- The minimum height of objects that obstruct landing | 2 | 15
HoverTakeoffHeight = 75					-- Initial height upon ship takeoff | 90 | 326
HoverSpeedFactor = 0.001				-- Speed at which ship hovers | 20 | 331
HoverMinSpeed = 0.001					-- Minimum speed at which ship will hover | 1 | 333
LandingPushNoseUpFactor = 0.05			-- Angle the ship nose will point upwards during landing | 0.15 | 357
NoBoostAnomalyDistance = 1800			-- Distance from Anomaly that boost is disabled | 3000 | 803
MiniWarpLinesSpacing = 12000			-- Spacing between the vertical metric lines during warp | 3000 | 925
FreighterApproachSpeedDamper = 1		-- The amount of speed dampener applied when approaching Freighters | 0.5 | 1018
MiniWarpShakeStrength = 1				-- The strentgh of the shake during warp | 2 | 1020
MiniWarpSpeed = 45000					-- Speed at which ship travels during warp | 30000 | 1026
MiniWarpTopSpeedTime = 0.25				-- Time it takes to reach top warp speed | 0.1 | 1027
MiniWarpStoppingMarginStation = 1800	-- Distance at which the ship will exit warp when traveling to a station | 2500 | 1032
MiniWarpExitTime = 0.25 				-- Time it take to exit warp | 0.5 | 1036
MiniWarpHUDArrowAttractAngle = 5		-- The sensistivity the mouse will auto-hover over marker icons | 10  | 1037
MiniWarpHUDArrowAttractAngleDense = 3	-- The sensistivity the mouse will auto-hover over marker icons when the icons are considered denses packed | 4 | 1041
MiniWarpHUDArrowNumMarkersToBeDense = 4	-- The number of icons that are close together to be considered densely packed, at which time the sensistivity will change to "MiniWarpHUDArrowAttractAngleDense" | 6 | 1042
AnomalyStationMaxApproachSpeed = 120	-- The max speed allow during docking approach to the Anomaly | 60 | 1070

--## Step / Ship Controls ##
ShipPlanetBrakeAlignMaxTime = 4			--  | 8 | 495...

-- Control/SpaceEngine
ControlSEThrustForce = 60				-- Amount of force the thruster has | 40 | 401
ControlSEMaxSpeed = 540					-- Max speed the ship will travel | 180 | 402
ControlSEMinSpeed = 0					-- Minimum allowed speed for the ship | 1 | 403
ControlSEFalloff = 0.5					-- The amount of speed the ship will automatically loose during coasting | 0.7 | 404
ControlSEBoostMaxSpeed = 2700			-- The max speed the ship will travel during boosting | 1200 | 407
ControlSEBoostFalloff = 0.5				-- The amount of speed the ship will automatically loose during coasting | 0.7 | 408
ControlSEBoostingTurnDamp = 0.2			-- The amount of speed the ship will automatically loose during turning | 0.1 | 409
ControlSEDirectionBrakeMin = 1.2		-- The minimum amount of directional brake applied | 1 | 410
ControlSEDirectionBrake = 1.7			-- The amount of normal directional brake applied | 1.5 | 411
ControlSEReverseBrake = 1				-- The amount of reverse brake applied | 0.5 | 412
ControlSEOverspeedBrake = 6				-- The amount of brake applied when over the max speed | 3 | 413
ControlSETurnBrakeMax = 3				-- The max amount of brake applied while turning | 2 | 416
ControlSETurnStrength = 5				-- The strength of the turning brake | 1 | 417
ControlSERollAutoTime = 1				-- The length of time it takes for an auto-roll correction event to occur | 2 | 420

-- Control/PlanetEngine
ControlPEThrustForce = 30				--  | 20| 425
ControlPEMaxSpeed = 250					--  | 125 | 426
ControlPEMinSpeed = 0.001				--  | 20 | 427
ControlPEFalloff = 0.25					--  | 0.5 | 428
ControlPEBoostMaxSpeed = 375			--  | 155 | 431
ControlPEBoostFalloff = 0.5				--  | 0.7 | 432
ControlPEDirectionBrakeMin = 1.3		--  | 1 | 434
ControlPEDirectionBrake = 1.8			--  | 1.5 | 435
ControlPEReverseBrake = 1.5				--  | 1 | 436
ControlPETurnBrakeMin = 3				-- The minimum amount of brake applied while turning | 2 | 439
ControlPETurnBrakeMax = 4				--  | 3 | 440
ControlPETurnStrength = 5				--  | 1 | 441
ControlPERollAutoTime = 0.25			--  | 0.5 | 444
ControlPEBalanceTimeMin = 0.3			--  | 0.6 | 445
ControlPEBalanceTimeMax = 0.85			--  | 0.7 | 446

-- Control/CombatEngine
ControlCEMaxSpeed = 160					--  | 80 | 450
ControlCETurnStrength = 4				--  | 1.3 | 465
ControlCERollAutoTime = 1				--  | 2 | 468

-- ControlLight/SpaceEngine
ControlLTSEThrustForce = 90				--  | 80 | 498
ControlLTSEMaxSpeed = 7200				--  | 180 | 499
ControlLTSEMinSpeed = 0					--  | 1 | 500
ControlLTSEFalloff = 0.4				--  | 0.7 | 501
ControlLTSEBoostMaxSpeed = 3600			--  | 1300 | 504
ControlLTSEBoostFalloff = 0.4			--  | 0.7 | 505
ControlLTSEBoostingTurnDamp = 0.15		--  | 0.1 | 506
ControlLTSEDirectionBrakeMin = 1		--  | 0.8 | 507
ControlLTSEDirectionBrake = 1.5			--  | 1.2 | 508
ControlLTSEReverseBrake = 1.2			--  | 0.5 | 509
ControlLTSEOverspeedBrake = 6			--  | 3 | 510
ControlLTSETurnBrakeMin = 2				--  | 1 | 512
ControlLTSETurnBrakeMax = 4				--  | 3 | 513
ControlLTSETurnStrength = 6				--  | 1.1 | 514
ControlLTSERollAutoTime = 1				--  | 2 | 517

-- ControlLight/PlanetEngine
ControlLTPEThrustForce = 45				--  | 40| 522
ControlLTPEMaxSpeed = 375				--  | 125 | 523
ControlLTPEMinSpeed = 0.001				--  | 20 | 524
ControlLTPEFalloff = 0.25				--  | 0.5 | 525
ControlLTPEBoostMaxSpeed = 750			--  | 150 | 528
ControlLTPEBoostFalloff = 0.25			--  | 0.7 | 529
ControlLTPEDirectionBrakeMin = 1.1		--  | 0.75 | 531
ControlLTPEDirectionBrake = 1.6			--  | 1.15 | 532
ControlLTPEReverseBrake = 1.7			--  | 1 | 533
ControlLTPETurnBrakeMin = 4				--  | 3 | 536
ControlLTPETurnBrakeMax = 5				--  | 4 | 537
ControlLTPETurnStrength = 6				--  | 1.65 | 538
ControlLTPERollAutoTime = 0.25			--  | 0.5 | 541
ControlLTPEBalanceTimeMin = 0.3			--  | 0.6 | 542
ControlLTPEBalanceTimeMax = 0.85		--  | 1.7 | 543

-- ControlLight/CombatEngine
ControlLTCEMaxSpeed = 160				--  | 80 | 547
ControlLTCEBoostFalloff = 0.3			--  | 0.7 | 553
ControlLTCETurnStrength = 3				--  | 1.5 | 562
ControlLTCERollAutoTime = 1				--  | 2 | 565

-- ControlHeavy/SpaceEngine
ControlHVYSEThrustForce = 45			--  | 40 | 595
ControlHVYSEMaxSpeed = 360				--  | 180 | 596
ControlHVYSEMinSpeed = 0				--  | 1 | 597
ControlHVYSEFalloff = 0.5				--  | 0.7 | 598
ControlHVYSEBoostMaxSpeed = 1800		--  | 1100 | 601
ControlHVYSEBoostFalloff = 0.5			--  | 0.7 | 602
ControlHVYSEBoostingTurnDamp = 0.25		--  | 0.1 | 603
ControlHVYSEDirectionBrakeMin = 1.4		--  | 1 | 604
ControlHVYSEDirectionBrake = 1.9		--  | 1.5 | 605
ControlHVYSEReverseBrake = 0.8			--  | 0.5 | 606
ControlHVYSEOverspeedBrake = 6			--  | 3 | 607
ControlHVYSETurnBrakeMax = 2			--  | 3 | 610
ControlHVYSETurnStrength = 4			--  | 0.6 | 611
ControlHVYSERollAutoTime = 1			--  | 2 | 614

-- ControlHeavy/PlanetEngine
ControlHVYPEThrustForce = 45			--  | 20| 619
ControlHVYPEMaxSpeed = 200				--  | 130 | 620
ControlHVYPEMinSpeed = 0.001			--  | 20 | 621
ControlHVYPEFalloff = 0.5				--  | 0.5 | 622
ControlHVYPEBoostThrustForce = 40		--  | 20 | 624
ControlHVYPEBoostMaxSpeed = 275			--  | 185 | 625
ControlHVYPEBoostFalloff = 0.5			--  | 0.7 | 626
ControlHVYPEBoostingTurnDamp = 0.2		--  | 0.15 | 627
ControlHVYPEDirectionBrakeMin = 1.5		--  | 0.35 | 628
ControlHVYPEDirectionBrake = 2			--  | 0.8 | 629
ControlHVYPEReverseBrake = 1.3			--  | 1 | 630
ControlHVYPETurnBrakeMin = 2			--  | 1 | 633
ControlHVYPETurnBrakeMax = 3			--  | 2 | 634
ControlHVYPETurnStrength = 4			--  | 0.7 | 635
ControlHVYPERollAutoTime = 0.25			--  | 0.5 | 638
ControlHVYPEBalanceTimeMin = 0.3		--  | 0.65 | 639
ControlHVYPEBalanceTimeMax = 0.85		--  | 1.75 | 640

-- ControlHeavy/CombatEngine
ControlHVYCEMaxSpeed = 160				--  | 80 | 644
ControlHVYCEBoostFalloff = 0.5			--  | 0.7 | 650
ControlHVYCETurnStrength = 2			--  | 1 | 659
ControlHVYCERollAutoTime = 1			--  | 2 | 662


--## Better Landings ##
GroundNearEffectLightFactor = 0.5		--  | 0.8 |127
LandingCurveHeavyCurve = "SlowOut"		-- The curve model used for how heavy-class ships land/take off | ReallySlowOut | 397


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
--## Step ##
						{"LandingHoverOffset", LandingHoverOffset},
						{"LandingMargin", LandingMargin},
						{"LandingObstacleMinHeight", LandingObstacleMinHeight},
						{"HoverTakeoffHeight", HoverTakeoffHeight},
						{"HoverSpeedFactor", HoverSpeedFactor}, 
						{"LandingPushNoseUpFactor", LandingPushNoseUpFactor},
						{"NoBoostAnomalyDistance", NoBoostAnomalyDistance}, 
						{"MiniWarpLinesSpacing", MiniWarpLinesSpacing},
						{"FreighterApproachSpeedDamper", FreighterApproachSpeedDamper},
						{"MiniWarpShakeStrength", MiniWarpShakeStrength},
						{"MiniWarpSpeed", MiniWarpSpeed},
						{"MiniWarpTopSpeedTime", MiniWarpTopSpeedTime},
						{"MiniWarpStoppingMarginStation", MiniWarpStoppingMarginStation},
						{"MiniWarpExitTime", MiniWarpExitTime},
						{"MiniWarpHUDArrowAttractAngle", MiniWarpHUDArrowAttractAngle},
						{"AnomalyStationMaxApproachSpeed", AnomalyStationMaxApproachSpeed},
						{"MiniWarpHUDArrowAttractAngleDense", MiniWarpHUDArrowAttractAngleDense},
						{"MiniWarpHUDArrowNumMarkersToBeDense", MiniWarpHUDArrowNumMarkersToBeDense},
--
--##### Everything after here is from Better Landings mod #####
--
						{"GroundNearEffectLightFactor", GroundNearEffectLightFactor}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LandingCurveHeavy",}, 
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
					["VALUE_CHANGE_TABLE"] = {
						{"ShipPlanetBrakeAlignMaxTime", ShipPlanetBrakeAlignMaxTime}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine",},
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
					["VALUE_CHANGE_TABLE"] = {
						{"MaxSpeed", ControlCEMaxSpeed}, {"TurnStrength", ControlCETurnStrength}, {"RollAutoTime", ControlCERollAutoTime}, 
					}
				},
--## Light-class ship contols ##
				{["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine",},
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
					["VALUE_CHANGE_TABLE"] = {
						{"MaxSpeed", ControlLTCEMaxSpeed}, 
						{"BoostFalloff", ControlLTCEBoostFalloff}, 
						{"TurnStrength", ControlLTCETurnStrength}, 
						{"RollAutoTime", ControlLTCERollAutoTime}, 
					}
				},
--## Heavy-class ship contols ##
				{["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine",},
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
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE