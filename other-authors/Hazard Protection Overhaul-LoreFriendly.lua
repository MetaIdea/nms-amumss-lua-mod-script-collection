local input_mode = {
    "1",
    [[
Select Hazard Protection Mode:
1 = Small boost (Lore-Friendly)
2 = Medium boost (For Lazy Guys)
3 = High boost (Seems Cheating)
Default = 1
]]
}

local mode_choice = tonumber(GUIF(input_mode, 10)) or 1

local current_mult = (mode_choice == 2) and 1.2 or (mode_choice == 3) and 1.4 or 1.0
local haz_mult = (mode_choice == 1) and 1.24 or (mode_choice == 2) and 1.45 or (mode_choice == 3) and 1.67 or 1.0

local base_vals = {
    ["1"] = {min = 1.02, max = 1.04},
    ["2"] = {min = 1.07, max = 1.12},
    ["3"] = {min = 1.16, max = 1.21}
}

local tech_changes = {}
local proc_changes = {}

for _, id in ipairs({"T_COLDPROT", "T_HOTPROT", "T_TOX", "T_RAD", "T_UNW"}) do
    table.insert(tech_changes, {
        SPECIAL_KEY_WORDS = {"ID", id},
        VALUE_CHANGE_TABLE = {
            {"Chargeable", "False"},
            {"ChargeAmount", "100"},
            {"Upgrade", "True"}
        }
    })
    
    table.insert(tech_changes, {
        SPECIAL_KEY_WORDS = {"ID", id},
        PRECEDING_KEY_WORDS = {"ChargeBy"},
        ADD_OPTION = "REPLACEwholeSECTION",
        ADD = [[<Property name="ChargeBy" />]]
    })
end

local haz_maps = {
    COLD = {old = "Suit_Protection_Cold", new = "Suit_Protection_ColdDrain"},
    HOT  = {old = "Suit_Protection_Heat", new = "Suit_Protection_HeatDrain"},
    TOX  = {old = "Suit_Protection_Toxic", new = "Suit_Protection_ToxDrain"},
    RAD  = {old = "Suit_Protection_Radiation", new = "Suit_Protection_RadDrain"},
    UNW  = {old = "Suit_Underwater", new = "Suit_Protection_WaterDrain"}
}

for haz, data in pairs(haz_maps) do
    for level, vals in pairs(base_vals) do
        local id = "UP_" .. haz .. level
        local final_min = string.format("%.4f", vals.min * current_mult)
        local final_max = string.format("%.4f", vals.max * current_mult)
        
        table.insert(proc_changes, {
            SPECIAL_KEY_WORDS = {"ID", id, "StatsType", data.old},
            SECTION_UP = 2,
            VALUE_CHANGE_TABLE = {
                {"StatsType", data.new},
                {"ValueMin", final_min},
                {"ValueMax", final_max}
            }
        })
    end
end

table.insert(proc_changes, {
    SPECIAL_KEY_WORDS = {"ID", "UP_HAZX"},
    PRECEDING_KEY_WORDS = {"StatLevels"},
    REPLACE_TYPE = "ALL",
    VALUE_CHANGE_TABLE = {
        {"ValueMin", string.format("%.4f", 1.01 * haz_mult)},
        {"ValueMax", string.format("%.4f", 1.10 * haz_mult)}
    }
})

table.insert(proc_changes, {
    SPECIAL_KEY_WORDS = {"ID", "UP_HAZ0"},
    PRECEDING_KEY_WORDS = {"StatLevels"},
    REPLACE_TYPE = "ALL",
    VALUE_CHANGE_TABLE = {
        {"ValueMin", string.format("%.4f", 1.17 * current_mult)},
        {"ValueMax", string.format("%.4f", 1.34 * current_mult)}
    }
})

NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME      = "Hazard Protection Overhaul",
    MOD_AUTHOR        = "Exterra Project",
    NMS_VERSION       = "6.45",
    MOD_DESCRIPTION   = "Overhaul of hazard protection system. Passive protection for regular upgrades and boosted stats for pirate and drowned upgrades.",
    MODIFICATIONS     = {
        {
            MBIN_CHANGE_TABLE = {
                {
                    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
                    MXML_CHANGE_TABLE = tech_changes
                },
                {
                    MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
                    MXML_CHANGE_TABLE = proc_changes
                }
            }
        }
    }
}