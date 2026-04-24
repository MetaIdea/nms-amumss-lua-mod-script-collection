-- Configuration constants
local NMS_VERSION = "6.34"
local MOD_VERSION = "0"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Faster Scanning %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput",
    ["MOD_DESCRIPTION"] = "Reduces the time it takes to scan objects with the Analysis Visor.",
    ["NMS_VERSION"] = NMS_VERSION,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"BinocTimeBeforeScan", "0.001"},
                                {"BinocMinScanTime", "0.0001"},
                                {"BinocScanTime", "0.001"},
                                {"BinocCreatureScanTime", "0.001"}
                            }
                        }
                    }
                }
            }
        }
    }
}