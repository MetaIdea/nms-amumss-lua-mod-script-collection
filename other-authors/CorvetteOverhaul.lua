NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"]    = "CorvetteOverhaul_Ultimate.pak",
["MOD_AUTHOR"]      = "Goldenveins",
["NMS_VERSION"]     = "5.0+",
["MOD_DESCRIPTION"] = "Ultimate Corvette Overhaul - Doubled speeds with maximum immersion and cinematic feel",
["MODIFICATIONS"]   = 
    {
        {
            ["MBIN_CHANGE_TABLE"] = 
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        -- ========================================
                        -- CORVETTE SPACE ENGINE - DOUBLED SPEEDS
                        -- ========================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ThrustForce",         "80"},      -- Doubled from 40
                                {"MaxSpeed",            "360"},     -- DOUBLED from 180
                                {"BoostThrustForce",    "1000"},    -- Doubled from 500
                                {"BoostMaxSpeed",       "2200"},    -- DOUBLED from 1100
                            }
                        },
                        
                        -- ================================================
                        -- CORVETTE PLANET ENGINE - IMPROVED ATMOSPHERIC
                        -- ================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ThrustForce",         "50"},      -- Increased from 20
                                {"MaxSpeed",            "195"},     -- Increased from 130 (50% faster)
                                {"MinSpeed",            "1"},       -- Reduced from 20 (allows full stop)
                                {"BoostThrustForce",    "60"},      -- Increased from 20
                                {"BoostMaxSpeed",       "250"},     -- Increased from 185
                            }
                        },
                        
                        -- ========================================
                        -- CORVETTE COMBAT ENGINE - DOUBLED SPEEDS
                        -- ========================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ThrustForce",         "80"},      -- Doubled from 40
                                {"MaxSpeed",            "200"},     -- Doubled from 100
                                {"BoostThrustForce",    "1000"},    -- Doubled from 500
                                {"BoostMaxSpeed",       "2200"},    -- DOUBLED from 1100
                            }
                        },
                        
                        -- ===================================================
                        -- CORVETTE ATMOSPHERIC COMBAT - IMPROVED SPEEDS
                        -- ===================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ThrustForce",         "60"},      -- Increased from 40
                                {"MaxSpeed",            "140"},     -- Increased from 80 (75% faster)
                                {"BoostThrustForce",    "100"},     -- Doubled from 50
                                {"BoostMaxSpeed",       "200"},     -- Increased from 120
                            }
                        },
                        
                        -- ===================================================
                        -- MINIWARP SPEED - DOUBLED WITH SMOOTHER ARRIVAL
                        -- ===================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"MiniWarpSpeed",                   "100000"},  -- Doubled speed
                                {"MiniWarpStoppingMarginPlanet",    "8000"},    -- Increased from 5000 (earlier deceleration near planets)
                                {"MiniWarpStoppingMarginDefault",   "4500"},    -- Increased from 2500 (smoother general arrival)
                                {"MiniWarpStoppingMarginLong",      "5500"},    -- Increased from 3500 (smoother long-distance arrival)
                                {"MiniWarpExitSpeed ",              "600"},     -- Reduced from 1000 (gentler exit velocity) - note trailing space
                                {"MiniWarpExitTime ",               "0.8"},     -- Increased from 0.5 (longer, smoother deceleration) - note trailing space
                            }
                        },
                        
                        -- ===================================================
                        -- CORVETTE GROUND HEIGHT - INCREASED SAFETY BUFFER
                        -- ===================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"GroundHeightSoftCorvetteAutopilot",           "70.000000"},   -- Increased from 50 (higher soft limit)
                                {"GroundHeightSoftHorizontalCorvetteAutopilot", "45.000000"},   -- Increased from 30 (more horizontal clearance)
                                {"GroundHeightHardCorvetteAutopilot",           "45.000000"},   -- Increased from 30 (higher hard floor)
                                {"GroundHeightHardHorizontalCorvetteAutopilot", "30.000000"},   -- Increased from 20 (more horizontal safety)
                            }
                        },
                        
                        -- ===================================================
                        -- CORVETTE HANDLING - IMPROVED CONTROL & IMMERSION
                        -- ===================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"TurnStrength",        "0.750"},   -- Increased from 0.600 (25% better turning)
                                {"RollAmount",          "1.800"},   -- Increased from 1.500 (more responsive roll)
                                {"RollForce",           "1.200"},   -- Increased from 1.000 (quicker roll response)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"TurnStrength",        "0.850"},   -- Increased from 0.700 (better planetary turning)
                                {"LowSpeedTurnDamper",  "0.300"},   -- Reduced from 0.400 (less dampening = more control)
                                {"RollAmount",          "1.500"},   -- Increased from 1.250 (more roll authority)
                                {"RollForce",           "1.200"},   -- Increased from 1.000 (quicker roll)
                                {"DirectionBrake",      "0.650"},   -- Reduced from 0.800 (less drift, more precision)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"TurnStrength",        "1.150"},   -- Increased from 1.000 (better combat maneuverability)
                                {"RollAmount",          "1.800"},   -- Increased from 1.500 (more agile)
                                {"RollForce",           "1.200"},   -- Increased from 1.000 (snappier response)
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ControlCorvette", "GcPlayerSpaceshipControlData"},
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"TurnStrength",        "1.150"},   -- Increased from 1.000 (better atmospheric combat turns)
                                {"RollAmount",          "1.800"},   -- Increased from 1.500 (more responsive)
                                {"RollForce",           "1.200"},   -- Increased from 1.000 (quicker roll)
                            }
                        },
                        
                        -- ================================================================
                        -- CORVETTE LANDING - CINEMATIC & DRAMATIC SEQUENCES
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"CorvetteLandingRotateTime",       "7.000000"},    -- Increased from 4.0 (more dramatic, slower rotation)
                                {"CorvetteLandingRotateTilt",       "-0.450000"},   -- Increased from -0.3 (more pronounced nose-down tilt)
                                {"CorvetteLandingRotateNoseLiftAmount", "0.450000"}, -- Increased from 0.3 (more dramatic nose lift)
                                {"HoverLandManeuvreTimeCorvetteMultiplier", "2.500000"}, -- Increased from 2.0 (longer hover before touchdown)
                            }
                        },
                        
                        -- ================================================================
                        -- CORVETTE HOVER - SUBTLE SHIP "BREATHING" EFFECT
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"CorvetteHoverBobPosAmount",       "0.900000"},    -- Slightly increased from 0.8 (subtle vertical breathing)
                                {"CorvetteHoverBobPosSpeed",        "0.048000"},    -- Slightly reduced from 0.05 (slightly slower bob)
                                {"CorvetteHoverBobRotationAmount",  "0.022000"},    -- Slightly increased from 0.02 (minimal rotation sway)
                                {"CorvetteHoverBobRotationSpeed",   "0.001100"},    -- Slightly reduced from 0.0012 (slightly slower rotation)
                                {"CorvettePulseBoost",              "3.500000"},    -- Increased from 3.0 (more dramatic pulse drive)
                            }
                        },
                        
                        -- ================================================================
                        -- COCKPIT CAMERA - ENHANCED IMMERSION & WEIGHT FEEL
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"CockpitRollAngle",                "-12.500000"},  -- Increased from -10.5 (more cockpit roll feedback)
                                {"CockpitRollAngleExtra",           "2.800000"},    -- Increased from 2.0 (more roll emphasis)
                                {"CockpitRollTime",                 "1.500000"},    -- Increased from 1.2 (slower, heavier roll feel)
                                {"CockpitPitchCorrectAngle",        "2.000000"},    -- Reduced from 4.0 (lower view angle, ship centered on screen)
                                {"PitchCorrectCockpitSpring",       "2.000000"},    -- Reduced from 3.0 (slower camera pitch correction)
                            }
                        },
                        
                        -- ================================================================
                        -- ENGINE SHAKE & VIBRATION - POWERFUL ENGINE FEEL
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"ShakePowerScaler",                "1.200000"},    -- Increased from 0.7 (more engine vibration)
                                {"ShakeMaxPower",                   "1.800000"},    -- Increased from 1.3 (stronger max shake)
                                {"ShakeSpeed",                      "280.000000"},  -- Increased from 250 (faster vibration frequency)
                                {"ShakeMaxSpeed",                   "0.550000"},    -- Increased from 0.4 (more speed-based shake)
                            }
                        },
                        
                        -- ================================================================
                        -- COLLISION & PHYSICS - MASSIVE SHIP WEIGHT
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"CollisionRadiusMultiplier",       "1.250000"},    -- Increased from 1.1 (larger collision presence)
                                {"GroundHeightPostCollisionMultiplier", "2.500000"}, -- Increased from 2.0 (more aggressive recovery)
                                {"GroundHeightPostCollisionMultiplierTime", "4.000000"}, -- Increased from 3.0 (longer recovery period)
                            }
                        },
                        
                        -- ================================================================
                        -- POST-COLLISION DAMPENING - HEAVY SHIP RECOVERY
                        -- ================================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PostCollisionAngularFactor"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"X",                               "0.035000"},    -- Reduced from 0.05 (less tumbling on X)
                                {"Y",                               "0.035000"},    -- Reduced from 0.05 (less tumbling on Y)
                                {"Z",                               "0.035000"},    -- Reduced from 0.05 (less tumbling on Z)
                            }
                        },
                        
                        -- ================================================================
                        -- LOW ALTITUDE EFFECTS - ENHANCED ENVIRONMENTAL FEEDBACK
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"LowAltitudeAnimationHeight",      "1500.000000"}, -- Increased from 1200 (effects start higher)
                                {"LowAltitudeAnimationTime",        "7.500000"},    -- Increased from 6.0 (slower transition)
                                {"GroundNearEffectHeight",          "12.000000"},   -- Increased from 8.0 (ground effects further out)
                                {"GroundNearEffectRange",           "80.000000"},   -- Increased from 60 (wider effect range)
                            }
                        },
                        
                        -- ================================================================
                        -- AUTOPILOT - SMOOTH, CONFIDENT AUTOMATED FLIGHT
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"CorvetteAutopilotSpeed",          "120.000000"},  -- Increased from 60 (matches new planetary speeds)
                                {"CorvetteAutopilotSpeedSpace",     "450.000000"},  -- Increased from 240 (matches doubled space speeds)
                                {"AutoPilotAlignStrengthCorvetteAutopilot", "3.200000"}, -- Increased from 2.0 (more precise at higher speeds)
                                {"AutoPilotStoppingMargin",         "3500.000000"}, -- Increased from 2500 (more braking distance)
                                {"FreighterApproachDistanceMin",    "75.000000"},   -- Increased from 50 (more space when approaching)
                                {"FreighterApproachDistanceMax",    "400.000000"},  -- Increased from 300 (wider approach range)
                                {"FreighterApproachSpeedDamper",    "0.400000"},    -- Reduced from 0.5 (smoother speed reduction)
                                {"AutoPilotSmallShipAlignStrength", "1.200000"},    -- Keep vanilla (prevents aggressive camera snapping)
                                {"AutoPilotAlignStrength",          "3.000000"},    -- Keep vanilla (prevents camera angle issues)
                            }
                        },
                        
                        -- ================================================================
                        -- THIRD PERSON CAMERA - CINEMATIC ANGLES & MOVEMENT
                        -- ================================================================
                        {
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"3rdPersonRollAngleDropship",      "55.000000"},   -- Increased from 45 (more dramatic camera roll)
                                {"3rdPersonPitchAngle",             "10.000000"},   -- Reduced from 12 (less camera pitch response)
                                {"3rdPersonYawAngle",               "13.000000"},   -- Increased from 10 (more yaw feedback)
                                {"3rdPersonAngleSpringTime",        "0.600000"},    -- Reduced from 0.9 (faster camera return to neutral)
                                {"3rdPersonLowHeightSpringTime",    "1.000000"},    -- Reduced from 1.5 (faster low-altitude camera correction)
                                {"3rdPersonLowHeightOffsetY",       "-5.000000"},   -- Reduced from -2.0 (camera much higher at low altitude)
                                {"3rdPersonAvoidanceAdjustPitchFactor", "0.040000"}, -- Reduced from 0.08 (less pitch adjustment from avoidance)
                                {"3rdPersonHeightForceAdjustPitchFactor", "0.080000"}, -- Reduced from 0.15 (less pitch from height correction)
                            }
                        },
                        
                        -- ================================================================
                        -- POST-COLLISION DAMPENING - HEAVY SHIP RECOVERY
                        -- ================================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"PostCollisionAngularFactor"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                {"X",                               "0.035000"},    -- Reduced from 0.05 (less tumbling on X)
                                {"Y",                               "0.035000"},    -- Reduced from 0.05 (less tumbling on Y)
                                {"Z",                               "0.035000"},    -- Reduced from 0.05 (less tumbling on Z)
                            }
                        },
                    }
                },
                
                -- ========================================================================
                -- CAMERA GLOBALS - CINEMATIC CORVETTE CAMERA (SEPARATE FILE)
                -- ========================================================================
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = 
                    {
                        -- ================================================================
                        -- CORVETTE FOLLOW CAM - CINEMATIC FRAMING & SMOOTH TRACKING
                        -- ================================================================
                        {
                            ["SPECIAL_KEY_WORDS"] = {"CorvetteFollowCam", "GcCameraFollowSettings"},
                            ["VALUE_CHANGE_TABLE"] = 
                            {
                                -- VERTICAL POSITIONING - Much higher camera to push ship to bottom of screen
                                {"OffsetY",                         "20.000000"},   -- Greatly increased from 8.0 (very high camera position)
                                {"OffsetYMinSpeed",                 "8.000000"},    -- Greatly increased from 2.0 (high even when stationary)
                                {"UpMinDistance",                   "8.000000"},    -- Greatly increased from 2.0 (much more upward offset)
                                {"UpMaxDistance",                   "22.000000"},   -- Greatly increased from 10.0 (stays very high at speed)
                                {"UpGamma",                         "1.700000"},    -- Increased from 1.5 (smoother vertical curve)
                                
                                -- DISTANCE - Moderate distance for good ship visibility
                                {"BackMinDistance",                 "32.000000"},   -- Increased from 28.0
                                {"BackMaxDistance",                 "48.000000"},   -- Increased from 40.0
                                
                                -- PANNING - Wider, more cinematic movement
                                {"PanNear",                         "7.000000"},    -- Increased from 5.0 (more lateral movement close-up)
                                {"PanFar",                          "25.000000"},   -- Increased from 20.0 (wider panning at distance)
                                
                                -- CAMERA SMOOTHNESS - Film-quality motion
                                {"DistSpeed",                       "0.300000"},    -- Reduced from 0.4 (slower, smoother zoom)
                                {"DistStiffness",                   "1.500000"},    -- Reduced from 2.0 (less rigid, more fluid)
                                {"CenterBlendTime",                 "1.400000"},    -- Increased from 1.0 (smoother recentering)
                                {"CenterMaxSpring",                 "6.000000"},    -- Reduced from 8.0 (gentler spring motion)
                                {"CenterMaxSpeed",                  "4.000000"},    -- Reduced from 5.0 (slower, deliberate movement)
                                
                                -- VELOCITY ANTICIPATION - Predictive framing
                                {"VelocityAnticipate",              "0.220000"},    -- Increased from 0.17 (camera leads movement more)
                                {"VelocityAnticipateSpringSpeed",   "0.300000"},    -- Reduced from 0.4 (smoother anticipation)
                                {"VertMaxSpring",                   "4.500000"},    -- Reduced from 5.5 (gentler vertical tracking)
                                
                                -- VERTICAL ROTATION - Camera angle for crosshair position
                                {"VertRotationOffset",              "8.000000"},    -- Reduced from 20.0 (lower crosshair on screen)
                                {"VertRotationOffsetMinAngle",      "-35.000000"},  -- Increased from -30.0 (can look down more)
                                {"VertRotationOffsetMaxAngle",      "35.000000"},   -- Increased from 30.0 (can look up more)
                            }
                        },
                    }
                },
            }
        }
    }
}