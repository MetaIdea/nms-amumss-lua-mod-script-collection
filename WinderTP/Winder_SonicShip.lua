NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "_Winder.SonicShip.pak",
["MOD_DESCRIPTION"]		= "Makes ships faster",
["MOD_AUTHOR"]			= "WinderTP",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= 
					{
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- MISCELLANEOUS, SELF-EXPLANATORY
								{"ShieldRechargeRate",					"15"},	
								{"MiniWarpSpeed",						"150000"},	
								{"MiniWarpHUDArrowAttractAngle",		"5"},	
								{"MiniWarpStoppingMarginPlanet",		"2000"},	
								{"MiniWarpMinPlanetDistance",			"300"},	
								{"MiniWarpStoppingMarginStation",		"1000"},	
								{"MiniWarpTrackingMargin",				"20"},	
								{"MiniWarpExitSpeed",					"750"},	
								{"LaunchThrustersRegenTimePeriod",		"480"},	
								-- MINIMUM HEIGHT SHIP CAN FLY AT ABOVE WATER LEVEL
								{"GroundHeightSoft",					"-150"},	
								{"GroundHeightHard",					"-175"},	
								-- {"GroundHeightHardHorizontal",		"0"},	
								{"GroundHeightPostCollisionMultiplier",	"NaN"},	
								{"GroundHeightPostCollisionMultiplierTime",	"1.5"},	
								{"GroundHeightDownSpeedMultiplier",		"NaN"},		
								{"GroundHeightBrakeMultiplier",			"NaN"},
								-- ORIENTATION LIMITS ON WATER
								{"PitchCorrectMaxDownAngleWater",		"90"},
								{"PitchCorrectSoftDownAngleWater",		"90"},	
								{"AutoLevelWaterAngle",					"NaN"},		
								-- ORIENTATION LIMITS ON TERRAIN
								-- {"PitchCorrectCockpitSpring",		"0"},
								{"PitchCorrectMaxDownAngle",			"90"},
								{"PitchCorrectSoftDownAngle",			"90"},
								{"CockpitRollAngleHmd",					"0"},
								{"CockpitRollAngle",					"0"},
								{"CockpitRollAngleExtra",				"0"},
								-- {"AcrobaticLowFlightLevel",			"NaN"},
								{"_3rdPersonRollAngle",					"0"},
								{"_3rdPersonRollAngleDropship",			"0"},
								{"_3rdPersonRollAngleScience",			"0"},
								{"_3rdPersonRollAngleAlien",			"0"},
								{"_3rdPersonPitchAngle",				"0"},
								{"_3rdPersonYawAngle",					"0"},
								{"CockpitRollMultiplierCentre",			"0"},
								{"CockpitRollMultiplierOpposite",		"0"},
								-- CRUISE SPEED CONTROL/BRAKING
								{"ShipPlanetBrakeMinSpeed",				"0"},
								{"ShipPlanetBrakeMaxSpeed",				"9999"},
								{"ShipPlanetBrakeMinHeight",			"5000"},
								-- {"ShipPlanetBrakeMaxHeight",			"-1"},
								-- {"ShipPlanetBrakeAlignMinTime",			"-1"},
								-- {"ShipPlanetBrakeAlignMaxTime",			"-1"},
								-- DISBALES AUTO-LEVELLING AFTER ROLLING SIDEWAYS
								{"BalanceTimeMin",					"9999"},
								{"BalanceTimeMax",					"9999"},
							}
						},
						-- SPEED/BRAKE ADJUSTMENTS
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"2"},	
								{"MinSpeed",		"0.05"},
								-- {"Falloff",			"1.75"},
								-- {"BoostFalloff",	"1.75"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"0.15"},
								{"DirectionBrakeMin",	"0"},
								{"DirectionBrake",		"0.95"},
								-- {"TurnBrakeMin",	"0"},
								-- {"TurnBrakeMax",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.75"},	
								{"MinSpeed",		"0.05"},
								-- {"Falloff",			"1.75"},
								-- {"BoostFalloff",	"1.75"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"0.3"},
								{"DirectionBrakeMin",	"0"},
								{"DirectionBrake",		"0.95"},
								-- {"TurnBrakeMin",	"0"},
								-- {"TurnBrakeMax",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"2"},	
								{"MinSpeed",		"0.05"},
								-- {"Falloff",			"1.75"},
								-- {"BoostFalloff",	"1.75"},
								{"ReverseBrake",	"1.5"},
								{"TurnBrakeMax",	"1.3"},
								{"DirectionBrakeMin",	"0"},
								{"DirectionBrake",		"0.95"},
								-- {"TurnBrakeMin",	"0"},
								-- {"TurnBrakeMax",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"2"},	
								{"MinSpeed",		"0.05"},
								-- {"BoostFalloff",	"1.75"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"0.15"},
								{"DirectionBrakeMin",	"0"},
								{"DirectionBrake",		"0.95"},
								-- {"TurnBrakeMin",	"0"},
								-- {"TurnBrakeMax",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"2"},	
								{"MinSpeed",		"0.05"},
								-- {"BoostFalloff",	"1.75"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"0.15"},
								{"DirectionBrakeMin",	"0"},
								{"DirectionBrake",		"0.95"},
								-- {"TurnBrakeMin",	"0"},
								-- {"TurnBrakeMax",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"2"},	
								{"MinSpeed",		"0.05"},
								-- {"BoostFalloff",	"1.75"},
								{"ReverseBrake",	"1.5"},
								{"TurnBrakeMax",	"1.3"},
								{"DirectionBrakeMin",	"0"},
								{"DirectionBrake",		"0.95"},
								-- {"TurnBrakeMin",	"0"},
								-- {"TurnBrakeMax",	"0"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.75"},	
								{"MaxSpeed",		"1.6"},	
								{"MinSpeed",		"-1"},
								-- {"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"2.25"},
								-- {"BoostFalloff",	"0.5"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"1.6"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.75"},	
								{"MaxSpeed",		"1.6"},	
								{"MinSpeed",		"-1"},
								-- {"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"2.25"},
								-- {"BoostFalloff",	"0.5"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"1.6"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.75"},	
								{"MaxSpeed",		"1.6"},	
								{"MinSpeed",		"-1"},
								-- {"MinSpeed",		"0.0025"},
								-- {"Falloff",			"0.7"},
								{"BoostMaxSpeed",	"1.9"},
								-- {"BoostFalloff",	"0.5"},
								{"ReverseBrake",	"1.5"},
								{"OverspeedBrake",	"1.6"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.6"},	
								{"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"1.35"},
								{"ReverseBrake",	"1.2"},
								-- {"OverspeedBrake",	"0.8"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.6"},	
								{"MinSpeed",		"-1"},
								-- {"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"1.35"},
								{"ReverseBrake",	"1.2"},
								-- {"OverspeedBrake",	"0.8"},
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.6"},	
								{"MinSpeed",		"-1"},
								-- {"MinSpeed",		"0.0025"},
								-- {"Falloff",			"0.7"},
								{"BoostMaxSpeed",	"1.5"},
								{"ReverseBrake",	"1.5"},
								-- {"OverspeedBrake",	"0.8"},
							}
						},
						-- ACCELERATION BONUSES BASED ON CLASS
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"45"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"80"},	
								{"ThrustForceMin",	"30"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"150"},	
								{"ThrustForceMin",	"75"},	
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"450"},	
								{"ThrustForceMin",	"90"},	
							}
						},
					},
				},				
			}
		}
	},
}