-- Configuration constants
local NMS_VERSION = "6.33"
local MOD_VERSION = "0"

-- Helper function to format numbers with comma delimiters
local function format_number(num)
    local formatted = tostring(num)
    local k
    while true do  
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then
            break
        end
    end
    return formatted
end

-- Inventory stack size constants
-- These values are set to a reasonably large number to accommodate most gameplay needs
local STACK_LIMIT = 999999
-- local SEASON_TRANSFER_LIMIT = 9999

NMS_MOD_DEFINITION_CONTAINER = {
   ["MOD_FILENAME"] = string.format("Reasonably Large Inventory %s.%s", NMS_VERSION, MOD_VERSION),
   ["MOD_AUTHOR"] = "NilOutput",
   ["LUA_AUTHOR"] = "NilOutput",
   ["MOD_DESCRIPTION"] = string.format("Sets the max inventory stack size to %s.", format_number(STACK_LIMIT)),
   ["NMS_VERSION"] = NMS_VERSION,
   ["MODIFICATIONS"] = {
       {
           ["MBIN_CHANGE_TABLE"] = {
               {
                   ["MBIN_FILE_SOURCE"] = "METADATA/GAMESTATE/DIFFICULTYCONFIG.MBIN",
                   ["MXML_CHANGE_TABLE"] = {
                       {
                           ["PRECEDING_KEY_WORDS"] = {"InventoryStackLimitsOptionData"},
                           ["REPLACE_TYPE"] = "ALL",
                           ["VALUE_CHANGE_TABLE"] = {
                               {"SubstanceStackLimit", STACK_LIMIT},      -- Originally 9999
                               {"ProductStackLimit", STACK_LIMIT},        -- Originally 9999
                               {"Default", STACK_LIMIT},                  -- Originally 150-9999 (substance) / 3-5 (product)
                               {"Personal", STACK_LIMIT},                 -- Originally 300-9999 (substance) / 3-10 (product) 
                               {"PersonalCargo", STACK_LIMIT},            -- Originally 300-9999 (substance) / 5-10 (product)
                               {"Ship", STACK_LIMIT},                     -- Originally 300-9999 (substance) / 3-10 (product)
                               {"ShipCargo", STACK_LIMIT},                -- Originally 750-9999 (substance) / 5-10 (product)
                               {"Freighter", STACK_LIMIT},                -- Originally 750-9999 (substance) / 5-20 (product)
                               {"FreighterCargo", STACK_LIMIT},           -- Originally 750-9999 (substance) / 10-20 (product)
                               {"Vehicle", STACK_LIMIT},                  -- Originally 300-9999 (substance) / 3-10 (product)
                               {"Chest", STACK_LIMIT},                    -- Originally 1000-9999 (substance) / 10-20 (product)
                               {"BaseCapsule", STACK_LIMIT},              -- Originally 1250-9999 (substance) / 50-100 (product)
                               {"MaintenanceObject", STACK_LIMIT},        -- Originally 150-9999 (substance) / 5-10 (product)
                               {"UIPopup", STACK_LIMIT},                  -- Originally 150-9999 (substance) / 1 (product)
                            --    {"SeasonTransfer", SEASON_TRANSFER_LIMIT}  -- Originally 9999 (substance) / 20 (product)
                           }
                       }
                   }
               }
           }
       }
   }
}