local modfilename = "AlmostPerfectFlightFullNoReverse"
local lua_author  = "Silent"
local lua_version = "v2.6"
local mod_author  = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Changes Ship Pulse Flight, Combat/Planet/Space Flight and Ship Hover Characteristics.
With optional settings to make flight much easier (a bit cheaty, hence optional).

]]

--Modifies:
--GCSPACESHIPGLOBALS.GLOBAL.MBIN

--|=======================================================================================--

local _cheatySettings = true
local _launchFuelCost = true
local _controlBonuses = true
local _shipHoverSpeed = true
local _shipStatsBonus = true
local _warpSpeedMulti = true

--|=======================================================================================--

--Cheaty
local _cheatMult = 50
local _cheatTime = 0.1

--Boosts
local _boostMult = 2
local _boostMxSp = 5
local _max_speed = 2.5
local _thrstMult = 2.5
local _warpSMult = 4.2

--Handling
local _brakeMult = 0.8
local _dir_Break = 2.5
local _rev_break = 2
local _lsptrnDmp = 0.1
local _min_speed = 0.01
local _overBreak = 0.15
local _rolAmount = 2
local _rollForce = 2
local _rollATime = 1
local _rudTurnSt = 8
local _speedFall = 0
local _trnStreng = 2
local _turnBMult = 2

--Multipliers
local _3rdPerson = 1.5

--Control bonus
local _cmultiply = 2

--Settings
local _padTurnSp = 0.75
local _fuelMulti = 0.35 --fuel cost saving on launch

--NoBoost/MiniWarp/Stopping
local _Restricts = 0.15 --relax noboost/miniwarp
local _Multplier = 0.60 --miniwarp exit speed
local _mStopping = 0.40 --stopping margin

local TableData = {}

--| Cheat Area, Charge Rate, Regen Time Period, Miniwarp Charge/Fuel
--|=======================================================================================--

