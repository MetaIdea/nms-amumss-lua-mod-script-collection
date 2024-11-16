local modfilename = "AlmostPerfectFlightFull"
local lua_author  = "Silent"
local lua_version = "4.4"
local mod_author  = "Silent369"
local nms_version = "5.27"
local maintenance = mod_author
local description = [[

Changes Ship Pulse Flight, Combat/Planet/Space Flight and Ship Hover Characteristics.
With optional settings to make flight much easier (a bit cheaty, hence optional).

]]

--Modifies:
--GCSPACESHIPGLOBALS.GLOBAL.MBIN

--|=======================================================================================--

local m_cheatySettings = true
local m_launchFuelCost = true
local m_controlBonuses = false
local m_shipHoverSpeed = true
local m_shipStatsBonus = true
local m_warpSpeedMulti = true

--|=======================================================================================--

--Cheaty
local m_cheatMult = 50
local m_cheatTime = 0.1

--Boosts
local m_boostMult = 2
local m_boostMxSp = 5
local m_max_speed = 2
local m_thrstMult = 2
local m_warpSMult = 4.2

--Handling
local m_dBreakMin = 1
local m_dBreakMax = 2
local m_rev_break = 2
local m_lsptrnDmp = 0.1
local m_min_speed = -1
local m_overBreak = 0
local m_rolAmount = 2
local m_rollForce = 1.5
local m_rollATime = 1
local m_rudTurnSt = 8
local m_speedFall = 0
local m_trnStreng = 2
local m_turnBrMin = 2
local m_turnBrMax = 4

--Settings
local m_padTurnSp = 0.75
local m_fuelMulti = 0.35 --fuel cost saving on launch

--NoBoost/MiniWarp/Stopping
local m_Restricts = 0.15 --relax noboost/miniwarp
local m_Multplier = 0.60 --miniwarp exit speed
local m_mStopping = 0.40 --stopping margin

TableData  = TableData or {}

--| Cheat Area, Charge Rate, Regen Time Period, Miniwarp Charge/Fuel
--|=======================================================================================--

if m_cheatySettings then
    table.insert(TableData, {
        MATH_OP = "*",
        ITF = "FORCE",
        VCT = {
            {"BoostChargeRate",                m_cheatMult}, --Original "2.5"
            {"ShieldRechargeRate",             m_cheatMult}, --Original "6"
            {"LaunchThrustersRegenTimePeriod", m_cheatTime}, --Original "1440"
            {"MiniWarpFuelTime",               m_cheatMult}, --Original "0.5"
        }
    })
end

--| Fuel Saving
--|=======================================================================================--

if m_launchFuelCost then
    table.insert(TableData, {
        MATH_OP = "*",
        ITF = "FORCE",
        VCT = {
            {"ExplorerTakeOffMod", m_fuelMulti}, --Original "0.5"
            {"FighterTakeOffMod",  m_fuelMulti}, --Original "1"
            {"HaulerTakeOffMod",   m_fuelMulti}, --Original "1"
            {"RoyalTakeOffMod",    m_fuelMulti}, --Original "1"
            {"ShuttleTakeOffMod",  m_fuelMulti}, --Original "0.66"
        }
    })
end

--| Mini Warp Speed
--|=======================================================================================--

if m_warpSpeedMulti then
    table.insert(TableData, {
        MATH_OP = "*",
        REPLACE_TYPE = "ALL",
        ITF = "FORCE",
        VCT = {{"MiniWarpSpeed", m_warpSMult},} --(30000 x _warpSMult)
    })
end

--| Flight Control, Engine Data
--|=======================================================================================--

local function insertEngineData(controlType, engineType)
    local entry = {
        SKW = {controlType, "GcPlayerSpaceshipControlData.xml", engineType, "GcPlayerSpaceshipEngineData.xml"},
        MATH_OP = "*",
        SECTION_ACTIVE = {1,},
        REPLACE_TYPE = "ALL",
        ITF = "FORCE",
        VCT = {
            {"ThrustForce",        m_thrstMult},
            {"Falloff",            m_speedFall},
            {"LowSpeedTurnDamper", m_lsptrnDmp},
            {"MaxSpeed",           m_max_speed},
            {"BoostThrustForce",   m_boostMult},
            {"BoostMaxSpeed",      m_boostMxSp},
            {"OverspeedBrake",     m_overBreak},
            {"DirectionBrakeMin",  m_dBreakMin},
            {"DirectionBrake",     m_dBreakMax},
            {"ReverseBrake",       m_rev_break},
            {"TurnStrength",       m_trnStreng},
            {"TurnBrakeMin",       m_turnBrMin},
            {"TurnBrakeMax",       m_turnBrMax},
            {"RollAmount",         m_rolAmount},
            {"RollForce",          m_rollForce},
            {"RollAutoTime",       m_rollATime},
        }
    }
    table.insert(TableData, entry)
