local modfilename = "_AlmostPerfectFlight"
local lua_author  = "Silent"
local lua_version = "v1.1"
local mod_author  = "Silent369"
local nms_version = "3.88"
local description = "Changes Ship Pulse Flight, Combat/Planet/Space Flight and Ship Hover Characteristics."

--=============================================================================================================================
_min_speed = 0.0001
_boostMult = 1.5
_brakeMult = 0.8
_speedMult = 2.5
_thrstMult = 3
_warpSMult = 4
_padTurnSp = 0.75
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
						{
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MinSpeed",		_min_speed}, --Hover Ability
								{"LowSpeedTurnDamper",	"0.01"},
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
								{"GroundHeightSoft",								  "7"}, --Original "20"
								{"GroundHeightSoftForce",							 "13"}, --Original "35"
								{"LandingHoverOffset",								  "1"}, --Original "3"
								{"LandingMaxSpeed",									 "60"}, --Original "80"
								{"LandingMaxAngle",									 "35"}, --Original "45"
								{"LandingMargin",									"2.4"}, --Original "1.4"
								{"LandingObstacleMinHeight",						"1.3"}, --Original "2"
								{"LandingTooManyLowPointsFraction",					  "0"}, --Original "0.3"
								{"LaunchThrustersRegenTimePeriod",					  "1"}, --Original "1440"
								{"AnomalyStationMaxApproachSpeed",					"120"}, --Original "60"
								{"BoostChargeRate",								    "5.0"}, --Original "2.5"
								{"BoostNoAsteroidRadius",						   "2000"}, --Original "1000"
								{"MaximumDistanceFromShipWhenExiting",				  "5"}, --Original "10"
								{"DockingRotateSpeed",						   _padTurnSp}, --Original "1"
								{"EngineJetLightIntensityMultiplier",				  "1"}, --Original "0.4"
								{"EngineEffectsThrustContribution",					  "1"}, --Original "0.5"
								{"HoverTakeoffHeight",								 "70"}, --Original "90"
								{"HoverAlignTime",									"0.5"}, --Original "0.7"
								{"HoverMinSpeed",							   _min_speed}, --Original "1"
								{"HoverLandReachedDistance",						  "2"}, --Original "4"
								{"HoverLandManeuvreTimeMin",						"0.5"}, --Original "0.7"
								{"LandingOnGroundTip",								"-22"}, --Original "-20"
								{"LandingCheckBuildingRadiusFactor",			   "0.75"}, --Original "1.1"
								{"LandingButtonMinTime",						   "0.25"}, --Original "0.5"
								{"LandHeightThreshold",								 "60"}, --Original "100"
								{"LandingPushNoseUpFactor",						  "-0.13"}, --Original "0.15"
								{"MiniWarpLinesNum",								  "1"}, --Original "4"
								{"MiniWarpFuelTime",							      "1"}, --Original "0.5"
								{"MiniWarpChargeTime",								"1.2"}, --Original "2"
								{"PadTurnSpeed",							   _padTurnSp}, --Original "1"
								{"PostWarpSlowDownTime",							"0.5"}, --Original "3"
								{"PulseDriveStationApproachSlowdownRange",		   "3500"}, --Original "5000"
								{"PulseDriveStationApproachSlowdownRangeMin",		"600"}, --Original "1000"
								{"TurnRudderStrength",								  "4"}, --Original "0.4"
								{"WarpInRange",									   "6000"}, --Original "10000"
								{"WarpInRangeFreighter",						   "3500"}, --Original "5000"
								{"WarpInRangeNexus",							   "3500"}, --Original "5000"
								{"WarpNexusDistance",							  "-6000"}, --Original "-9000"
								{"WarpNexusPitch",									  "0"}, --Original "15"
								{"WarpNexusRotation",								  "0"}, --Original "15"
								{"WarpOutRange",									"500"}, --Original "1000"

								--##### TAKE OFF COSTS
								--{"NormalModeTakeOffCostMultiplier",					  "0"}, --Original "1"
								--{"SurvivalTakeOffCostMultiplier",					  "0"}, --Original "2"
								--{"TakeOffCost",										  "0"}, --Original "100"

								--##### SLOWER AI TRADER FLYBY
								{"PlanetMinSpeed",									 "15"}, --Original "30"
								{"PlanetMaxSpeed",									 "40"}, --Original "80"
								{"PlanetBoostSpeed",								"100"}, --Original "200"

								--##### TAKE OFF MOD
								{"ExplorerTakeOffMod",								  "1"}, --Original "0.5"
								{"FighterTakeOffMod",								  "2"}, --Original "1"
								{"HaulerTakeOffMod",								  "2"}, --Original "1"
								{"RoyalTakeOffMod",									  "2"}, --Original "1"
								{"ShuttleTakeOffMod",							   "1.32"}, --Original "0.66"
							}
						},
						{	--CONTROL SPACE ENGINE--
							["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxSpeed",								   _speedMult},
								{"BoostMaxSpeed",							   _speedMult},
								{"DirectionBrakeMin",						   _speedMult},
								{"DirectionBrake",							   _speedMult},
								{"ReverseBrake",							   _speedMult},
								{"TurnStrength",							   _speedMult},
								{"TurnBrakeMin",							   _brakeMult},
								{"TurnBrakeMax",							   _brakeMult},
								{"BoostThrustForce",						   _boostMult}
							}
						},
						{	--CONTROL PLANET ENGINE--
							["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxSpeed",								   _speedMult},
								{"BoostMaxSpeed",							   _speedMult},
								{"DirectionBrakeMin",						   _speedMult},
								{"DirectionBrake",							   _speedMult},
								{"ReverseBrake",							   _speedMult},
								{"TurnStrength",							   _speedMult},
								{"TurnBrakeMin",							   _brakeMult},
								{"TurnBrakeMax",							   _brakeMult},
								{"BoostThrustForce",						   _boostMult}
							}
						},
						{	--CONTROL COMBAT ENGINE--
							["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"MaxSpeed",								   _speedMult},
								{"BoostMaxSpeed",							   _speedMult},
								{"DirectionBrakeMin",						   _speedMult},
								{"DirectionBrake",							   _speedMult},
								{"ReverseBrake",							   _speedMult},
								{"TurnStrength",							   _speedMult},
								{"TurnBrakeMin",							   _brakeMult},
								{"TurnBrakeMax",							   _brakeMult},
								{"BoostThrustForce",						   _boostMult}
							}
						},
						{	--CONTROLBONUSC--
							["PRECEDING_KEY_WORDS"]	= "ControlBonusC",
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",						   _boostMult},
								{"BoostMaxSpeedMin",						   _boostMult},
								{"MaxSpeedMax",								   _speedMult},
								{"MaxSpeedMin",								   _speedMult},
								{"ThrustForceMax",							   _thrstMult},
								{"ThrustForceMin",							   _thrstMult}
							}
						},
						{	--CONTROLBONUSB--
							["PRECEDING_KEY_WORDS"]	= "ControlBonusB",
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",						   _boostMult},
								{"BoostMaxSpeedMin",						   _boostMult},
								{"MaxSpeedMax",								   _speedMult},
								{"MaxSpeedMin",								   _speedMult},
								{"ThrustForceMax",							   _thrstMult},
								{"ThrustForceMin",							   _thrstMult}
							}
						},
						{	--CONTROLBONUSA--
							["PRECEDING_KEY_WORDS"]	= "ControlBonusA",
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",						   _boostMult},
								{"BoostMaxSpeedMin",						   _boostMult},
								{"MaxSpeedMax",								   _speedMult},
								{"MaxSpeedMin",								   _speedMult},
								{"ThrustForceMax",							   _thrstMult},
								{"ThrustForceMin",							   _thrstMult}
							}
						},
						{	--CONTROLBONUSS--
							["PRECEDING_KEY_WORDS"]	= "ControlBonusS",
							["REPLACE_TYPE"]		= "ALL",
							["MATH_OPERATION"]		= "*",
							["INTEGER_TO_FLOAT"]	= "PRESERVE",
							["VALUE_CHANGE_TABLE"]	=
							{
								{"BoostMaxSpeedMax",						   _boostMult},
								{"BoostMaxSpeedMin",						   _boostMult},
								{"MaxSpeedMax",								   _speedMult},
								{"MaxSpeedMin",								   _speedMult},
								{"ThrustForceMax",							   _thrstMult},
								{"ThrustForceMin",							   _thrstMult}
							}
						}
					}
				},
			}
		},
	}
}