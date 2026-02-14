-- Colossus exocraft headlight improvement

-----------------------------------------------------------------------
-- PART 1: spotLight changes in rover scene
-----------------------------------------------------------------------

MAIN_SPOTS = {
    "spotLight1_2_3",      -- Cockpit 1 left  (was DISABLED)
    "spotLight3_2_3",      -- Cockpit 1 right
    "spotLight1_2_2_2",    -- Cockpit 2 left
    "spotLight3_2_2_2",    -- Cockpit 2 right
    "spotLight1_2_1",      -- Cockpit 3 (single headlight)
}

VOLUMETRIC_SPOTS = {
    "spotLight4_2_3",      -- Cockpit 1 right volumetric
    "spotLight5_2_3",      -- Cockpit 1 left volumetric
    "spotLight4_2_2_2",    -- Cockpit 2 right volumetric
    "spotLight5_2_2_2",    -- Cockpit 2 left volumetric
    "spotLight4_2_2_1",    -- Cockpit 2 upper right volumetric
    "spotLight5_2_2_1",    -- Cockpit 2 upper left volumetric
    "spotLight5_2_1",      -- Cockpit 3 volumetric
}

SCENE_CHANGES = {}

for _, name in ipairs(MAIN_SPOTS) do
    table.insert(SCENE_CHANGES, {
        SPECIAL_KEY_WORDS = {"Name", name, "Name", "RADIUS"},
        VALUE_CHANGE_TABLE = { {"Value", "100.000000"} }
    })
    table.insert(SCENE_CHANGES, {
        SPECIAL_KEY_WORDS = {"Name", name, "Name", "INTENSITY"},
        VALUE_CHANGE_TABLE = { {"Value", "6.000000"} }      -- original 12.25
    })
    table.insert(SCENE_CHANGES, {
        SPECIAL_KEY_WORDS = {"Name", name, "Name", "FALLOFF"},
        VALUE_CHANGE_TABLE = { {"Value", "0.000000"} }
    })
end

for _, name in ipairs(VOLUMETRIC_SPOTS) do
    table.insert(SCENE_CHANGES, {
        SPECIAL_KEY_WORDS = {"Name", name, "Name", "RADIUS"},
        VALUE_CHANGE_TABLE = { {"Value", "60.000000"} }
    })
    table.insert(SCENE_CHANGES, {
        SPECIAL_KEY_WORDS = {"Name", name, "Name", "INTENSITY"},
        VALUE_CHANGE_TABLE = { {"Value", "2.000000"} }       -- original 6.25
    })
    table.insert(SCENE_CHANGES, {
        SPECIAL_KEY_WORDS = {"Name", name, "Name", "FALLOFF"},
        VALUE_CHANGE_TABLE = { {"Value", "0.000000"} }
    })
    table.insert(SCENE_CHANGES, {
        SPECIAL_KEY_WORDS = {"Name", name, "Name", "VOLUMETRIC"},
        VALUE_CHANGE_TABLE = { {"Value", "0.000000"} }
    })
end

-----------------------------------------------------------------------
-- MOD DEFINITION
-----------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"]  = "ColossusHeadlights",
    ["MOD_AUTHOR"]    = "Carbonster",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/VEHICLES/ROVER/ROVER.SCENE.MBIN",
                    ["EXML_CHANGE_TABLE"] = SCENE_CHANGES,
                },
                {
                    ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/VEHICLES/ROVER/ROVER/BIGGSLIGHTSMAT26.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            SPECIAL_KEY_WORDS = {"Name", "gMaterialColourVec4"},
                            VALUE_CHANGE_TABLE = {
                                {"W", "0.250000"},
                            }
                        },
                        {
                            SPECIAL_KEY_WORDS = {"Name", "gMaterialParamsVec4"},
                            VALUE_CHANGE_TABLE = {
                                {"X", "0.200000"},
                            }
                        },
                    },
                },
            },
        },
    },
}