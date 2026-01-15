-- =====================================================
-- KRYPTON ULTIMATE JETPACK & FLIGHT OVERHAUL (v3.8)
-- "Preserved Original Settings with Rigid Camera Fixes"
-- =====================================================

-- JETPACK FUEL
local JET_FILL                = "999"      
local JET_FILL_MIDAIR         = "999"      
local JET_MIN_LEVEL           = "0.01"     
local JET_DRAIN_RATE          = "0.01"     

-- REGULAR JETPACK
local JET_UP_FORCE            = "70"        
local JET_IGNITION_FORCE      = "100"       
local JET_MAX_SPEED           = "60"        
local JET_MAX_UPSPEED         = "60"        
local JET_BRAKE               = "2.0"       
local JET_FORCE               = "60"        
local JET_DRAIN_HORIZONTAL    = "0.3"       
local JET_IGNITION_TIME       = "0.2"       
local JET_MIN_IGNITION_TIME   = "0.05"      
local JET_UNDERWATER_DRAIN    = "0.01"      

-- ROCKET BOOTS
local ROCKET_BOOTS_ENABLED    = "True"
local ROCKET_IMPULSE          = "8.0"       
local ROCKET_BOOST_FORCE      = "120"       
local ROCKET_DRIFT_FORCE      = "50"        
local ROCKET_MAX_SPEED         = "35"        
local ROCKET_MIN_HEIGHT       = "0.5"       
local ROCKET_MAX_HEIGHT       = "2.0"       
local ROCKET_BOOST_DRAIN      = "3"         
local ROCKET_DRIFT_DRAIN      = "0.5"       

-- MOVEMENT & PHYSICS
local MAX_FALL_SPEED          = "50"        
local NO_PANIC_TIME           = "9999"      
local HARD_LAND_MIN           = "999"       
local HARD_LAND_MAX           = "9999"      
local HARD_LAND_TIME          = "0"         

-- SPACEWALK ENHANCEMENTS
local SPACE_GRAVITY_MAX       = "0"         
local SPACE_GRAVITY_MIN       = "0"         

-- SHIP ENHANCEMENTS
local MINI_WARP_SPEED         = "120000"
local LANDING_MAX_SPEED       = "240"
local LANDING_MAX_ANGLE       = "90"
local HOVER_TAKEOFF_HEIGHT    = "150"
local GROUND_HEIGHT_SOFT      = "5"
local GROUND_HEIGHT_HARD      = "1"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "Goldenveins_Rocket_Final_Fixed.pak",
    ["MOD_AUTHOR"]      = "Goldenveins & Gemini",
    ["MODIFICATIONS"]   = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"JetpackFillRate",             JET_FILL},
                                {"JetpackFillRateMidair",        JET_FILL_MIDAIR},
                                {"JetpackMinLevel",              JET_MIN_LEVEL},
                                {"JetpackDrainRate",             JET_DRAIN_RATE},
                                {"JetpackUpForce",              JET_UP_FORCE},
                                {"JetpackMaxSpeed",              JET_MAX_SPEED},
                                {"JetpackMaxUpSpeed",            JET_MAX_UPSPEED},
                                {"JetpackBrake",                JET_BRAKE},
                                {"JetpackForce",                JET_FORCE},
                                {"JetpackDrainHorizontalFactor", JET_DRAIN_HORIZONTAL},
                                {"JetpackUnderwaterDrainRate",   JET_UNDERWATER_DRAIN},
                                {"JetpackIgnitionForce",         JET_IGNITION_FORCE},
                                {"JetpackIgnitionTime",          JET_IGNITION_TIME},
                                {"JetpackMinIgnitionTime",       JET_MIN_IGNITION_TIME},
                                {"RocketBootsEnabled",           ROCKET_BOOTS_ENABLED},
                                {"RocketBootsImpulse",           ROCKET_IMPULSE},
                                {"RocketBootsBoostForce",        ROCKET_BOOST_FORCE},
                                {"RocketBootsDriftForce",        ROCKET_DRIFT_FORCE},
                                {"RocketBootsMaxSpeed",          ROCKET_MAX_SPEED},
                                {"RocketBootsMinDesiredHeight",  ROCKET_MIN_HEIGHT},
                                {"RocketBootsMaxDesiredHeight",  ROCKET_MAX_HEIGHT},
                                {"RocketBootsBoostTankDrainSpeed", ROCKET_BOOST_DRAIN},
                                {"RocketBootsDriftTankDrainSpeed", ROCKET_DRIFT_DRAIN},
                                {"MaxFallSpeed",                 MAX_FALL_SPEED},
                                {"HardLandMin",                  HARD_LAND_MIN},
                                {"HardLandMax",                  HARD_LAND_MAX},
                                {"HardLandTime",                 HARD_LAND_TIME},
                                {"SpaceMaxGravityDist",          SPACE_GRAVITY_MAX},
                                {"SpaceMinGravityDist",          SPACE_GRAVITY_MIN},
                                {"UnderwaterMaxJetpackSpeed",    "20"},
                                {"UnderwaterForce",              "25"},
                                -- ADDED FOV LOCKS
                                {"SpeedFOVMaxChange",           "0"},
                                {"FOVRangeSpeedFactor",         "0"}
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCHARACTERGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TimeNotOnGroundToBeConsideredInAir",  NO_PANIC_TIME},
                                {"TimeFallingUntilPanic",                NO_PANIC_TIME},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MiniWarpSpeed",                   MINI_WARP_SPEED},
                                {"LandingMaxSpeed",                 LANDING_MAX_SPEED},
                                {"LandingMaxAngle",                 LANDING_MAX_ANGLE},
                                {"HoverTakeoffHeight",              HOVER_TAKEOFF_HEIGHT},
                                {"GroundHeightSoft",                GROUND_HEIGHT_SOFT},
                                {"GroundHeightHard",                GROUND_HEIGHT_HARD},
                                {"NoBoostFreighterDistance",        "100"},
                                {"NoBoostAnomalyDistance",          "500"},
                                {"NoBoostSpaceAnomalyDistance",     "500"},
                                {"ShakePowerScaler",                "0.0"},
                                {"ShakeMaxPower",                   "0.0"},
                                {"ShakeMaxSpeed",                   "0.0"},
                                {"CorvettePulseBoost",              "3.0"},
                                {"FreighterCombatSpeedMul",          "1.45"},
                                {"FreighterCombatBoostMul",          "1.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ThrustForce",         "80"},
                                {"MaxSpeed",            "300"},
                                {"BoostMaxSpeed",       "900"},
                                {"BoostThrustForce",    "400"},
                            }
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CHARFALL"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"BackMinDistance", "4.0"},
                                {"BackMaxDistance", "4.0"},
                                {"UpMaxDistance",   "0.0"},
                                {"VertMaxSpring",   "0"},     -- Set to 0 to fix wobble
                                {"VertMinSpring",   "0"},     -- Set to 0 to fix wobble
                                {"DistSpeed",       "5.0"},
                                {"DistSpeedOutsideMainRange", "5.0"}
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "CHARJETPACK"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"BackMinDistance", "4.0"},
                                {"BackMaxDistance", "4.0"},
                                {"UpMaxDistance",   "0.0"},
                                {"VertMaxSpring",   "0"},     -- Set to 0 to fix wobble
                                {"VertMinSpring",   "0"},     -- Set to 0 to fix wobble
                                {"DistSpeed",       "5.0"},
                                {"DistSpeedOutsideMainRange", "5.0"},
                                {"CenterStartTime", "9999.0"}
                            }
                        }
                    }
                }
            }
        }
    }
}