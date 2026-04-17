-- Configuration constants
local NMS_VERSION = "6.33"
local MOD_VERSION = "0"

local REFINER_TIME_FACTOR = 0.001 -- 1/1000 of the original time

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Rapid Refiners %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput",
    ["MOD_DESCRIPTION"] = string.format("Increases the speed of refiners.\nTime to make is multiplied by %g.", REFINER_TIME_FACTOR),
    ["NMS_VERSION"] = NMS_VERSION,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/NMS_REALITY_GCRECIPETABLE.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = "",
                            ["MATH_OPERATION"] = "*",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_MATCH"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"TimeToMake", REFINER_TIME_FACTOR}
                            }
                        }
                    }
                }
            }
        }
    }
}