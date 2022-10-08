local modfilename = "AlmostPerfectFlightFull"
local lua_author  = "Silent"
local lua_version = "v2.0"
local mod_author  = "Silent369"
local nms_version = "4.0.x"
local description = [[
Changes Ship Pulse Flight, Combat/Planet/Space Flight and Ship Hover Characteristics.
With optional settings to make flight much easier (a bit cheaty, hence optional).
]]

--Modifies:
--GCSPACESHIPGLOBALS.GLOBAL.MBIN

--|=======================================================================================--

_cheatySettings = true
_launchFuelCost = true
_shipHoverSpeed = true
_shipStatsBonus = true
_warpSpeedMulti = true

--|=======================================================================================--

--Boosts
_boostMult = 2
_boostMxSp = 5
_speedMult = 3.5
_thrstMult = 2.5
_warpSMult = 4.2

--Handling
_brakeMult = 0.8
_lsptrnDmp = 0.1
_min_speed = 0
_overBreak = 0.15
_speedFall = 0
_trnStreng = 3
_turnBMult = 0.5

--Settings
_padTurnSp = 0.75
_fuelMulti = 0.35 --fuel cost saving on launch

--|=======================================================================================--

TableData = TableData or {}

--|=======================================================================================--

--| Cheat Area, Charge Rate, Regen Time Period, Miniwarp Charge/Fuel
--|=======================================================================================--
if _cheatySettings then
table.insert(TableData,
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"BoostChargeRate",                               "5"}, --Original "2.5"
                                {"ShieldRechargeRate",                           "12"}, --Original "6"
                                {"LaunchThrustersRegenTimePeriod",              "360"}, --Original "1440"
                                {"MiniWarpFuelTime",                              "1"}, --Original "0.5"
                            }
                        })
end

--| Fuel Saving
--|=======================================================================================--
if _launchFuelCost then
table.insert(TableData,
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"ExplorerTakeOffMod",                     _fuelMulti}, --Original "0.5"
                                {"FighterTakeOffMod",                      _fuelMulti}, --Original "1"
                                {"HaulerTakeOffMod",                       _fuelMulti}, --Original "1"
                                {"RoyalTakeOffMod",                        _fuelMulti}, --Original "1"
                                {"ShuttleTakeOffMod",                      _fuelMulti}, --Original "0.66"
                            }
                        })
end

--| Mini Warp Speed
--|=======================================================================================--
if _warpSpeedMulti then
table.insert(TableData,
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MiniWarpSpeed",   _warpSMult}, --(30000 x _warpSMult)
                            }
                        })
end

--| Ship Hover
--|=======================================================================================--
if _shipHoverSpeed then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Control", "GcPlayerSpaceshipControlData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinSpeed",        _min_speed},
                                {"ExitLeaveAngle",        "10"},
                            }
                        })
end

if _shipHoverSpeed then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ControlLight", "GcPlayerSpaceshipControlData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinSpeed",        _min_speed},
                                {"ExitLeaveAngle",        "10"},
                            }
                        })
end

if _shipHoverSpeed then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"ControlHeavy", "GcPlayerSpaceshipControlData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MinSpeed",        _min_speed},
                                {"ExitLeaveAngle",        "10"},
                            }
                        })
end

--| Flight Control (Space Engine)
--|=======================================================================================--
if _shipStatsBonus then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"SpaceEngine", "GcPlayerSpaceshipEngineData.xml"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Falloff",                                _speedFall},
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostThrustForce",                       _boostMult},
                                {"BoostMaxSpeed",                          _boostMxSp},
                                {"OverspeedBrake",                         _overBreak},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _trnStreng},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                            }
                        })
end

--| Flight Control (Planet Engine)
--|=======================================================================================--
if _shipStatsBonus then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"PlanetEngine", "GcPlayerSpaceshipEngineData.xml"},
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Falloff",                                _speedFall},
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostThrustForce",                       _boostMult},
                                {"BoostMaxSpeed",                          _boostMxSp},
                                {"OverspeedBrake",                         _overBreak},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _trnStreng},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                            }
                        })
end

