-- Tweak these options to your liking to remove unwanted functions from the mod

-- SPACE DRIFT
-- disables most turning brakes in space when not throttling
-- drifts when turning without accelerating
-- turning while accelerating will enable turning brakes again, resulting in more normal flying
SPACE_DORIFTO = true

-- SPACE DRIFT ADVANCED
-- completely disables turning brakes in space when not throttling
-- shoot backward and keep flying forward
-- controls will be pretty floaty
-- acceleration will eventuall straighten out trajectory
SPACE_DORIFTO_ADVANCED = true

-- DISABLE ORIENTATION LIMITS ON PLANETS
-- allows the ship to roll 360° on water
-- allows pointing the ship directly down at the ground
-- causes the ship to "sink" into the ground visually in 3rd person when touching the ground
SPEEN = true

-- PLANET CRUISE SPEED
-- no braking after throttle on planets
-- automatic cruise until boost/turn/roll on planets
-- go straight forever basically
CRUISE_SPEED = true

-- PULSE ENGINE CHANGES
-- way faster pulse
-- tighter waypoint snapping
-- start pulsing closer from planet surface/space station
FAST_PULSE = true

-- LOWFLIGHT
-- fly closer to the ground
-- (or maybe even into it)
LOWFLIGHT = true

-- FASTER SHIPS
-- makes ship go brrrr
FASTER_SHIPS = true

-- REVERSE ON PLANETS
-- allows ships to go backwards on planets
REVERSE_ON_PLANETS = true

-- MISCELLANEOUS
-- increase shield regen rate
-- increase launch thrusters regen time
BASICALLY_CHEATING = true



FINAL_CHANGES = {}

if FAST_PULSE then
table.insert(FINAL_CHANGES,
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MiniWarpSpeed",						"150000"},	
								{"MiniWarpHUDArrowAttractAngle",		"2"},	
								{"MiniWarpHUDArrowAttractAngleStation",	"2"},	
								{"MiniWarpHUDArrowAttractAngleDense",	"1"},	
								-- {"MiniWarpStoppingMarginPlanet",		"2000"},	
								{"MiniWarpMinPlanetDistance",			"300"},	
								{"MiniWarpStoppingMarginDefault",		"750"},	
								{"MiniWarpTrackingMargin",				"20"},	
								{"MiniWarpExitSpeed",					"450"},	
								{"MiniWarpExitTime",					"0.25"},	
								{"MiniWarpMarkerApproachSlowdown",		"0.1"},	
								-- {"MiniWarpMarkerAlignSlowdownRange",	"30"},	
								{"MiniWarpAlignSlerp",	"0.2"},	
								-- {"PulseDrivePlanetApproachMinAngle",	"60"},	
								-- {"PulseDrivePlanetApproachMaxAngle",	"90"},	
								-- {"PulseDrivePlanetApproachHeight",		"50000"},	
								{"MiniWarpPlanetRadius",				"200"},	
								{"MiniWarpStationRadius",				"200"},	
								{"EnablePulseDriveSpaceStationOrient",	"True"},	
								-- {"PulseDriveStationApproachAngleRange",	"75"},	
								-- {"PulseDriveStationApproachPerpAngleMin",	"60"},	
								-- {"PulseDriveStationApproachPerpAngleRange",	"60"},	
								-- {"PulseDriveStationApproachOffset",		"25000"},	
								-- {"PulseDriveStationApproachSlowdownRangeMin",	"2500"},	
								-- {"PulseDriveStationApproachSlowdownRange",	"7500"},	
								-- {"PulseDriveStationApproachSlowdown",	"0.0001"},	
							}
						}	)
end

if LOWFLIGHT then
table.insert(FINAL_CHANGES,
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- MINIMUM HEIGHT SHIP CAN FLY AT ABOVE WATER LEVEL
								{"GroundHeightSoft",					"-150"},	
								{"GroundHeightHard",					"-175"},	
								-- {"GroundHeightHardHorizontal",		"0"},	
								{"GroundHeightPostCollisionMultiplier",	"NaN"},	
								{"GroundHeightPostCollisionMultiplierTime",	"1.5"},	
								{"GroundHeightDownSpeedMultiplier",		"NaN"},		
								{"GroundHeightBrakeMultiplier",			"NaN"},
							}
						}	)
end

if SPEEN then
table.insert(FINAL_CHANGES,
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
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
								-- DISBALES AUTO-LEVELLING AFTER ROLLING SIDEWAYS
								{"BalanceTimeMin",					"9999"},
								{"BalanceTimeMax",					"9999"},
							}
						}	)
end

if CRUISE_SPEED then
table.insert(FINAL_CHANGES,
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- CRUISE SPEED CONTROL/BRAKING
								{"ShipPlanetBrakeMinSpeed",				"0"},
								{"ShipPlanetBrakeMaxSpeed",				"9999"},
								{"ShipPlanetBrakeMinHeight",			"5000"},
								-- {"ShipPlanetBrakeMaxHeight",			"-1"},
								{"ShipPlanetBrakeAlignMinTime",			"-1"},
								{"ShipPlanetBrakeAlignMaxTime",			"-1"},
								-- {"CruiseHeight",						"-1"},
								-- {"CruiseHeightRange",					"1000"},
								-- {"CruiseOffAngle",						"0"},
								-- {"CruiseOffAngleRange",					"0"},
								-- {"CruiseForce",							"50"},
							}
						}	)
