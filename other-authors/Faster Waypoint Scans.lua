-- Configuration constants
local NMS_VERSION = "6.34"
local MOD_VERSION = "0"

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
                                {"ChargeTime", CHARGE_TIME} -- Originally 4.0 seconds
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "BEACON"},
                            ["VALUE_CHANGE_TABLE"] = {
                                {"PulseTime", PULSE_TIME}, -- Originally 8.0 seconds
                                {"ChargeTime", CHARGE_TIME} -- Originally 4.0 seconds
                            }
                        }
                    }
                }
            }
        }
    }
}