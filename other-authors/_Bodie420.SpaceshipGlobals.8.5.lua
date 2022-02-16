NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "_Bodie420.SpaceshipGlobals.8.5.pak",
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
								{"LandingMaxSpeed", "1000"}, -- Original 300
								{"MaximumDistanceFromShipWhenExiting", "2"}, -- Original 100
								{"MaximumHeightWhenExitingShip", "2"}, -- Original 300
								{"OutpostDockSpeedAlignMinDistance", "1"}, -- Original 100
								{"OutpostDockSpeedAlignRange", "1000"}, -- Original 300
								{"WarpInTimeFreighter", "0.1"}, -- Original 1
								{"WarpInFlashTimeFreighter", "0.1"}, -- Original 0.98
								{"WarpInTimeNexus", "0.1"}, -- Original 1
								{"WarpInFlashTimeNexus", "0.1"}, -- Original 0.98
								{"WarpNexusRotation", "1"}, -- Original 15
								{"WarpNexusPitch", "1"}, -- Original 15
								{"WarpNexusDistance", "-8000"}, -- Original -9000
								{"LockTargetMinDistance", "1"}, -- Original 100
								{"LandingCheckBuildings", "false"}, -- Original true
								{"LandingButtonMinTime", "0.05"}, -- Original 0.5
								{"LockTargetMinDistance", "1"}, -- Original 100
								{"NoBoostStationDistance", "0.1"}, -- Original 2000
								{"NoBoostAnomalyDistance", "0.1"}, -- Original 3000
								{"NoBoostSpaceAnomalyDistance", "0.1"}, -- Original 3000
								{"NoBoostFreighterDistance", "0.1"}, -- Original 800
								{"NoBoostShipDistance", "0.1"}, -- Original 2000
								{"NoBoostShipNearMinTime", "0.1"}, -- Original 5
								{"NoBoostShipLastHitTime", "0.1"}, -- Original 10
								{"NoBoostCombatEventMinBattleTime", "0.1"}, -- Original 35
								{"NoBoostCombatEventMinFreighterBattleTime", "0.1"}, -- Original 55
								{"NoBoostCombatEventTime", "0.1"}, -- Original 25
								{"NormalModeTakeOffCostMultiplier", "0"}, -- Original 1
								{"SurvivalTakeOffCostMultiplier", "0"}, -- Original 2
								{"TakeOffCost", "0"}, -- Original 100
								{"MiniWarpFuelTime", "999999"}, -- Original 0.5
								{"MiniWarpChargeTime", "0.01"}, -- Original 2
								{"MiniWarpSpeed", "99999"}, -- Original 30000
								{"MiniWarpTime", "0.1"}, -- Original 10
								{"MiniWarpCooldownTime", "0.1"}, -- Original 2
								{"AnomalyStationMaxApproachSpeed", "6000"}, -- Original 60
								{"BoostChargeRate", "100"}, -- Original 2.5
								{"DockingRotateSpeed", "9"}, -- Original 1
								{"DockingRotateSpeedVR", "9"}, -- Original 0.6
								{"ShipEnterRange", "70"}, -- Original 7
								{"ShipEnterSpeed", "99"}, -- Original 15
								{"ShipEnterMinTime", "0.05"}, -- Original 0.5
								{"LaunchThrustersMinimumSummonPercentage", "0"}, -- Original 25
								{"LaunchThrustersSummonCostMultiplier", "0"}, -- Original 1
							}
								
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "999"},  -- Original 40
								{"MaxSpeed", "99999"},  -- Original 180
								{"MinSpeed", "0"},  -- Original 1
								{"BoostThrustForce", "1000"},  -- Original 500
								{"BoostMaxSpeed", "4800"},  -- Original 1200	
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "99"},  -- Original 20
								{"MaxSpeed", "9999"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 1
								{"BoostThrustForce", "200"},  -- Original 100
								{"BoostMaxSpeed", "620"},  -- Original 155		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "999"},  -- Original 40
								{"MaxSpeed", "99999"},  -- Original 80
								{"MinSpeed", "0"},  -- Original 50
								{"BoostThrustForce", "1000"},  -- Original 500
								{"BoostMaxSpeed", "4800"},  -- Original 1200		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "999"},  -- Original 40
								{"MaxSpeed", "99999"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "1000"},  -- Original 400
								{"BoostMaxSpeed", "5200"},  -- Original 1300	
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "99"},  -- Original 40
								{"MaxSpeed", "9999"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "400"},  -- Original 200
								{"BoostMaxSpeed", "600"},  -- Original 150		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "999"},  -- Original 40
								{"MaxSpeed", "99999"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "1000"},  -- Original 200
								{"BoostMaxSpeed", "5200"},  -- Original 150		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "999"},  -- Original 40
								{"MaxSpeed", "99999"},  -- Original 125
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "1000"},  -- Original 200
								{"BoostMaxSpeed", "4400"},  -- Original 150		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "99"},  -- Original 20
								{"MaxSpeed", "9999"},  -- Original 130
								{"MinSpeed", "0"},  -- Original 20
								{"BoostThrustForce", "40"},  -- Original 20
								{"BoostMaxSpeed", "740"},  -- Original 185		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ThrustForce", "999"},  -- Original 40
								{"MaxSpeed", "99999"},  -- Original 80
								{"MinSpeed", "0"},  -- Original 50
								{"BoostThrustForce", "1000"},  -- Original 500
								{"BoostMaxSpeed", "4400"},  -- Original 1100		
							}
						},							
					}
				}
			}
		}
	}	
}