end

if BASICALLY_CHEATING then
table.insert(FINAL_CHANGES,
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShieldRechargeRate",					"15"},	
								{"LaunchThrustersRegenTimePeriod",		"480"},	
							}
						}	)
end

if FASTER_SHIPS then
-- SPEED/BRAKE ADJUSTMENTS
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- GO FASTER
								{"MaxSpeed",		"2"},	
								{"MinSpeed",		"0.05"},
								-- {"Falloff",			"1.75"},
								-- {"BoostFalloff",	"1.75"},
								-- STOP QUICKER
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"0.15"},
							}
						}	)
table.insert(FINAL_CHANGES,
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
							}
						}	)
table.insert(FINAL_CHANGES,
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
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
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
							}
						}	)
table.insert(FINAL_CHANGES,
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
							}
						}	)
table.insert(FINAL_CHANGES,
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
							}
						}	)
table.insert(FINAL_CHANGES,
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
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxSpeed",		"2"},	
								{"MinSpeed",		"0.05"},
								-- {"BoostFalloff",	"1.75"},
								{"ReverseBrake",	"1.5"},
								{"TurnBrakeMax",	"1.3"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.75"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"2.25"},
								-- {"BoostFalloff",	"0.5"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"1.6"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.75"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"2.25"},
								-- {"BoostFalloff",	"0.5"},
								{"ReverseBrake",	"1.2"},
								{"OverspeedBrake",	"1.6"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.75"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								-- {"Falloff",			"0.7"},
								{"BoostMaxSpeed",	"1.9"},
								-- {"BoostFalloff",	"0.5"},
								{"ReverseBrake",	"1.5"},
								{"OverspeedBrake",	"1.6"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.75"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								-- {"Falloff",			"0.7"},
								{"BoostMaxSpeed",	"1.9"},
								-- {"BoostFalloff",	"0.5"},
								{"ReverseBrake",	"1.5"},
								{"OverspeedBrake",	"1.6"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"1.35"},
								{"ReverseBrake",	"1.2"},
								-- {"OverspeedBrake",	"0.8"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								{"BoostMaxSpeed",	"1.35"},
								{"ReverseBrake",	"1.2"},
								-- {"OverspeedBrake",	"0.8"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								-- {"Falloff",			"0.7"},
								{"BoostMaxSpeed",	"1.5"},
								{"ReverseBrake",	"1.5"},
								-- {"OverspeedBrake",	"0.8"},
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce",		"1.25"},	
								{"MaxSpeed",		"1.6"},	
								-- {"MinSpeed",		"0.0025"},
								-- {"Falloff",			"0.7"},
								{"BoostMaxSpeed",	"1.5"},
								{"ReverseBrake",	"1.5"},
								-- {"OverspeedBrake",	"0.8"},
							}
						}	)
-- ACCELERATION BONUSES BASED ON CLASS
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"45"},	
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"80"},	
								{"ThrustForceMin",	"30"},	
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"150"},	
								{"ThrustForceMin",	"75"},	
							}
						}	)
table.insert(FINAL_CHANGES,
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForceMax",	"450"},	
								{"ThrustForceMin",	"90"},	
							}
						}	)
end

if SPACE_DORIFTO then
table.insert(FINAL_CHANGES,
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["FOREACH_SKW_GROUP"] =
							{
								{"SpaceEngine", "GcPlayerSpaceshipEngineData.xml"},
								{"CombatEngine", "GcPlayerSpaceshipEngineData.xml"},
							},
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- SPACE DRIFTO
								{"DirectionBrakeMin",	"0"},
								{"DirectionBrake",		"0.95"},
							}
						}	)
end

if SPACE_DORIFTO_ADVANCED then
table.insert(FINAL_CHANGES,
						{
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["REPLACE_TYPE"] 	= "ALL",
							["FOREACH_SKW_GROUP"] =
							{
								{"SpaceEngine", "GcPlayerSpaceshipEngineData.xml"},
								{"CombatEngine", "GcPlayerSpaceshipEngineData.xml"},
							},
							["MATH_OPERATION"] 		= "*",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								-- SPACE DRIFTO
								{"TurnBrakeMin",	"0"},
								{"TurnBrakeMax",	"0.95"},
								-- {"ReverseBrake",	"0.2"},
							}
						}	)
end

if REVERSE_ON_PLANETS then
table.insert(FINAL_CHANGES,
						{
							-- ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
							["FOREACH_SKW_GROUP"] =
							{
								{"PlanetEngine", "GcPlayerSpaceshipEngineData.xml"},
								{"AtmosCombatEngine", "GcPlayerSpaceshipEngineData.xml"},
							},
							["REPLACE_TYPE"] 		= "ALL",
							["MATH_OPERATION"] 		= "*",
							["INTEGER_TO_FLOAT"]	= "FORCE",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MinSpeed",		"-1"},
							}
						}	)
end

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= "Winder_GalaxySFlightUltra.pak",
["MOD_BATCHNAME"]		= "~~GalaxySFlightUltra_COMPATIBILITY.pak",
["MOD_DESCRIPTION"]		= "Makes ships faster",
["MOD_AUTHOR"]			= "WinderTP, with references from JovianStone",
["NMS_VERSION"]			= "3.38.0.1",
["MODIFICATIONS"] 		= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"]	= FINAL_CHANGES
				}
			}
		}
	},
}