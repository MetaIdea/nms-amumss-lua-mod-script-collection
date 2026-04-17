-- Configuration constants
local NMS_VERSION = "6.33"
local MOD_VERSION = "0"

-- Maximum number of technology upgrade modules of the same type
local MAX_SAME_GROUP_TECH = 6    -- Originally 3

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Larger Upgrade Stacks %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput",
    ["MOD_DESCRIPTION"] = string.format("Allows installation of more technology upgrade modules of the same type, increasing the limit from 3 to %d per type.", MAX_SAME_GROUP_TECH),
    ["NMS_VERSION"] = NMS_VERSION,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MaxNumSameGroupTech", MAX_SAME_GROUP_TECH}
                            }
                        }
                    }
                }
            }
        }
    }
}