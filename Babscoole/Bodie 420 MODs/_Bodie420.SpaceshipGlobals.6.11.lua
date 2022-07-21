NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "__Bodie420.SpaceshipGlobals.6.11.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.11",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["VALUE_CHANGE_TABLE"] = 	
							{
								{"LandingMaxSpeed",                          "2000"},   --Original  80
								{"OutpostDockSpeedAlignMinDistance",         "1"},      --Original  100
								{"OutpostDockSpeedAlignRange",               "3000"},   --Original  300
								{"WarpInRangeFreighter",                     "15000"},  --Original  5000
								{"WarpInRangeNexus",                         "15000"},  --Original  5000
								{"DirectionDockingIndicatorRange",           "5000"},   --Original  500
								{"PostWarpSlowDownTime",                     "1"},      --Original  3
								{"AutoLevelWaterMargin",                     "-500"},   --Original  0.5
								{"LandingButtonMinTime",                     "0.05"},   --Original  0.5
								{"NoBoostShipNearMinTime",                   "1"},      --Original  5
								{"NoBoostShipLastHitTime",                   "1"},      --Original  10
								{"NoBoostCombatEventMinBattleTime",          "1"},      --Original  35
								{"NoBoostCombatEventMinFreighterBattleTime", "1"},      --Original  55
								{"NoBoostCombatEventTime",                   "1"},      --Original  25
								{"NormalModeTakeOffCostMultiplier",          "0"},      --Original  1
								{"SurvivalTakeOffCostMultiplier",            "0"},      --Original  2
								{"MiniWarpSpeed",                            "999999"}, --Original  30000
								{"DirectionDockingInfoRange",                "1500"},   --Original  1000
								{"DockingRotateSpeed",                       "3"},      --Original  1
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "999999"}, -- Original 180
								{"BoostThrustForce", "1000"},   -- Original 500
								{"BoostMaxSpeed",    "999999"}, -- Original 1200			
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "9999"}, -- Original 125
								{"BoostThrustForce", "500"},  -- Original 100
								{"BoostMaxSpeed",    "9999"}, -- Original 155			
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "Control", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "9999"}, -- Original 80
								{"BoostThrustForce", "1000"}, -- Original 500
								{"BoostMaxSpeed",    "9999"}, -- Original 1200		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "999999"}, -- Original 180
								{"BoostThrustForce", "1000"},   -- Original 500
								{"BoostMaxSpeed",    "999999"}, -- Original 1300			
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "9999"}, -- Original 125
								{"BoostThrustForce", "500"},  -- Original 200
								{"BoostMaxSpeed",    "9999"}, -- Original 150			
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlLight", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "9999"}, -- Original 80
								{"BoostThrustForce", "1000"}, -- Original 500
								{"BoostMaxSpeed",    "9999"}, -- Original 1300		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "SpaceEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "99999"}, -- Original 180
								{"BoostThrustForce", "1000"},  -- Original 500
								{"BoostMaxSpeed",    "99999"}, -- Original 1100			
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "PlanetEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "9999"}, -- Original 130
								{"BoostThrustForce", "500"},  -- Original 20
								{"BoostMaxSpeed",    "9999"}, -- Original 185		
							}
						},
						{
						["PRECEDING_KEY_WORDS"] = { "ControlHeavy", "CombatEngine" },
						["VALUE_CHANGE_TABLE"] = 
							{
								{"MaxSpeed",         "9999"}, -- Original 80
								{"BoostThrustForce", "1000"}, -- Original 500
								{"BoostMaxSpeed",    "9999"}, -- Original 1100		
							}
						},							
					}
				}
			}
		}
	}	
}