-- Configuration constants
local NMS_VERSION = "6.33"
local MOD_VERSION = "0"

-- Careful with this one! It boosts the supercharged slot multiplier significantly.
-- High values are especially problematic with modules that boost ship maneuverability.
local BONUS_MULTIPLIER = 3.000000 -- 1.250000

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"] = string.format("Supercharge Multiplier %s.%s", NMS_VERSION, MOD_VERSION),
   ["MOD_AUTHOR"] = "NilOutput",
   ["LUA_AUTHOR"] = "NilOutput",
   ["MOD_DESCRIPTION"] = string.format("Boosts supercharged slots by %sx.", BONUS_MULTIPLIER),
   ["NMS_VERSION"] = NMS_VERSION,
   ["MODIFICATIONS"] = {
       {
           ["MBIN_CHANGE_TABLE"] = {
               {
                   ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
                   ["MXML_CHANGE_TABLE"] = {
                       {
                           ["VALUE_CHANGE_TABLE"] = {
                               {"SpecialTechSlotBonus", BONUS_MULTIPLIER}
                           }
                       }
                   }
               }
           }
       }
   }
}