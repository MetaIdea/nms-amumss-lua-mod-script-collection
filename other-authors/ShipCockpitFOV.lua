-- Ship Cockpit FOV
-- AMUMSS Lua Script
-- Slightly Better Ship Cockpit View

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]    = "ShipCockpitFOV.pak",
    ["MOD_DESCRIPTION"] = "Increases ship cockpit Field of View",
    ["MOD_AUTHOR"]      = "MindDoser",
    ["LUA_AUTHOR"]      = "MindDoser",
    ["NMS_VERSION"]     = "5.0+",

    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"ShipFoVMin",     "90"},   -- Default: 75
                                {"ShipFoVMax",     "105"},   -- Default: 90
                                {"ShipFoVBoost",   "110"},  -- Default: 95
                                {"ShipFoVMiniJump","110"}   -- Default: 100
                            }
                        }
                    }
                }
            }
        }
    }
}