if _cheatySettings then
    table.insert(TableData,
    {
        ["MATH_OPERATION"]      = "*",
        ["INTEGER_TO_FLOAT"]    = "FORCE",
        ["VALUE_CHANGE_TABLE"]  =
        {
            {"BoostChargeRate",                _cheatMult}, --Original "2.5"
            {"ShieldRechargeRate",             _cheatMult}, --Original "6"
            {"LaunchThrustersRegenTimePeriod", _cheatTime}, --Original "1440"
            {"MiniWarpFuelTime",               _cheatMult}, --Original "0.5"
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
            {"ExplorerTakeOffMod",             _fuelMulti}, --Original "0.5"
            {"FighterTakeOffMod",              _fuelMulti}, --Original "1"
            {"HaulerTakeOffMod",               _fuelMulti}, --Original "1"
            {"RoyalTakeOffMod",                _fuelMulti}, --Original "1"
            {"ShuttleTakeOffMod",              _fuelMulti}, --Original "0.66"
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

--| Flight Control, 3rd Person Data
--|=======================================================================================--

local function insert3rdPersonData()
    local entry = {
        ["MATH_OPERATION"]     = "*",
        ["INTEGER_TO_FLOAT"]   = "FORCE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"_3rdPersonUpOffsetRollChangeSpeed",      _3rdPerson},
            {"_3rdPersonRollAngle",                    _3rdPerson},
            {"_3rdPersonRollAngleDropship",            _3rdPerson},
            {"_3rdPersonRollAngleScience",             _3rdPerson},
            {"_3rdPersonRollAngleAlien",               _3rdPerson},
            {"_3rdPersonPitchAngle",                   _3rdPerson},
            {"_3rdPersonYawAngle",                     _3rdPerson},
            {"_3rdPersonYawAngleLateralExtra",         _3rdPerson},
            {"_3rdPersonAngleSpringTime",              _3rdPerson},
            {"_3rdPersonAngleMinSpeed",                _3rdPerson},
            {"_3rdPersonAngleSpeedRangePitch",         _3rdPerson},
            {"_3rdPersonAngleSpeedRangeYaw",           _3rdPerson},
            {"_3rdPersonLowHeightMin",                 _3rdPerson},
            {"_3rdPersonLowHeightMax",                 _3rdPerson},
            {"_3rdPersonLowHeightOffsetVertRotationY", _3rdPerson},
            {"_3rdPersonLowHeightOffsetY",             _3rdPerson},
            {"_3rdPersonLowHeightSpringTime",          _3rdPerson},
        }
    }
    table.insert(TableData, entry)
end

local function insertEngineData(engineType, controlType)
    local entry = {
        ["SPECIAL_KEY_WORDS"]  = {controlType, "GcPlayerSpaceshipControlData.xml", engineType, "GcPlayerSpaceshipEngineData.xml"},
        ["MATH_OPERATION"]     = "*",
        ["SECTION_ACTIVE"]     = {1,},
        ["REPLACE_TYPE"]       = "ALL",
        ["INTEGER_TO_FLOAT"]   = "FORCE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"ThrustForce",        _thrstMult},
            {"Falloff",            _speedFall},
            {"LowSpeedTurnDamper", _lsptrnDmp},
            {"MaxSpeed",           _max_speed},
            {"BoostThrustForce",   _boostMult},
            {"BoostMaxSpeed",      _boostMxSp},
            {"OverspeedBrake",     _overBreak},
            {"DirectionBrakeMin",  _dir_Break},
            {"DirectionBrake",     _dir_Break},
            {"ReverseBrake",       _rev_break},
            {"TurnStrength",       _trnStreng},
            {"TurnBrakeMin",       _turnBMult},
            {"TurnBrakeMax",       _turnBMult},
            {"RollAmount",         _rolAmount},
            {"RollForce",          _rollForce},
            {"RollAutoTime",       _rollATime},
        }
    }
    table.insert(TableData, entry)
end

local engineTypes  = {"SpaceEngine", "PlanetEngine", "CombatEngine", "AtmosCombatEngine"}
local controlTypes = {"Control", "ControlLight", "ControlHeavy", "ControlHover"}

if _shipStatsBonus then
    for _, engineType in ipairs(engineTypes) do
        for _, controlType in ipairs(controlTypes) do
            insertEngineData(engineType, controlType)
        end
    end
    insert3rdPersonData()
end

--| Control Bonuses
--|=======================================================================================--

if _controlBonuses then
    local controlBonuses = {"ControlBonusC", "ControlBonusB", "ControlBonusA", "ControlBonusS"}

    for _, controlBonus in ipairs(controlBonuses) do
        table.insert(TableData,
            {
                ["SPECIAL_KEY_WORDS"]   = {controlBonus, "GcPlayerSpaceshipClassBonuses.xml"},
                ["SECTION_ACTIVE"]      = {1,},
                ["MATH_OPERATION"]      = "*",
                ["INTEGER_TO_FLOAT"]    = "FORCE",
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"ThrustForceMax",      _cmultiply},
                    {"ThrustForceMin",      _cmultiply},
                    {"MaxSpeedMax",         _cmultiply},
                    {"MaxSpeedMin",         _cmultiply},
                    {"BoostMaxSpeedMax",    _cmultiply},
                    {"BoostMaxSpeedMin",    _cmultiply},
                    {"BoostingTurnDampMax", _cmultiply},
                    {"BoostingTurnDampMin", _cmultiply},
                    {"DirectionBrakeMin",   _cmultiply},
                    {"DirectionBrakeMax",   _cmultiply},
                    {"TurnStrengthMax",     _cmultiply},
                    {"TurnStrengthMin",     _cmultiply},
                }
            })
    end
end

--| Ship Hover
--|=======================================================================================--

if _shipHoverSpeed then
    local controlTypes = {"Control", "ControlLight", "ControlHeavy", "ControlHover"}

    for _, controlType in ipairs(controlTypes) do
        table.insert(TableData,
            {
                ["SPECIAL_KEY_WORDS"]   = {controlType, "GcPlayerSpaceshipControlData.xml"},
                ["REPLACE_TYPE"]        = "ALL",
                ["INTEGER_TO_FLOAT"]    = "FORCE",
                ["VALUE_CHANGE_TABLE"]  =
                {
                    {"MinSpeed",        _min_speed},
                }
            })
    end
end

