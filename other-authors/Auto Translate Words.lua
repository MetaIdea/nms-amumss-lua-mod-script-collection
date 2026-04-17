-- Configuration constants
local NMS_VERSION = "6.33"
local MOD_VERSION = "0"

-- Auto translate chance (default is 0.33)
local AUTO_TRANSLATE_CHANCE = 0.9    -- 90% chance (was 33%)

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = string.format("Auto Translate Words %s.%s", NMS_VERSION, MOD_VERSION),
    ["MOD_AUTHOR"] = "NilOutput",
    ["LUA_AUTHOR"] = "NilOutput",
    ["MOD_DESCRIPTION"] = "Automatically translates alien words without needing to learn them first.",
    ["NMS_VERSION"] = NMS_VERSION,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                    ["MXML_CHANGE_TABLE"] = {
                        {
                            ["VALUE_CHANGE_TABLE"] = {
                                {"AutoTranslateWordChance", AUTO_TRANSLATE_CHANCE}
                            }
                        }
                    }
                }
            }
        }
    }
}