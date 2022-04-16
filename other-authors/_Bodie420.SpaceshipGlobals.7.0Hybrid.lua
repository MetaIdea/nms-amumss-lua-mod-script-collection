NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Bodie420.8xSpeed+3xPulse.Ship.7.0.pak",
["MOD_DESCRIPTION"]			= "",
["MOD_AUTHOR"]				= "Bodie420",
["LUA_AUTHOR"]				= "Babscoole+DeathWrench",
["NMS_VERSION"]				= "8.5",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"LandingMaxSpeed", "1000"},  --Original  80
								{"LandingObstacleMinHeight", "2000"},  --Original  2
								{"MaximumDistanceFromShipWhenExiting", "2"},  --Original  10
								{"MaximumHeightWhenExitingShip", "2"},  --Original  5
								{"OutpostDockSpeedAlignMinDistance", "1"},  --Original  100
								{"OutpostDockSpeedAlignRange", "1000"},  --Original  300
								{"WarpInTimeFreighter", "0.1"},  --Original  1
								{"WarpInFlashTimeFreighter", "0.1"},  --Original  0.98
								{"WarpInTime", "0.1"},  --Original  1
								{"WarpOutTime", "0.1"},  --Original  1
								{"WarpInTimeNexus", "0.1"},  --Original  1
								{"WarpInFlashTimeNexus", "0.1"},  --Original  0.98
								{"WarpNexusRotation", "0.1"},  --Original  15
								{"WarpNexusPitch", "0.1"},  --Original  15
								{"WarpNexusDistance", "-8000"},  --Original  -9000
								--{"PulseDrivePlanetApproachHeight", "2000"},  --Original  6000
								{"HoverMinSpeed", "0"},  --Original  1
								{"LandingCheckBuildings", "false"},  --Original  true
								{"LandingCheckBuildingsRadiusFactor", "0.75"},  --Original  1.1
								{"AutoLevelWaterMargin", "-500"},  --Original  0.5
								{"LandingButtonMinTime", "0.05"},  --Original  0.5
								{"LockTargetMinDistance", "1"},  --Original  0.5
								{"NoBoostStationDistance", "0.1"},  --Original  5
								{"NoBoostAnomalyDistance", "0.1"},  --Original  10
								{"NoBoostSpaceAnomalyDistance", "0.1"},  --Original  10
								{"NoBoostFreighterDistance", "0.1"},  --Original  10
								{"NoBoostShipNearMinTime", "0.1"},  --Original  5
								{"NoBoostShipLastHitTime", "0.1"},  --Original  10
								{"NoBoostCombatEventMinBattleTime", "0.1"},  --Original  35
								{"NoBoostCombatEventMinFreighterBattleTime", "0.1"},  --Original  55
								{"NoBoostCombatEventTime", "0.1"},  --Original  25
								{"NormalModeTakeOffCostMultiplier", "0"},  --Original  1
								{"SurvivalTakeOffCostMultiplier", "0"},  --Original  2
								{"TakeOffCost", "0"},  --Original  100
								{"MiniWarpFuelTime", "999999"},  --Original  0.5
								{"MiniWarpChargeTime", "0.1"},  --Original  2
								{"MiniWarpSpeed", "99999"},  --Original  30000
								{"MiniWarpTime", "0.1"},  --Original  10
								{"MiniWarpCooldownTime",			"0.1"},	 --Original 2
								{"LaserOverheatTime", "0"},  --Original  1
								{"LaserOverheatDownTime", "0"},  --Original  0.6
								{"LaserFireTime", "999"},  --Original  5
								{"LaserWaitTime", "0"},  --Original  0.6
								{"ProjectileOverheatTime", "999"},  --Original 5
								{"ProjectileFireRate", "2"},  --Original  0.6
								{"ProjectileReloadTime", "1"},  --Original  1
								{"ProjectileClipSize", "5000"},  --Original  0.6
								{"SummonShipAnywhereRangeMax", "1000"},  --Original  1
								{"SummonShipAnywhereRangeMin", "1"},  --Original  0.6
								{"AnomalyStationMaxApproachSpeed", "600"},  --Original  5
								{"LandGroundTakeOffTime", "0.1"},  --Original  0.6
								{"LandSlopeMax", "80"},  --Original 5
								{"TragetLockChangeTime", "0.1"},  --Original  0.6
								{"TargetLockChangeTime", "0.1"},  --Original  1
								{"BoostChargeRate", "999"},  --Original  0.6
								{"DamageMinHitTime", "0"},  --Original  1
								{"DamageMaxHitTime", "1"},  --Original  0.6
								{"DamageMinWoundTime", "0"},  --Original  0.6
								{"DockingRotateSpeed", "9"},  --Original  1
								{"DockingRotateSpeedVR", "9"},  --Original  0.6
								{"AtmosphereSpeed", "1000"},  --Original  100
								{"FreighterSpeed", "99"},  --Original  25
								{"ShipEnterRange", "700"},	 --Original 7
								{"ShipEnterTransitionTime", "0.1"},	 --Original 0.3
								{"ShipEnterSpeed", "99"},  --Original  15
								{"ShipEnterMinTime", "0.05"},  --Original  0.5
								{"LaunchThrustersMinimumSummonPercentage", "0"},  --Original  25
								{"LaunchThrustersSummonCostMultiplier", "0"},  --Original  1
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "320"},  -- Original 40
								{"MaxSpeed", "1440"},  -- Original 180
								{"MinSpeed", "0"},  -- Original 1
								{"BoostThrustForce", "4000"},  -- Original 500
								{"BoostMaxSpeed", "9600"},  -- Original 1200	
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "160"},  -- Original 20
								{"MaxSpeed", "1000"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 1
								{"BoostThrustForce", "800"},  -- Original 100
								{"BoostMaxSpeed", "1240"},  -- Original 155		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "320"},  -- Original 40
								{"MaxSpeed", "1440"},  -- Original 80
								{"MinSpeed", "0"},  -- Original 50
								{"BoostThrustForce", "4000"},  -- Original 500
								{"BoostMaxSpeed", "9600"},  -- Original 1200		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "320"},  -- Original 40
								{"MaxSpeed", "1440"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "4000"},  -- Original 400
								{"BoostMaxSpeed", "9600"},  -- Original 1300	
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "160"},  -- Original 40
								{"MaxSpeed", "1000"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "800"},  -- Original 200
								{"BoostMaxSpeed", "1240"},  -- Original 150		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "320"},  -- Original 40
								{"MaxSpeed", "1440"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "4000"},  -- Original 200
								{"BoostMaxSpeed", "9600"},  -- Original 150		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "320"},  -- Original 40
								{"MaxSpeed", "1440"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "4000"},  -- Original 200
								{"BoostMaxSpeed", "9600"},  -- Original 150		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "160"},  -- Original 20
								{"MaxSpeed", "1000"},  -- Original 130
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "800"},  -- Original 20
								{"BoostMaxSpeed", "1240"},  -- Original 185		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "320"},  -- Original 40
								{"MaxSpeed", "1440"},  -- Original 80
								{"MinSpeed", "0"},  -- Original 50
								{"BoostThrustForce", "4000"},  -- Original 500
								{"BoostMaxSpeed", "9600"},  -- Original 1100		
							}
						},							
					}
				}
			}
		}
	}	
}
