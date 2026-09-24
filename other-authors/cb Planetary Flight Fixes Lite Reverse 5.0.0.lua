---------- Planetary Flight Fixes - Cosmos 7.04 ----------

-- Atmospheric minimum speed
MINSPEED = 0.0
-- 0 allows full stop and reverse flight in atmosphere.

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

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = "cb Planetary Flight Fixes Lite Reverse",
    ["MOD_AUTHOR"]      = "chronicallybored",
    ["NMS_VERSION"]     = "7.04",
    ["MOD_DESCRIPTION"] = "Improves planetary ship speed, handling and reverse flight.",
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = FLIGHT_CHANGES
                },
            }
        },
    }
}
