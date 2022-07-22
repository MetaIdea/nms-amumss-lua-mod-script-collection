local modfilename = "_AlmostPerfectFlight"
local lua_author  = "Silent"
local lua_version = "v1.4"
local mod_author  = "Silent369"
local nms_version = "3.94"
local description = "Changes Ship Pulse Flight, Combat/Planet/Space Flight and Ship Hover Characteristics."

--=============================================================================================================================
_min_speed = 0.01
_boostMult = 1.8
_brakeMult = 0.8
_lsptrnDmp = 0.01
_speedMult = 3.2
_thrstMult = 2.5
_turnBMult = 0.5
_warpSMult = 4
_padTurnSp = 0.75
_fuelMulti = 0.05 --95% cost saving on launch
--=============================================================================================================================

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]              = lua_author,
    ["MOD_AUTHOR"]              = mod_author,
    ["NMS_VERSION"]             = nms_version,
    ["MOD_DESCRIPTION"]         = description,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {"GCSPACESHIPGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MiniWarpSpeed",   _warpSMult}, --(30000 x _warpSMult)
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
                                {"GroundHeightSoft",                              "7"}, --Original "20"
                                {"GroundHeightSoftForce",                        "10"}, --Original "35"
                                {"LandingHoverOffset",                            "1"}, --Original "3"
                                {"LandingMaxSpeed",                              "60"}, --Original "80"
                                {"LandingMaxAngle",                              "35"}, --Original "45"
                                {"LandingMargin",                               "2.4"}, --Original "1.4"
                                {"LandingObstacleMinHeight",                    "1.3"}, --Original "2"
                                {"LandingTooManyLowPointsFraction",               "0"}, --Original "0.3"
                                {"LaunchThrustersRegenTimePeriod",                "1"}, --Original "1440"
                                {"AnomalyStationMaxApproachSpeed",              "120"}, --Original "60"
                                {"BoostChargeRate",                             "5.0"}, --Original "2.5"
                                {"BoostNoAsteroidRadius",                      "2000"}, --Original "1000"
                                {"MaximumDistanceFromShipWhenExiting",            "6"}, --Original "10"
                                {"DockingRotateSpeed",                     _padTurnSp}, --Original "1"
                                {"HoverTakeoffHeight",                           "75"}, --Original "90"
                                {"HoverAlignTime",                              "0.3"}, --Original "0.7"
                                {"HoverMinSpeed",                          _min_speed}, --Original "1"
                                {"HoverLandReachedDistance",                      "2"}, --Original "4"
                                {"HoverLandManeuvreTimeMin",                    "0.4"}, --Original "0.7"
                                {"LandingOnGroundTip",                          "-13"}, --Original "-20"
                                {"LandingCheckBuildingRadiusFactor",           "0.75"}, --Original "1.1"
                                {"LandingButtonMinTime",                       "0.25"}, --Original "0.5"
                                {"LandHeightThreshold",                          "60"}, --Original "100"
                                {"LandingPushNoseUpFactor",                    "0.02"}, --Original "0.15"
                                {"MiniWarpLinesNum",                              "0"}, --Original "4"      --METRIC LINES
                                {"MiniWarpFuelTime",                           "0.01"}, --Original "0.5"
                                {"MiniWarpChargeTime",                         "0.95"}, --Original "2"
                                {"PadTurnSpeed",                           _padTurnSp}, --Original "1"
                                {"PostWarpSlowDownTime",                        "1.5"}, --Original "3"
                                {"PulseDriveStationApproachSlowdownRange",     "3500"}, --Original "5000"
                                {"PulseDriveStationApproachSlowdownRangeMin",   "700"}, --Original "1000"
                                {"TurnRudderStrength",                            "4"}, --Original "0.4"

                        --|----------------------------------------------------------------------------------------
                        --| Slower AI Trader Flyby Speeds
                        --|----------------------------------------------------------------------------------------

                                {"PlanetMinSpeed",                               "15"}, --Original "30"
                                {"PlanetMaxSpeed",                               "40"}, --Original "80"
                                {"PlanetBoostSpeed",                            "100"}, --Original "200"

                        --|----------------------------------------------------------------------------------------
                        --| Low Altitude Animation Trigger (Solar Ships?)
                        --|----------------------------------------------------------------------------------------

                                {"LowAltitudeAnimationHeight",                 "1050"}, --Original "1200"
                                {"LowAltitudeAnimationHysteresisTime",            "1"}, --Original "4"
                                {"LowAltitudeAnimationTime",                      "3"}, --Original "6"

                        --|----------------------------------------------------------------------------------------
                        --| 3rd Person Wander Changes
                        --|----------------------------------------------------------------------------------------

                                {"_3rdPersonWarpWanderStartTime",               "0.01"}, --Original "6.5"
                                {"_3rdPersonWarpXWander",                       "0.01"}, --Original "6"
                                {"_3rdPersonWarpYWander",                       "0.01"}, --Original "1.5"
                                {"_3rdPersonWarpZWander",                       "0.01"}, --Original "5.5"
                                {"_3rdPersonWarpWanderSpring",                  "0.01"}, --Original "2"
                                {"_3rdPersonWarpWanderTimeX",                   "0.01"}, --Original "38"
                                {"_3rdPersonWarpWanderTimeY",                   "0.01"}, --Original "17"
                                {"_3rdPersonWarpWanderTimeZ",                   "0.01"}, --Original "30"

                        --|----------------------------------------------------------------------------------------
                        --| Cheat Area, Charge Rate, Regen Time Period (double / half / quarter default values)
                        --|----------------------------------------------------------------------------------------

                                {"BoostChargeRate",                               "5"}, --Original "2.5"
                                {"ShieldRechargeRate",                           "12"}, --Original "6"
                                {"LaunchThrustersRegenTimePeriod",              "360"}, --Original "1440"
                            }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Landing Curves
                        --|----------------------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = {"PitchCorrectHeightCurve",},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Curve",           "EaseOutQuad"}, --"Squared"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LandingCurve",},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Curve",           "EaseOutQuad"}, --"SlowOut"
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"LandingCurveHeavy",},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Curve",           "ReallySlowOut"}, --"ReallySlowOut"
                            }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Fuel Saving
                        --|----------------------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ExplorerTakeOffMod",                     _fuelMulti}, --Original "0.5"
                                {"FighterTakeOffMod",                      _fuelMulti}, --Original "1"
                                {"HaulerTakeOffMod",                       _fuelMulti}, --Original "1"
                                {"RoyalTakeOffMod",                        _fuelMulti}, --Original "1"
                                {"ShuttleTakeOffMod",                      _fuelMulti}  --Original "0.66"
                            }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Flight Control (Space Engine)
                        --|----------------------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = {"SpaceEngine"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostMaxSpeed",                          _speedMult},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _speedMult},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                                {"BoostThrustForce",                       _boostMult},
                            }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Flight Control (Planet Engine)
                        --|----------------------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = {"PlanetEngine"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostMaxSpeed",                          _speedMult},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _speedMult},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                                {"BoostThrustForce",                       _boostMult},
                            }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Flight Control (Combat Engine)
                        --|----------------------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = {"CombatEngine"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostMaxSpeed",                          _speedMult},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _speedMult},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                                {"BoostThrustForce",                       _boostMult},
                            }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Flight Control (Atmos Combat Engine)
                        --|----------------------------------------------------------------------------------------

                        {
                            ["PRECEDING_KEY_WORDS"] = {"AtmosCombatEngine"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostMaxSpeed",                          _speedMult},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _speedMult},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                                {"BoostThrustForce",                       _boostMult},
                            }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Control Bonus (C)
                        --|----------------------------------------------------------------------------------------

                        {
                          ["PRECEDING_KEY_WORDS"] = "ControlBonusC",
                          ["MATH_OPERATION"]      = "*",
                          ["REPLACE_TYPE"]        = "ALL",
                          ["INTEGER_TO_FLOAT"]    = "FORCE",
                          ["VALUE_CHANGE_TABLE"]  =
                          {
                              {"BoostMaxSpeedMax",                         _boostMult},
                              {"BoostMaxSpeedMin",                         _boostMult},
                              {"DirectionBrakeMin",                        _brakeMult},
                              {"DirectionBrakeMax",                        _brakeMult},
                              {"MaxSpeedMax",                              _speedMult},
                              {"MaxSpeedMin",                              _speedMult},
                              {"ThrustForceMax",                           _thrstMult},
                              {"ThrustForceMin",                           _thrstMult},
                          }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Control Bonus (B)
                        --|----------------------------------------------------------------------------------------

                        {
                          ["PRECEDING_KEY_WORDS"] = "ControlBonusB",
                          ["MATH_OPERATION"]      = "*",
                          ["REPLACE_TYPE"]        = "ALL",
                          ["INTEGER_TO_FLOAT"]    = "FORCE",
                          ["VALUE_CHANGE_TABLE"]  =
                          {
                              {"BoostMaxSpeedMax",                         _boostMult},
                              {"BoostMaxSpeedMin",                         _boostMult},
                              {"DirectionBrakeMin",                        _brakeMult},
                              {"DirectionBrakeMax",                        _brakeMult},
                              {"MaxSpeedMax",                              _speedMult},
                              {"MaxSpeedMin",                              _speedMult},
                              {"ThrustForceMax",                           _thrstMult},
                              {"ThrustForceMin",                           _thrstMult}
                          }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Control Bonus (A)
                        --|----------------------------------------------------------------------------------------

                        {
                          ["PRECEDING_KEY_WORDS"] = "ControlBonusA",
                          ["MATH_OPERATION"]      = "*",
                          ["REPLACE_TYPE"]        = "ALL",
                          ["INTEGER_TO_FLOAT"]    = "FORCE",
                          ["VALUE_CHANGE_TABLE"]  =
                          {
                              {"BoostMaxSpeedMax",                         _boostMult},
                              {"BoostMaxSpeedMin",                         _boostMult},
                              {"DirectionBrakeMin",                        _brakeMult},
                              {"DirectionBrakeMax",                        _brakeMult},
                              {"MaxSpeedMax",                              _speedMult},
                              {"MaxSpeedMin",                              _speedMult},
                              {"ThrustForceMax",                           _thrstMult},
                              {"ThrustForceMin",                           _thrstMult}
                          }
                        },

                        --|----------------------------------------------------------------------------------------
                        --| Control Bonus (S)
                        --|----------------------------------------------------------------------------------------

                        {
                          ["PRECEDING_KEY_WORDS"] = "ControlBonusS",
                          ["MATH_OPERATION"]      = "*",
                          ["REPLACE_TYPE"]        = "ALL",
                          ["INTEGER_TO_FLOAT"]    = "FORCE",
                          ["VALUE_CHANGE_TABLE"]  =
                          {
                              {"BoostMaxSpeedMax",                         _boostMult},
                              {"BoostMaxSpeedMin",                         _boostMult},
                              {"DirectionBrakeMin",                        _brakeMult},
                              {"DirectionBrakeMax",                        _brakeMult},
                              {"MaxSpeedMax",                              _speedMult},
                              {"MaxSpeedMin",                              _speedMult},
                              {"ThrustForceMax",                           _thrstMult},
                              {"ThrustForceMin",                           _thrstMult}
                          }
                        }
                    }
                },
            }
        },
    }
}