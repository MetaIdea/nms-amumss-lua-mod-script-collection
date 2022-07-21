NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "_Bodie420.NoDrones!.1.1.pak",
["MOD_DESCRIPTION"] = "",
["MOD_AUTHOR"]      = "Bodie420",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "1.1",
["MODIFICATIONS"]   = 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"]  = "GCROBOTGLOBALS.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["INTEGER_TO_FLOAT"] = "FORCE",								
							["VALUE_CHANGE_TABLE"] 	= 	
							{
								{"DroneSearchPickNearbyTime",               "999999"}, -- Original  6
								{"DroneSearchPickNearbyAngleMin",           "0"},      -- Original  5
								{"DroneSearchPickNearbyAngleMax",           "0"},      -- Original  40
								{"DroneInvestigateMinWitnessRange",         "999999"}, -- Original  22
								{"DroneInvestigateMinWitnessTime",          "999999"}, -- Original  10
								{"DroneInvestigateSpeedBoost",              "0"},      -- Original  2.5
								{"DroneInvestigateSpeedBoostStartDistance", "0"},      -- Original  20
								{"DroneInvestigateSpeedBoostRange",         "0"},      -- Original  100
								{"DroneCrimePostInvestigateWaitTime",       "1"},      -- Original  20
								{"DroneSpawnTime",                          "999999"}, -- Original  2
								{"DroneSpawnFadeTime",                      "0.0008"}, -- Original  0.8
								{"LineOfSightReturnCheckMinDistance",       "999999"}, -- Original  5
								{"LineOfSightReturnCheckRadius",            "999999"}, -- Original  1
								{"LineOfSightReturnRange",                  "999999"}, -- Original  1
								{"RobotSightAngle",                         "0"},      -- Original  80
								{"QuadLookAngleMin",                        "0"},      -- Original  40
								{"QuadLookAngleMax",                        "0"},      -- Original  90
								{"CombatWaveSpawnTime",                     "999999"}, -- Original  10
								{"DronePerceptionMinHearingSpeed",          "999999"}, -- Original  1
								{"DroneSearchLookSpeed",                    "0.0002"}, -- Original  0.2
								{"DroneSearchLookDistance",                 "1"},      -- Original  80
								{"DroneCrimeWitnessLimit",                  "0"},      -- Original  3
								{"DroneCrimeWitnessInvestigateDistance",    "999999"}, -- Original  30
								{"DroneCrimeProximityMultiplier",           "0.01"},   -- Original  3
								{"DroneSeriousCrimeStep",                   "6"},      -- Original  4
								{"DroneHealth",                             "1"},      -- Original  2800
								{"CorruptedDroneHealth",                    "1"},      -- Original  4500
								{"QuadHealth",                              "1"},      -- Original  7000
								{"WalkerHealth",                            "1"},      -- Original  30000
								{"DroneHealthSwarm",                        "1"},      -- Original  1400
								{"QuadHealthSwarm",                         "1"},      -- Original  3500
								{"WalkerHealthSwarm",                       "1"},      -- Original  22000
								{"WalkerEnergyLength",                      "0.1"},    -- Original  8
								{"WalkerEnergySpeedMin",                    "0.1"},    -- Original  1.2
								{"WalkerEnergySpeedMax",                    "0.1"},    -- Original  200
								{"WalkerEnergyRadiusStartMin",              "0"},      -- Original  150
								{"WalkerEnergyRadiusStartMax",              "0"},      -- Original  150
								{"WalkerEnergyMinAlpha",                    "0"},      -- Original  0.6
								{"WalkerEnergyMaxAlpha",                    "0"},      -- Original  1
								{"CriticalHitSizeDrone",                    "99"},     -- Original  0.15
								{"CriticalHitSizeQuad",                     "99"},     -- Original  0.25
								{"CriticalHitSizeWalker",                   "99"},     -- Original  1.5  
							}
						},
					}
				},
			}
		}
	}	
}