end

local controlTypes = {"Control", "ControlLight", "ControlHeavy", "ControlHeavyHover", "ControlHover"}
local engineTypes  = {"SpaceEngine", "PlanetEngine", "CombatEngine", "AtmosCombatEngine"}

if m_shipStatsBonus then
    for _, controlType in ipairs(controlTypes) do
        for _, engineType in ipairs(engineTypes) do
            insertEngineData(controlType, engineType)
        end
    end
end

--| Control Bonuses (apply ControlBonusS to all bonus types)
--|=======================================================================================--

if m_controlBonuses then
    local controlBonuses = {"ControlBonusC", "ControlBonusB", "ControlBonusA"}
    for _, controlBonus in ipairs(controlBonuses) do
        table.insert(TableData, {
            SKW = {controlBonus, "GcPlayerSpaceshipClassBonuses.xml"},
            SECTION_ACTIVE = {1,},
            --MATH_OP = "*",
            ITF = "FORCE",
            VCT = {
                {"ThrustForceMax",       250},
                {"ThrustForceMin",        50},
                {"MaxSpeedMax",           30},
                {"MaxSpeedMin",           15},
                {"BoostMaxSpeedMax",      15},
                {"BoostMaxSpeedMin",       5},
                {"BoostingTurnDampMax",  0.1},
                {"BoostingTurnDampMin",    0},
                {"DirectionBrakeMin",    0.2},
                {"DirectionBrakeMax",   -0.1},
                {"TurnStrengthMax",     0.25},
                {"TurnStrengthMin",      0.1},
            }
        })
    end
end

--| Ship Hover
--|=======================================================================================--

if m_shipHoverSpeed then
    local controlTypes = {"Control", "ControlLight", "ControlHeavy", "ControlHeavyHover", "ControlHover"}

    for _, controlType in ipairs(controlTypes) do
        table.insert(TableData, {
            SKW = {controlType, "GcPlayerSpaceshipControlData.xml"},
            REPLACE_TYPE = "ALL",
            ITF = "FORCE",
            VCT = {{"MinSpeed", m_min_speed},}
        })
    end
end

