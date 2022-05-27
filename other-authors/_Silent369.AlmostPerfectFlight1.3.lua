local modfilename = "_AlmostPerfectFlight"
local lua_author  = "Silent"
local lua_version = "v1.3"
local mod_author  = "Silent369"
local nms_version = "3.89"
local description = "Changes Ship Pulse Flight, Combat/Planet/Space Flight and Ship Hover Characteristics."

--=============================================================================================================================
_boostMult = 3.2
_boostFall = 0
_speedMult = 2.8
_warpSMult = 4
_min_Speed = 0.01
_brakeMult = 0.8
_overBreak = 1.5
_rvrsBreak = 2
_turnBreak = 1.3
_padTurnSp = 0.85
_fuelMulti = 0.10
--=============================================================================================================================

NMS_MOD_DEFINITION_CONTAINER =
{
	["MOD_FILENAME"]			= modfilename..lua_version..".pak",
	["LUA_AUTHOR"]				= lua_author,
	["MOD_AUTHOR"]				= mod_author,
	["NMS_VERSION"]				= nms_version,
	["MOD_DESCRIPTION"]			= description,
	["MODIFICATIONS"]			=
	{
		{
			["MBIN_CHANGE_TABLE"]	=
			{
				{
					["MBIN_FILE_SOURCE"]	= {"GCSPACESHIPGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"]	=
					{
						{
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MiniWarpSpeed",	_warpSMult}, --(30000 x _warpSMult)
							}
						},
					}
				},
				{
					["MBIN_FILE_SOURCE"]  = {"GCSPACESHIPGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] =
					{
						{
							["INTEGER_TO_FLOAT"]   = "FORCE",
							["VALUE_CHANGE_TABLE"] =
							{
								{"GroundHeightSoft",							  "7"}, --Original "20"
								{"GroundHeightSoftForce",						 "10"}, --Original "35"
								{"LandingHoverOffset",							  "2"}, --Original "3"
								{"LandingMaxSpeed",								 "60"}, --Original "80"
								{"LandingMaxAngle",								 "50"}, --Original "45"
								{"LandingMargin",								"2.4"}, --Original "1.4"
								{"LandingObstacleMinHeight",					"1.4"}, --Original "2"
								{"LandingTooManyLowPointsFraction",				"0.1"}, --Original "0.3"
								{"VignetteAmountAcceleration",					  "0"}, --Original "20"
								{"VignetteAmountTurning",						  "0"}, --Original "0.4"
								{"AnomalyStationMaxApproachSpeed",				"120"}, --Original "60"
								{"BoostNoAsteroidRadius",					   "2000"}, --Original "1000"
								{"MaximumDistanceFromShipWhenExiting",			  "6"}, --Original "10"
								{"DockingRotateSpeed",					   _padTurnSp}, --Original "1"
								{"HoverTakeoffHeight",							 "75"}, --Original "90"
								{"HoverAlignTime",								"0.3"}, --Original "0.7"
								{"HoverMinSpeed",						   _min_Speed}, --Original "1"
								{"HoverLandReachedDistance",					  "3"}, --Original "4"
								{"HoverLandManeuvreTimeMin",					"0.3"}, --Original "0.7"
								{"LandingOnGroundTip",							"-15"}, --Original "-20"
								{"LandingCheckBuildingRadiusFactor",		   "0.75"}, --Original "1.1"
								{"LandingButtonMinTime",					   "0.25"}, --Original "0.5"
								{"LandHeightThreshold",							 "60"}, --Original "100"
								{"LandingPushNoseUpFactor",					  "-0.10"}, --Original "0.15"
								{"MiniWarpLinesNum",							  "0"}, --Original "4"
								{"MiniWarpFuelTime",						   "0.01"}, --Original "0.5" (1/50th)
								{"MiniWarpChargeTime",							"1.3"}, --Original "2"
								{"PadTurnSpeed",						   _padTurnSp}, --Original "1"
								{"PostWarpSlowDownTime",						"1.5"}, --Original "3"
								{"PulseDriveStationApproachSlowdownRange",	   "3500"}, --Original "5000"
								{"PulseDriveStationApproachSlowdownRangeMin",	"600"}, --Original "1000"
								{"TurnRudderStrength",							  "1"}, --Original "0.4"
								{"AimZoomAuto", 							   "True"}, --Original "False"
								{"TrailMaxNumPointsPerFrameOverride",			  "6"}, --Original "2"

						--|----------------------------------------------------------------------------------------
						--| WarpIn Range Settings
						--|----------------------------------------------------------------------------------------

								{"WarpInRange",								   "6000"}, --Original "10000"
								{"WarpInRangeFreighter",					   "3500"}, --Original "5000"
								{"WarpInRangeNexus",						   "3500"}, --Original "5000"
								{"WarpNexusDistance",						  "-6000"}, --Original "-9000"
								{"WarpNexusPitch",								  "0"}, --Original "15"
								{"WarpNexusRotation",							  "0"}, --Original "15"
								{"WarpOutRange",								"500"}, --Original "1000"

						--|----------------------------------------------------------------------------------------
						--| Miniwarp Settings
						--|----------------------------------------------------------------------------------------

								{"MiniWarpHUDArrowAttractAngle",				  "3"}, --Original "10"
								{"MiniWarpStoppingMarginPlanet",			   "2000"}, --Original "5000"
								{"MiniWarpMinPlanetDistance",					"300"}, --Original "2000"
								{"MiniWarpStoppingMarginStation",			   "1000"}, --Original "2500"
								{"MiniWarpTrackingMargin",						 "20"}, --Original "100"
								{"MiniWarpExitSpeed",							"800"}, --Original "1000"

						--|----------------------------------------------------------------------------------------
						--| Ship Planet Brake Settings
						--|----------------------------------------------------------------------------------------

								{"ShipPlanetBrakeMinSpeed",						  "0"}, --Original "15"
								{"ShipPlanetBrakeMaxSpeed",					   "9999"}, --Original "90"
								{"ShipPlanetBrakeMinHeight",				   "5000"}, --Original "200"

						--|----------------------------------------------------------------------------------------
						--| Slower AI Trader Flyby Speeds
						--|----------------------------------------------------------------------------------------

								{"PlanetMinSpeed",								 "15"}, --Original "30"
								{"PlanetMaxSpeed",								 "40"}, --Original "80"
								{"PlanetBoostSpeed",							"100"}, --Original "200"

						--|----------------------------------------------------------------------------------------
						--| Low Altitude Animation Trigger (Solar Ships?)
						--|----------------------------------------------------------------------------------------

								{"LowAltitudeAnimationHeight",				   "1050"}, --Original "1200"
								{"LowAltitudeAnimationHysteresisTime",			  "1"}, --Original "4"
								{"LowAltitudeAnimationTime",					  "3"}, --Original "6"

						--|----------------------------------------------------------------------------------------
						--| 3rd Person Wander Changes
						--|----------------------------------------------------------------------------------------

								{"_3rdPersonWarpXWander",						"0.1"}, --Original "6"
								{"_3rdPersonWarpYWander",						"0.1"}, --Original "1.5"
								{"_3rdPersonWarpZWander",						"0.1"}, --Original "5.5"
								{"_3rdPersonWarpWanderSpring",					"0.1"}, --Original "2"

						--|----------------------------------------------------------------------------------------
						--| Cheat Area, Charge Rate, Regen Time Period (double / half / quarter default values)
						--|----------------------------------------------------------------------------------------

								{"BoostChargeRate",								  "5"}, --Original "2.5"
								{"ShieldRechargeRate",							 "12"}, --Original "6"
								{"LaunchThrustersRegenTimePeriod",				"360"}, --Original "1440"

							}
						},

						--|----------------------------------------------------------------------------------------
						--| Landing Curves
						--|----------------------------------------------------------------------------------------

						{
							["PRECEDING_KEY_WORDS"] = {"PitchCorrectHeightCurve",},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Curve",			"EaseOutQuad"}, --"Squared"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LandingCurve",},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Curve",			"EaseOutQuad"}, --"SlowOut"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LandingCurveHeavy",},
							["VALUE_CHANGE_TABLE"]	=
							{
								{"Curve",			"EaseOutQuad"}, --"ReallySlowOut"
							}
						},

						--|----------------------------------------------------------------------------------------
						--| Fuel Saving
						--|----------------------------------------------------------------------------------------

						{
							["PRECEDING_KEY_WORDS"] = {""},
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"ExplorerTakeOffMod",					   _fuelMulti}, --Original "0.5"
								{"FighterTakeOffMod",					   _fuelMulti}, --Original "1"
								{"HaulerTakeOffMod",					   _fuelMulti}, --Original "1"
								{"RoyalTakeOffMod",						   _fuelMulti}, --Original "1"
								{"ShuttleTakeOffMod",					   _fuelMulti}	--Original "0.66"
							}
						},

						--|----------------------------------------------------------------------------------------
						--| Flight Control
						--|----------------------------------------------------------------------------------------

						{	--CONTROL SPACE ENGINE--
							["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxSpeed",							   _speedMult},
								{"MinSpeed",							   _min_Speed},
								{"BoostMaxSpeed",						   _speedMult},
								{"BoostFalloff",						   _boostFall},
								{"ReverseBrake",						   _rvrsBreak},
								{"OverspeedBrake",						   _overBreak},
								{"TurnBrakeMin",						   _brakeMult},
								{"TurnBrakeMax",						   _turnBreak},
								{"BoostThrustForce",					   _boostMult}
							}
						},
						{	--CONTROL PLANET ENGINE--
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxSpeed",							   _speedMult},
								{"MinSpeed",							   _min_Speed},
								{"BoostMaxSpeed",						   _speedMult},
								{"BoostFalloff",						   _boostFall},
								{"ReverseBrake",						   _rvrsBreak},
								{"OverspeedBrake",						   _overBreak},
								{"TurnBrakeMin",						   _brakeMult},
								{"TurnBrakeMax",						   _turnBreak},
								{"BoostThrustForce",					   _boostMult}
							}
						},
						{	--CONTROL COMBAT ENGINE--
							["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxSpeed",							   _speedMult},
								{"MinSpeed",							   _min_Speed},
								{"BoostMaxSpeed",						   _speedMult},
								{"BoostFalloff",						   _boostFall},
								{"ReverseBrake",						   _rvrsBreak},
								{"OverspeedBrake",						   _overBreak},
								{"TurnBrakeMin",						   _brakeMult},
								{"TurnBrakeMax",						   _turnBreak},
								{"BoostThrustForce",					   _boostMult}
							}
						},
						{	--CONTROL ATMOS COMBAT ENGINE--
							["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxSpeed",							   _speedMult},
								{"MinSpeed",							   _min_Speed},
								{"BoostMaxSpeed",						   _speedMult},
								{"BoostFalloff",						   _boostFall},
								{"ReverseBrake",						   _rvrsBreak},
								{"OverspeedBrake",						   _overBreak},
								{"TurnBrakeMin",						   _brakeMult},
								{"TurnBrakeMax",						   _turnBreak},
								{"BoostThrustForce",					   _boostMult}
							}
						},

						--|----------------------------------------------------------------------------------------
						--| Control Bonuses
						--|----------------------------------------------------------------------------------------

						{	--CONTROLBONUSC--
							["PRECEDING_KEY_WORDS"] = "ControlBonusC",
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",					   _boostMult},
								{"BoostMaxSpeedMin",					   _boostMult},
								{"MaxSpeedMax",							   _speedMult},
								{"MaxSpeedMin",							   _speedMult},
							}
						},
						{	--CONTROLBONUSB--
							["PRECEDING_KEY_WORDS"] = "ControlBonusB",
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",					   _boostMult},
								{"BoostMaxSpeedMin",					   _boostMult},
								{"MaxSpeedMax",							   _speedMult},
								{"MaxSpeedMin",							   _speedMult},
							}
						},
						{	--CONTROLBONUSA--
							["PRECEDING_KEY_WORDS"] = "ControlBonusA",
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",					   _boostMult},
								{"BoostMaxSpeedMin",					   _boostMult},
								{"MaxSpeedMax",							   _speedMult},
								{"MaxSpeedMin",							   _speedMult},
							}
						},
						{	--CONTROLBONUSS--
							["PRECEDING_KEY_WORDS"] = "ControlBonusS",
							["MATH_OPERATION"]		= "*",
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",					   _boostMult},
								{"BoostMaxSpeedMin",					   _boostMult},
								{"MaxSpeedMax",							   _speedMult},
								{"MaxSpeedMin",							   _speedMult},
							}
						}
					}
				},
			}
		},
	}
}