local mod_filename = "noResources"
local lua_author  = "Strollker"
local mod_author  = "Strollker"
local lua_version = "6.05.2"
local nms_version = "Voyagers"
local mod_description = [[
    
]]

-- Função genérica que adiciona uma mudança EXML à tabela
function AddChange(exml_table, config)
    local entry = {
        ["REPLACE_TYPE"] = "ALL",
        ["VALUE_CHANGE_TABLE"] = config.values
    }

    -- Usa SPECIAL_KEY_WORDS ou PRECEDING_KEY_WORDS, conforme o caso
    if config.keywords then
        entry["SPECIAL_KEY_WORDS"] = config.keywords
    elseif config.preceding then
        entry["PRECEDING_KEY_WORDS"] = config.preceding
    end

    -- Se houver SECTION_UP, adiciona
    if config.section_up then
        entry["SECTION_UP"] = config.section_up
    end

    table.insert(exml_table, entry)
end

-- Listas originais
local Presets = { "Normal", "Survival", "Permadeath", "PermadeathMinSettings" }

local iStackLimits = { "Low", "Normal", "High" }

local sStackLimits = {
    "Default", "Personal", "PersonalCargo",
    "Ship", "ShipCargo", "Freighter",
    "FreighterCargo", "Vehicle", "Chest",
    "BaseCapsule", "MaintenanceObject",
    "UIPopup", "SeasonTransfer"
}

-- Tabela principal de mudanças
local exml_changes = {}

--  Loop Presets
for _, p in ipairs(Presets) do
    AddChange(exml_changes, {
        keywords = {{p, "GcDifficultySettingsData"}},
        values = {
            {"InventoriesAlwaysInRange", "True"},
            {"CraftingIsFree", "True"}
        }
    })
end

--  Loop Stack Limits (Inventory)
for _, i in ipairs(iStackLimits) do
    AddChange(exml_changes, {
        keywords = {{i, "GcDifficultyInventoryStackSizeOptionData"}},
        values = {
            {"SubstanceStackLimit", "99999"},
            {"ProductStackLimit", "99999"}
        }
    })
end

--  Loop Stack Limits (Substances)
for _, s in ipairs(sStackLimits) do
    AddChange(exml_changes, {
        preceding = {"MaxSubstanceStackSizes"},
        values = {
            {s, "99999"}
        }
    })
end

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME     = mod_filename .. " " .. nms_version .. " v" .. lua_version,
    LUA_AUTHOR       = lua_author,
    MOD_AUTHOR       = mod_author,
    NMS_VERSION      = nms_version,
    MOD_DESCRIPTION  = mod_description,
    MODIFICATIONS    =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
                    ["MXML_CHANGE_TABLE"] = exml_changes
                },
            },
        },
    },
}