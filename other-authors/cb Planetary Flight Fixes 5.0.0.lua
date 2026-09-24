---------- Planetary Flight Fixes - Cosmos 7.04 ----------

-- Atmospheric minimum speed
MINSPEED = 0.1
-- 0.1 allows a full stop/hover without enabling reverse flight.

-- Planetary flight speed/handling
SPEEDMULT             = 2.0   -- Max speed + boost max speed
TURNSTRENGTHMULT      = 2.0   -- Steering authority
DIRECTIONBRAKEMULT    = 2.0   -- Direction-change braking
REVERSEBRAKEMULT      = 2.0   -- Brake/reverse response
TURNBRAKEMULT         = 0.5   -- Lower = less turn damping
BOOSTTHRUSTMULT       = 1.5   -- Boost acceleration
OVERSPEEDBRAKEMULT    = 1.5   -- Added in Cosmos rebuild to make doubled speed easier to rein in
LOWSPEEDTURNDAMPER    = 0.01  -- Keeps steering responsive while stopped / nearly stopped

-- Current Cosmos player ship control profiles.
-- Includes standard, light, heavy, hover-capable and Corvette profiles.
CONTROL_TYPES =
{
    "Control",
    "ControlLight",
    "ControlHeavy",
    "ControlHeavyHover",
    "ControlCorvette",
    "ControlHover",
}

-- Build the shared atmospheric flight changes.
FLIGHT_CHANGES = {}

for _, CONTROL in ipairs(CONTROL_TYPES) do

    -- Planetary cruising / surface exploration.
    FLIGHT_CHANGES[#FLIGHT_CHANGES + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {CONTROL, "GcPlayerSpaceshipControlData", "PlanetEngine", "GcPlayerSpaceshipEngineData"},
        ["INTEGER_TO_FLOAT"] = "FORCE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"MinSpeed", MINSPEED},
            {"LowSpeedTurnDamper", LOWSPEEDTURNDAMPER},
        }
    }

    FLIGHT_CHANGES[#FLIGHT_CHANGES + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {CONTROL, "GcPlayerSpaceshipControlData", "PlanetEngine", "GcPlayerSpaceshipEngineData"},
        ["MATH_OPERATION"] = "*",
        ["INTEGER_TO_FLOAT"] = "FORCE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"MaxSpeed", SPEEDMULT},
            {"BoostMaxSpeed", SPEEDMULT},
            {"DirectionBrakeMin", DIRECTIONBRAKEMULT},
            {"DirectionBrake", DIRECTIONBRAKEMULT},
            {"ReverseBrake", REVERSEBRAKEMULT},
            {"OverspeedBrake", OVERSPEEDBRAKEMULT},
            {"TurnStrength", TURNSTRENGTHMULT},
            {"TurnBrakeMin", TURNBRAKEMULT},
            {"TurnBrakeMax", TURNBRAKEMULT},
            {"BoostThrustForce", BOOSTTHRUSTMULT},
        }
    }

    -- Keep stop/hover/reverse behaviour when atmospheric combat switches engines.
    -- Combat top speed and combat handling remain vanilla.
    FLIGHT_CHANGES[#FLIGHT_CHANGES + 1] =
    {
        ["SPECIAL_KEY_WORDS"] = {CONTROL, "GcPlayerSpaceshipControlData", "AtmosCombatEngine", "GcPlayerSpaceshipEngineData"},
        ["INTEGER_TO_FLOAT"] = "FORCE",
        ["VALUE_CHANGE_TABLE"] =
        {
            {"MinSpeed", MINSPEED},
        }
    }
end

---------- Full version features ----------

INVENTORYMULT   = 6.0   -- 50u -> 300u ship interaction range
SCANRANGEMULT   = 2.0   -- Ship scanner pulse range
ICONRANGEMULT   = 3.0   -- Range at which scan icons can appear
SCANSPEEDMULT   = 0.75  -- 3s -> 2.25s pulse
COOLDOWNMULT    = 0.30  -- 10s -> 3s cooldown
MAXSCANBUILDINGS = 3    -- Vanilla = 2
MINSCANBUILDINGS = 1    -- Vanilla = 0
COSTMULT        = 0.20  -- Launch-cost multiplier

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "cb Planetary Flight Fixes",
    ["MOD_AUTHOR"]      = "chronicallybored",
    ["NMS_VERSION"]     = "7.04",
    ["MOD_DESCRIPTION"] = "Improves planetary ship speed, handling and hovering, plus ship interaction range, scanner performance and launch fuel cost.",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = FLIGHT_CHANGES
                },

                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ShipInteractRadius", INVENTORYMULT},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"UnknownBuildingRange", SCANRANGEMULT},
                                {"MaxIconRange", ICONRANGEMULT},
                            }
                        },
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"MaxShipScanBuildings", MAXSCANBUILDINGS},
                                {"MinShipScanBuildings", MINSCANBUILDINGS},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER"},
                            ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP"] = 1,
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", COSTMULT},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"},
                            ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP"] = 1,
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", COSTMULT},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC"},
                            ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP"] = 1,
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", COSTMULT},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO"},
                            ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
                            ["SECTION_UP"] = 1,
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Bonus", COSTMULT},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SHIP"},
                            ["PRECEDING_KEY_WORDS"] = {"ScanData"},
                            ["MATH_OPERATION"] = "*",
                            ["INTEGER_TO_FLOAT"] = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PulseRange", SCANRANGEMULT},
                                {"PulseTime", SCANSPEEDMULT},
                                {"ChargeTime", COOLDOWNMULT},
                            }
                        },
                    }
                },
            }
        },
    }
}
