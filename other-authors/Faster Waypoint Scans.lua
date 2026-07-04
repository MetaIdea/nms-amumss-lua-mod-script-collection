-- Configuration constants
local NMS_VERSION = "6.45.1"
local MOD_VERSION = "1"

-- Scan timing constants (reduced for faster scanning)
local PULSE_TIME = 0.25                    -- 0.25 second (was 4.0 and 8.0 seconds)
local CHARGE_TIME = 0.25                   -- 0.25 second (was 4.0 seconds)

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Faster Waypoint Scans %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput",
    ["MOD_DESCRIPTION"] = "Reduces waypoint and beacon scan times for faster exploration.",
    ["NMS_VERSION"] = NMS_VERSION,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCANNING/SCANDATATABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WAYPOINT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PulseTime", PULSE_TIME}, -- Originally 4.0 seconds
                                {"ChargeTime", CHARGE_TIME}, -- Originally 4.0 seconds
                                {"CameraEventType", "None"} -- Originally AerialView; skip the cinematic fly-over
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BEACON"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PulseTime", PULSE_TIME}, -- Originally 8.0 seconds
                                {"ChargeTime", CHARGE_TIME}, -- Originally 4.0 seconds
                                {"CameraEventType", "None"} -- Originally AerialView; skip the cinematic fly-over
                            }
                        }
                    }
                },
                {
                    -- The waypoint structure triggers the WAYPOINT aerial-view camera fly-over.
                    -- Match the smooth/quick values used for the base computer / beacon scan in
                    -- Camera Speed and Distance (LookTime left at 2.0, same as the beacon entry).
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WAYPOINT"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"StartTime", "0.100000"}, -- Originally 0.4 seconds
                                {"Time", "0.500000"},      -- Originally 2.0 seconds
                                {"PauseTime", "0.000000"}, -- Originally 0.2 seconds
                                {"TimeBack", "0.500000"}   -- Originally 1.5 seconds
                            }
                        }
                    }
                }
            }
        }
    }
}