Author = "PyronoxOmega"
ModName = "FlyDangerous-noinstawarp"
GameVersion = "4"
ModVersion = "1.2"
Description = "Flight Overhaul"
FileSource1 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] = ModName .. "" .. GameVersion .. ModVersion .. ".pak",
	["MOD_DESCRIPTION"] = Description,
	["MOD_AUTHOR"] = Author,
	["NMS_VERSION"] = GameVersion,
	["MODIFICATIONS"] = 
	{
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								--landing control--
								{"LandingHoverOffset", 2}, --3
								{"LandingMaxSpeed", 60}, --80
								{"LandingMaxAngle", 50}, --45
								{"LandingMargin", 2.4}, --1.4
								{"LandingObstacleMinHeight", 1.4}, --2
								{"LandingTooManyLowPointsFraction", 0.1}, --0.3
								--visuals--
								{"VignetteAmountAcceleration", 0}, --removes vignette
								{"VignetteAmountTurning", 0}, --removes Turning vignette
								{"MiniWarpLinesNum", 0},
								{"MiniWarpFlashIntensity", 0}, --0.9
								{"MiniWarpFlashDuration", 0}, --0.9
								{"MiniWarpLinesSpacing", 0},
								{"MiniWarpLinesOffset", 0},
								{"MiniWarpLinesHeight", 0},
								{"PostWarpSlowDownTime", 1.6},
								 --3
								{"LowAltitudeAnimationHysteresisTime", 1},
								 --4
								{"LowAltitudeAnimationTime", 3},
								 --6
								{"AimZoomAuto", "True"},
								--{"EngineJetLightIntensityMultiplier", 0.5},	--0.5
								--{"EngineEffectsThrustContribution", 0.3},	--0.3

								--warp in ranges --
								{"WarpInRange", 5000},
								 --10000
								{"WarpInRangeFreighter", 3500},
								 --5000
								{"WarpOutRange", 500},
								{"WarpInRangeNexus", 3500},
								 --5000
								{"WarpNexusRotation", 1},
								 --15
								{"WarpNexusPitch", 1},
								 --15
								{"WarpNexusDistance", -6000},
								 -- -9000
								--Quality of life--
								{"PadTurnSpeed", 0.70}, --landing pad turning speed 1
								{"MaximumDistanceFromShipWhenExiting", 6}, --how far you are when you exit your ship
								--hover control--
								{"HoverTakeoffHeight", 70}, --hovering height after take off
								{"HoverAlignTime", 0.2},
								{"HoverMinSpeed", 0.01}, ---Hovering speed control 1
								{"HoverLandReachedDistance", 3},
								 --controls hovering ground proximity 10
								{"HoverLandManeuvreTimeMin", 0.3},
								{"GroundHeightSoftForce", 10},
								{"GroundHeightSoft", 7},
								--landing control--
								{"LandingOnGroundTip", -15}, -- -20
								{"LandingCheckBuildingRadiusFactor", 0.75}, --landing close to buildings
								{"LandingButtonMinTime", 0.25},
								{"LandingPushNoseUpFactor", -0.1}, --Landing  ship nose up 0.15
								{"LandSlopeMax", 35},
								 -- landing on slopes 22
								--Cheaty Factors--
								{"ShieldRechargeRate", 6},
								{"BoostChargeRate", 6}, --2.5
								{"TurnRudderStrength", 8}, --0.4
								{"MiniWarpFuelTime", 0.5},
								 --0.5
								--pulse controls --
								{"MiniWarpChargeTime", 2},
								 --instant warp lol --2
								{"MiniWarpTime", 0.1},
								{"MiniWarpSpeed", 250000}, --30000
								{"MiniWarpExitSpeed", "800"}, --1000
								{"MiniWarpExitTime", "0.225"}, --0.5
								{"MiniWarpMarkerApproachSlowdown", "0.98"}, --0.5
								{"MiniWarpPlanetRadius", "100"}, --500  100 = up tp 94000u
								{"MiniWarpStationRadius", "100"}, --700
								{"MiniWarpStoppingMarginPlanet", 2000}, --5000
								{"MiniWarpMinPlanetDistance", 0},
								{"MiniWarpTrackingMargin", "18"}, --100
								{"MiniWarpStoppingMarginDefault", 500},
								{"MiniWarpHUDArrowAttractAngle", 3}, --10
								{"BoostNoAsteroidRadius", 2000}, --1000
								-- approaches--
								{"AnomalyStationMaxApproachSpeed", 120}, --60
								{"LandHeightThreshold", 60}, --100
								{"DockingRotateSpeed", 0.85}, --2.5
								{"DriftSpring", 2}, --0
								{"NoBoostFreighterDistance", "0.1"},
								 --800
								{"NoBoostFreighterAngle", "1"},
								 --10
								{"NoBoostShipDistance", "0.1"}, --2000
								{"PlayerFreighterClearSpaceRadius", 1}, --3000
								{"PulseDriveStationApproachSlowdownRangeMin", 600},
								{"PulseDriveStationApproachSlowdownRange", 3500},
								{"PulseDrivePlanetApproachHeight", 4000} --approach height 6000
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {""},
							["MATH_OPERATION"] = "-",
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								--take 0ff multipliers--
								{"HaulerTakeOffMod", "0.10"}, --1
								{"FighterTakeOffMod", "0.10"},
								 --1
								{"RoyalTakeOffMod", "0.10"},
								 --1
								{"ShuttleTakeOffMod", "0.10"},
								 --0.66
								{"ExplorerTakeOffMod", "0.10"} --0.5
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"PitchCorrectHeightCurve", "LandingCurve", "LandingCurveHeavy"},
							["VALUE_CHANGE_TABLE"] = {
								{"Curve", "SmootherStep"} -- anim curves EaseOutQuad-->
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 120}, --40
								{"MaxSpeed", 540}, --180
								{"MinSpeed", 0.01}, --1
								--{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 1500}, --500
								{"BoostMaxSpeed", 3600}, --1200
								{"BoostFalloff", 0.0}, --0.7
								{"TurnStrength", 1.5}, --1
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMin", 4} --2
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 60}, --20
								{"MaxSpeed", 375}, --125
								{"MinSpeed", 0.01}, --1
								--{"Falloff", 0.05},					    --0.7
								{"BoostThrustForce", 300}, --100
								{"BoostMaxSpeed", 465}, --155
								{"BoostFalloff", 0.0}, --0.7
								{"TurnStrength", 1.5}, --1
								{"ReverseBrake", 2}, --1
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 1.8}, --2
								{"TurnBrakeMax", 5} --3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 120}, --20
								{"MaxSpeed", 240}, --125
								{"MinSpeed", 0.01}, --1
								--{"Falloff", 0.05},					    --0.7
								{"BoostThrustForce", 1500}, --100
								{"BoostMaxSpeed", 3600}, --155
								{"BoostFalloff", 0.0}, --0.7
								{"TurnStrength", 1.5}, --1
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 6} --4
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 120}, --20
								{"MaxSpeed", 240}, --125
								{"MinSpeed", 0.01}, --1
								--{"Falloff", 0.05},					    --0.7
								{"BoostThrustForce", 300}, --100
								{"BoostMaxSpeed", 465}, --155
								{"BoostFalloff", 0.0}, --0.7
								{"TurnStrength", 1.5}, --1
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 6} --4
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ExitLeaveAngle", 10}, --possible angle to leave planet  60
								{"ShipPlanetBrakeMinSpeed", 0.01}, --15
								{"ShipPlanetBrakeMaxSpeed", 999999} --90
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 240}, --80
								{"MaxSpeed", 540}, --180
								{"MinSpeed", 0.01}, --1
								--{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 1500}, --500
								{"BoostMaxSpeed", 3900}, --1300
								{"BoostFalloff", 0.0}, --0.7
								{"TurnStrength", 1.2}, --1.1
								{"ReverseBrake", 2}, --0.5
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 5} --3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 120}, --40
								{"MaxSpeed", 375}, --125
								{"MinSpeed", 0.01}, --20
								--{"Falloff", 0.05},							--0.5
								{"BoostThrustForce", 60}, --20
								{"BoostMaxSpeed", 450}, --185
								{"BoostFalloff", 0}, --0.7
								{"TurnStrength", 1.75}, --1.65
								{"ReverseBrake", 2}, --1
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 2.8}, --3
								{"TurnBrakeMax", 6} --4
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 240}, --80
								{"MaxSpeed", 240}, --80
								{"MinSpeed", 0.01}, --50
								--{"Falloff", 0.05},							--0.5
								{"BoostThrustForce", 1600}, --500
								{"BoostMaxSpeed", 3640}, --1300
								{"BoostFalloff", 0}, --0.7
								{"TurnStrength", 1.65}, --1.5
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 4.5}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 6} --4
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 240}, --20
								{"MaxSpeed", 240}, --125
								{"MinSpeed", 0.01}, --1
								--{"Falloff", 0.05},					    --0.7
								{"BoostThrustForce", 300}, --100
								{"BoostMaxSpeed", 465}, --155
								{"BoostFalloff", 0}, --0.7
								{"TurnStrength", 1.65}, --1.5
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 6} --4
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 120}, --40
								{"MaxSpeed", 540}, --180
								{"MinSpeed", 0.01}, --1
								--{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 1500}, --500
								{"BoostMaxSpeed", 3300}, --1100
								{"BoostFalloff", 0.0}, --0.7
								{"TurnStrength", 0.8}, --0.6
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 5}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 6} --3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 60}, --20
								{"MaxSpeed", 390}, --130
								{"MinSpeed", 0.01}, --20
								--{"Falloff", 0.05},							--0.5
								{"BoostThrustForce", 60}, --20
								{"BoostMaxSpeed", 555}, --185
								{"BoostFalloff", 0}, --0.7
								{"TurnStrength", 1.4}, --0.7
								{"ReverseBrake", 2}, --1
								{"OverspeedBrake", 6}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 4} --2
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 120}, --40
								{"MaxSpeed", 240}, --80
								{"MinSpeed", 0.01}, --50
								--{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 1500}, --500
								{"BoostMaxSpeed", 4020}, --1100
								{"BoostFalloff", 0}, --0.7
								{"TurnStrength", 2}, --1
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 6}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 8} --4
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 120}, --40
								{"MaxSpeed", 240}, --80
								{"MinSpeed", 0.01}, --50
								--{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 150}, --500
								{"BoostMaxSpeed", 3}, --120
								{"BoostFalloff", 0}, --0.7
								{"TurnStrength", 2}, --1
								{"ReverseBrake", 1}, --0.5
								{"OverspeedBrake", 6}, --3
								{"TurnBrakeMin", 0.8}, --1
								{"TurnBrakeMax", 8} --4
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 90}, --30
								--{"ThrustForceMin", -10},					--(-5)
								{"MaxSpeedMax", -2.5}, --(-5)
								{"MaxSpeedMin", 15}, --5
								{"BoostMaxSpeedMax", 16} --5
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 120}, --60
								{"ThrustForceMin", 20}, --20
								{"MaxSpeedMax", 15}, --5
								{"MaxSpeedMin", 0}, --0
								{"BoostMaxSpeedMax", 15} --5
								--0
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 200}, --100
								{"ThrustForceMin", 100}, --50
								{"MaxSpeedMax", 60}, --20
								{"MaxSpeedMin", 9}, --3
								{"BoostMaxSpeedMax", 30}, --10
								{"BoostMaxSpeedMin", 15} --5
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 750}, --250
								{"ThrustForceMin", 150}, --50
								{"MaxSpeedMax", 90}, --30
								{"MaxSpeedMin", 45}, --15
								{"BoostMaxSpeedMax", 45}, --15
								{"BoostMaxSpeedMin", 15} --5
							}
						}
					}
				}
			}
		}
	}
}
