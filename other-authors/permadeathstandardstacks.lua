-- Configuration constants
local NMS_VERSION = "6.45.1"
local MOD_VERSION = "1.0"

-- ============================================================================
-- Remaps the "Inventory Stack Limits" difficulty setting used by the
-- Permadeath preset, from "Normal" (shown in-game as "Restricted") to "High"
-- (shown in-game as "Standard").
--
-- This does NOT touch the Custom/Normal/Creative/Relaxed/Survival presets -
-- only Permadeath (and its enforced "PermadeathMinSettings" floor) changes.
--
-- In-game difficulty label <-> internal enum mapping (confirmed via the
-- game's own localisation strings):
--   High   -> "Standard"
--   Normal -> "Restricted"
--   Low    -> "Harsh"
--
-- Combined with bigrefineryinputs / bigchestcapacity / bignutrientstorage
-- (which already scale the "High" tier by x5), a Permadeath save gets both
-- the more generous vanilla "Standard" baseline AND the x5 multiplier.
-- ============================================================================
local TARGET_DIFFICULTY = "High"  -- "High" = Standard, "Normal" = Restricted, "Low" = Harsh

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"] = string.format("Permadeath Standard Stacks %s.%s", NMS_VERSION, MOD_VERSION),
   ["MOD_AUTHOR"] = "wiigan",
   ["LUA_AUTHOR"] = "wiigan",
   ["MOD_DESCRIPTION"] = string.format(
       "Changes the Permadeath preset's Inventory Stack Limits difficulty from 'Restricted' to '%s', without touching any other difficulty preset.",
       (TARGET_DIFFICULTY == "High" and "Standard") or (TARGET_DIFFICULTY == "Low" and "Harsh") or "Restricted"
   ),
   ["NMS_VERSION"] = NMS_VERSION,
   ["MODIFICATIONS"] = {
       {
           ["MBIN_CHANGE_TABLE"] = {
               {
                   ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
                   ["MXML_CHANGE_TABLE"] = {
                       {
                           ["PRECEDING_KEY_WORDS"] = {"Presets", "Permadeath", "InventoryStackLimits"},
                           ["REPLACE_TYPE"] = "ALL",
                           ["VALUE_CHANGE_TABLE"] = {
                               {"InventoryStackLimitsDifficulty", TARGET_DIFFICULTY},  -- Originally "Normal" (Restricted)
                           }
                       },
                       {
                           ["PRECEDING_KEY_WORDS"] = {"PermadeathMinSettings", "InventoryStackLimits"},
                           ["REPLACE_TYPE"] = "ALL",
                           ["VALUE_CHANGE_TABLE"] = {
                               {"InventoryStackLimitsDifficulty", TARGET_DIFFICULTY},  -- Originally "Normal" (Restricted)
                           }
                       },
                   }
               }
           }
       }
   }
}