--| Flight Control (Combat Engine)
--|=======================================================================================--
if _shipStatsBonus then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"CombatEngine", "GcPlayerSpaceshipEngineData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Falloff",                                _speedFall},
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostThrustForce",                       _boostMult},
                                {"BoostMaxSpeed",                          _boostMxSp},
                                {"OverspeedBrake",                         _overBreak},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _trnStreng},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                            }
                        })
end

--| Flight Control (Atmos Combat Engine)
--|=======================================================================================--
if _shipStatsBonus then
table.insert(TableData,
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"AtmosCombatEngine", "GcPlayerSpaceshipEngineData.xml"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Falloff",                                _speedFall},
                                {"LowSpeedTurnDamper",                     _lsptrnDmp},
                                {"MaxSpeed",                               _speedMult},
                                {"MinSpeed",                               _min_speed},
                                {"BoostThrustForce",                       _boostMult},
                                {"BoostMaxSpeed",                          _boostMxSp},
                                {"OverspeedBrake",                         _overBreak},
                                {"DirectionBrakeMin",                      _speedMult},
                                {"DirectionBrake",                         _speedMult},
                                {"ReverseBrake",                           _speedMult},
                                {"TurnStrength",                           _trnStreng},
                                {"TurnBrakeMin",                           _turnBMult},
                                {"TurnBrakeMax",                           _turnBMult},
                            }
                        })
end