--|=======================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MAINTENANCE"]          = maintenance,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
                    ["EXML_CHANGE_TABLE"] = TableData,
                },
            }
        },
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --|=======================================================================================--
                        --| NoBoost/MiniWarp Settings
                        --|=======================================================================================--
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ONCE",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"NoBoostStationDistance",                 _Restricts}, --Original "2000"
                                {"NoBoostAnomalyDistance",                 _Restricts}, --Original "3000"
                                {"NoBoostSpaceAnomalyDistance",            _Restricts}, --Original "700"
                                {"NoBoostFreighterDistance",               _Restricts}, --Original "800"
                                {"NoBoostShipDistance",                    _Restricts}, --Original "2000"
                                {"MiniWarpMinPlanetDistance",              _Restricts}, --Original "2500"
                                {"MiniWarpPlanetRadius",                           -1}, --Original "500"
                                {"MiniWarpStationRadius",                  _Restricts}, --Original "700"
                                {"MiniWarpTopSpeedTime",                   _Restricts}, --Original "0.1"
                            }
                        },
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ONCE",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MiniWarpExitSpeed",                      _Multplier}, --Original "1000"
                                {"MiniWarpExitSpeedStation",               _Multplier}, --Original "500"
                            }
                        },
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["REPLACE_TYPE"]        = "ONCE",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MiniWarpStoppingMarginPlanet",           _mStopping}, --Original "5000"
                                {"MiniWarpStoppingMarginDefault",          _mStopping}, --Original "2500"
                                {"MiniWarpStoppingMarginLong",             _mStopping}, --Original "3500"
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MiniWarpHUDArrowAttractAngle",                  "2"}, --Original "10"
                                {"MiniWarpHUDArrowAttractAngleStation",           "4"}, --Original "5"
                                {"MiniWarpHUDArrowAttractAngleOtherPlayerStuff",  "1"}, --Original "2"
                                {"MiniWarpHUDArrowAttractAngleSaveBeacon",        "2"}, --Original "2.5
                                {"MiniWarpHUDArrowAttractAngleDense",             "3"}, --Original "4"
                                {"MiniWarpHUDArrowNumMarkersToBeDense",           "5"}, --Original "6"
                            }
                        },
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
                                {"LandingMargin",                               "0.5"}, --Original "1.4"
                                {"LandingTooManyLowPointsFraction",             "0.2"}, --Original "0.3"
                                {"AutoLevelWaterAngle",                          "22"}, --Original "45"
                                {"AnomalyStationMaxApproachSpeed",              "120"}, --Original "60"
                                {"BoostNoAsteroidRadius",                      "9000"}, --Original "1000"
                                {"DockingRotateSpeed",                     _padTurnSp}, --Original "1"
                                {"HoverTakeoffHeight",                           "75"}, --Original "90"
                                {"HoverAlignTime",                              "0.2"}, --Original "0.7"
                                {"HoverMinSpeed",                          _min_speed}, --Original "1"
                                {"HoverLandReachedDistance",                      "3"}, --Original "4"
                                {"HoverLandManeuvreTimeMin",                    "0.3"}, --Original "0.7"
                                {"LandingOnGroundTip",                          "-11"}, --Original "-20"
                                {"LandingButtonMinTime",                       "0.15"}, --Original "0.5"
                                {"LandHeightThreshold",                          "80"}, --Original "100"
                                {"LandingPushNoseUpFactor",                     "0.1"}, --Original "0.15"
                                {"MiniWarpChargeTime",                          "1.4"}, --Original "2"
                                {"MiniWarpLinesNum",                              "0"}, --Original "4"      --METRIC LINES
                                {"MiniWarpFlashIntensity",                        "0"}, --Original "0.9"
                                {"MiniWarpFlashDuration",                         "0"}, --Original "0.9"
                                {"MiniWarpNoAsteroidRadius",                   "9000"}, --Original "1500"
                                {"MiniWarpExitTime",                           "0.05"}, --Original "0.5"
                                {"PadTurnSpeed",                           _padTurnSp}, --Original "1"
                                {"PostWarpSlowDownTime",                        "1.5"}, --Original "3"
                                {"PulseDriveStationApproachSlowdownRange",     "3500"}, --Original "5000"
                                {"PulseDriveStationApproachSlowdownRangeMin",   "700"}, --Original "1000"
                                {"TurnRudderStrength",                     _rudTurnSt}, --Original "0.4"
                                {"MaximumDistanceFromShipWhenExiting",            "4"}, --Original "10"
                                --{"EnablePulseDriveSpaceStationOrient",        "False"}, --Original "False"
                                --{"ShipMinHeightForce",                          "0.1"}, --Original "1"

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

                                {"LandLookingForward",                           "90"}, --Original "160"
                                {"LandSlopeMax",                                 "90"}, --Original "22"
                                {"LandingAreaFloorOffset",                      "0.5"}, --Original "1"

                        --|=======================================================================================--
                        --| WarpIn Range Settings
                        --|=======================================================================================--

                                {"WarpInRangeNexus",                           "3500"}, --Original "5000"
                                {"WarpNexusDistance",                         "-6000"}, --Original "-9000"
                                {"WarpNexusPitch",                                "0"}, --Original "15"
                                {"WarpNexusRotation",                             "0"}, --Original "15"

                        --|=======================================================================================--
                        --| Low Altitude Animation Trigger (Solar Ships Sails Open/Retract Speed)
                        --|=======================================================================================--

                                {"LowAltitudeAnimationHeight",                 "1045"}, --Original "1200"
                                {"LowAltitudeAnimationHysteresisTime",            "1"}, --Original "4"
                                {"LowAltitudeAnimationTime",                      "2"}, --Original "6"

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