--|=======================================================================================--

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MAINTENANCE     = maintenance,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
                    EXML_CT = TableData,
                },
            }
        },
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]],
                    EXML_CT =
                    {
                        --|=======================================================================================--
                        --| NoBoost/MiniWarp Settings
                        --|=======================================================================================--
                        {
                            MATH_OP = "*",
                            REPLACE_TYPE = "ONCE",
                            ITF = "FORCE",
                            VALUE_MATCH = "",
                            VCT = {
                                {"NoBoostStationDistance",       m_Restricts}, --Original "2000"
                                {"NoBoostAnomalyDistance",       m_Restricts}, --Original "3000"
                                {"NoBoostSpaceAnomalyDistance",  m_Restricts}, --Original "700"
                                {"NoBoostFreighterDistance",     m_Restricts}, --Original "800"
                                {"NoBoostShipDistance",          m_Restricts}, --Original "2000"
                                {"MiniWarpMinPlanetDistance",    m_Restricts}, --Original "2500"
                                {"MiniWarpPlanetRadius",                  -1}, --Original "500"
                                {"MiniWarpStationRadius",        m_Restricts}, --Original "700"
                                {"MiniWarpTopSpeedTime",         m_Restricts}, --Original "0.1"
                            }
                        },
                        {
                            MATH_OP = "*",
                            REPLACE_TYPE = "ONCE",
                            ITF = "FORCE",
                            VALUE_MATCH = "",
                            VCT = {
                                {"MiniWarpExitSpeed",            m_Multplier}, --Original "1000"
                                {"MiniWarpExitSpeedStation",     m_Multplier}, --Original "500"
                            }
                        },
                        {
                            MATH_OP = "*",
                            REPLACE_TYPE = "ONCE",
                            ITF = "FORCE",
                            VALUE_MATCH = "",
                            VCT = {
                                {"MiniWarpStoppingMarginPlanet",  m_mStopping}, --Original "5000"
                                {"MiniWarpStoppingMarginDefault", m_mStopping}, --Original "2500"
                                {"MiniWarpStoppingMarginLong",    m_mStopping}, --Original "3500"
                            }
                        },
                        {
                            VCT = {
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
                            ITF = "FORCE",
                            VCT = {
                                {"AutoLevelMinAngle",                             "0"}, --Original "5"
                                {"GroundHeightSoft",                              "7"}, --Original "20"
                                {"GroundHeightSoftForce",                        "10"}, --Original "35"
                                {"LandingHoverOffset",                            "2"}, --Original "3"
                                {"LandingMaxSpeed",                             "160"}, --Original "80"
                                {"LandingMaxAngle",                              "60"}, --Original "45"
                                {"LandingMargin",                               "1.0"}, --Original "1.4"
                                {"AutoLevelWaterAngle",                          "22"}, --Original "45"
                                {"AnomalyStationMaxApproachSpeed",              "120"}, --Original "60"
                                {"BoostNoAsteroidRadius",                      "9000"}, --Original "1000"
                                {"DockingRotateSpeed",                    m_padTurnSp}, --Original "1"
                                {"HoverTakeoffHeight",                           "75"}, --Original "90"
                                {"HoverAlignTime",                              "0.2"}, --Original "0.7"
                                {"HoverMinSpeed",                         m_min_speed}, --Original "1"
                                {"HoverLandReachedDistance",                      "3"}, --Original "4"
                                {"HoverLandManeuvreTimeMin",                    "0.3"}, --Original "0.7"
                                {"LandingOnGroundTip",                          "-10"}, --Original "-20"
                                {"LandingButtonMinTime",                       "0.15"}, --Original "0.5"
                                {"LandHeightThreshold",                          "80"}, --Original "100"
                                {"LandingPushNoseUpFactor",                     "0.1"}, --Original "0.15"
                                {"MiniWarpChargeTime",                          "1.4"}, --Original "2"
                                {"MiniWarpLinesNum",                              "0"}, --Original "4"      --METRIC LINES
                                {"MiniWarpFlashIntensity",                        "0"}, --Original "0.9"
                                {"MiniWarpFlashDuration",                         "0"}, --Original "0.9"
                                {"MiniWarpNoAsteroidRadius",                   "9000"}, --Original "1500"
                                {"MiniWarpExitTime",                           "0.05"}, --Original "0.5"
                                {"PadTurnSpeed",                          m_padTurnSp}, --Original "1"
                                {"PostWarpSlowDownTime",                        "1.5"}, --Original "3"
                                {"PulseDriveStationApproachSlowdownRange",     "3500"}, --Original "5000"
                                {"PulseDriveStationApproachSlowdownRangeMin",   "700"}, --Original "1000"
                                {"TurnRudderStrength",                    m_rudTurnSt}, --Original "0.4"
                                {"MaximumDistanceFromShipWhenExiting",            "4"}, --Original "10"

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

                                {"LandSlopeMax",                                 "90"}, --Original "22"
                                {"LandingAreaFloorOffset",                      "0.5"}, --Original "1"

                        --|=======================================================================================--
                        --| WarpIn Range Settings
                        --|=======================================================================================--

                                {"MiniWarpMarkerApproachSlowdown",              "1.0"}, --Original "0.5"
                                {"MiniWarpMarkerAlignSlowdown",                 "1.6"}, --Original "0.8"
                                {"MiniWarpMarkerAlignSlowdownRange",             "12"}, --Original "6"
                                {"MiniWarpAlignSlerp",                         "0.16"}, --Original "0.08"
                                {"WarpInRangeNexus",                           "3500"}, --Original "5000"
                                {"WarpNexusDistance",                         "-6000"}, --Original "-9000"
                                {"WarpNexusPitch",                                "0"}, --Original "15"
                                {"WarpNexusRotation",                             "0"}, --Original "15"
                                {"WarpAnimMinSpeed",                              "4"}, --Original "2"
                                {"WarpAnimMaxSpeed",                              "6"}, --Original "4"

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
                            PKW = {"PitchCorrectHeightCurve",},
                            VCT = {{"Curve", "Squared"},} --"Squared"
                        },
                        {
                            PKW = {"LandingCurve",},
                            VCT = {{"Curve", "EaseOutQuad"},} --"SlowOut"
                        },
                        {
                            PKW = {"LandingCurveHeavy",},
                            VCT = {{"Curve", "SmootherStep"},} --"ReallySlowOut"
                        },
                    }
                },
            }
        },
    }
}