--|=======================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]              = lua_author,
    ["MOD_AUTHOR"]              = mod_author,
    ["NMS_VERSION"]             = nms_version,
    ["MOD_DESCRIPTION"]         = description,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = TableData,
                },
            }
        },
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = {"GCSPACESHIPGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --|=======================================================================================--
                        --| General Settings
                        --|=======================================================================================--
                        {
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"GroundHeightSoft",                              "7"}, --Original "20"
                                {"GroundHeightSoftForce",                        "10"}, --Original "35"
                                {"LandingHoverOffset",                            "1"}, --Original "3"
                                {"LandingMaxSpeed",                             "160"}, --Original "80"
                                {"LandingMargin",                               "2.4"}, --Original "1.4"
                                {"LandingTooManyLowPointsFraction",             "0.2"}, --Original "0.3"
                                {"AnomalyStationMaxApproachSpeed",              "120"}, --Original "60"
                                {"BoostNoAsteroidRadius",                      "9000"}, --Original "1000"
                                {"DockingRotateSpeed",                     _padTurnSp}, --Original "1"
                                {"HoverTakeoffHeight",                           "75"}, --Original "90"
                                {"HoverAlignTime",                              "0.5"}, --Original "0.7"
                                {"HoverMinSpeed",                          _min_speed}, --Original "1"
                                {"HoverLandReachedDistance",                      "3"}, --Original "4"
                                {"HoverLandManeuvreTimeMin",                    "0.5"}, --Original "0.7"
                                {"LandingOnGroundTip",                          "-11"}, --Original "-20"
                                {"LandingButtonMinTime",                       "0.15"}, --Original "0.5"
                                {"LandHeightThreshold",                          "80"}, --Original "100"
                                {"LandingPushNoseUpFactor",                     "0.1"}, --Original "0.15"
                                {"MiniWarpChargeTime",                          "1.4"}, --Original "2"
                                {"MiniWarpLinesNum",                              "0"}, --Original "4"      --METRIC LINES
                                {"MiniWarpNoAsteroidRadius",                   "9000"}, --Original "1500"
                                {"MiniWarpHUDArrowAttractAngle",                  "7"}, --Original "10"
                                {"MiniWarpStationRadius",                       "500"}, --Original "700"
                                {"MiniWarpStoppingMarginPlanet",               "2000"}, --Original "5000"
                                {"MiniWarpStoppingMarginDefault",              "1250"}, --Original "2500"
                                {"MiniWarpStoppingMarginLong",                 "1750"}, --Original "3500"
                                {"MiniWarpTrackingMargin",                       "50"}, --Original "100"
                                {"MiniWarpExitSpeed",                           "500"}, --Original "1000"
                                {"MiniWarpExitSpeedStation",                    "250"}, --Original "500"
                                {"MiniWarpExitTime",                           "0.25"}, --Original "0.5"
                                {"PadTurnSpeed",                           _padTurnSp}, --Original "1"
                                {"PostWarpSlowDownTime",                        "1.5"}, --Original "3"
                                {"PulseDriveStationApproachSlowdownRange",     "3500"}, --Original "5000"
                                {"PulseDriveStationApproachSlowdownRangeMin",   "700"}, --Original "1000"
                                {"TurnRudderStrength",                            "1"}, --Original "0.4"
                                {"MaximumDistanceFromShipWhenExiting",            "5"}, --Original "10"
                                {"ShipMinHeightForce",                          "0.1"}, --Original "1"

                                {"NoBoostStationDistance",                        "0"}, --Original "2000"
                                {"NoBoostAnomalyDistance",                        "0"}, --Original "3000"
                                {"NoBoostSpaceAnomalyDistance",                   "0"}, --Original "700"
                                {"NoBoostFreighterDistance",                      "0"}, --Original "800"
                                {"NoBoostCombatEventMinBattleTime",               "0"}, --Original "35"
                                {"NoBoostCombatEventMinFreighterBattleTime",      "0"}, --Original "55"
                                {"NoBoostCombatEventTime",                        "0"}, --Original "25"

                        --|=======================================================================================--
                        --| Freighter Approach Settings
                        --|=======================================================================================--

                                {"FreighterApproachDistanceMin",                 "10"}, --Original "50"
                                {"FreighterApproachDistanceMax",                "150"}, --Original "300"
                                {"FreighterApproachExtraMargin",                "500"}, --Original "1000"
                                {"SummonShipAnywhereFwdOffset",                  "10"}, --Original "-100"

                        --|=======================================================================================--
                        --| Landing Slope Settings
                        --|=======================================================================================--

                                {"LandLookingForward",                            "6"}, --Original "160"
                                {"LandSlopeMax",                                 "90"}, --Original "22"
                                {"LandingAreaFloorOffset",                      "0.5"}, --Original "1"

                        --|=======================================================================================--
                        --| WarpIn Range Settings
                        --|=======================================================================================--

                                {"WarpInRange",                                "6000"}, --Original "10000"
                                {"WarpInRangeFreighter",                       "3500"}, --Original "5000"
                                {"WarpInRangeNexus",                           "3500"}, --Original "5000"
                                {"WarpNexusDistance",                         "-6000"}, --Original "-9000"
                                {"WarpNexusPitch",                                "0"}, --Original "15"
                                {"WarpNexusRotation",                             "0"}, --Original "15"
                                {"WarpOutRange",                                "500"}, --Original "1000"

                        --|=======================================================================================--
                        --| Low Altitude Animation Trigger (Solar Ships Sails Open/Retract Speed)
                        --|=======================================================================================--

                                {"LowAltitudeAnimationHeight",                 "1050"}, --Original "1200"
                                {"LowAltitudeAnimationHysteresisTime",            "1"}, --Original "4"
                                {"LowAltitudeAnimationTime",                      "3"}, --Original "6"

                        --|=======================================================================================--
                        --| 3rd Person Wander Changes
                        --|=======================================================================================--

                                {"_3rdPersonWarpWanderStartTime",               "0.01"}, --Original "6.5"
                                {"_3rdPersonWarpXWander",                       "0.01"}, --Original "6"
                                {"_3rdPersonWarpYWander",                       "0.01"}, --Original "1.5"
                                {"_3rdPersonWarpZWander",                       "0.01"}, --Original "5.5"
                                {"_3rdPersonWarpWanderSpring",                  "0.01"}, --Original "2"
                                {"_3rdPersonWarpWanderTimeX",                   "0.01"}, --Original "38"
                                {"_3rdPersonWarpWanderTimeY",                   "0.01"}, --Original "17"
                                {"_3rdPersonWarpWanderTimeZ",                   "0.01"}, --Original "30"
                            }
                        },

                        --|=======================================================================================--
                        --| Landing Curves
                        --|=======================================================================================--

                        {
                            ["PRECEDING_KEY_WORDS"] = {"PitchCorrectHeightCurve",},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Curve",           "SmootherStep"}, --"Squared"
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
                                {"Curve",           "SmootherStep"}, --"ReallySlowOut"
                            }
                        },
                    }
                },
            }
        },
    }
}