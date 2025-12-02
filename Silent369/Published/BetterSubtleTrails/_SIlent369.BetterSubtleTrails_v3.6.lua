local modfilename = "BetterSubtleTrails"
local lua_author  = "Silent"
local lua_version = "3.6"
local mod_author  = "Silent369"
local nms_version = "6.18"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Makes trail effects shorter/thinner and more subtle.

]]

-- Mod Settings
----------------------------------------------------------------------------------------

local cfgHotTrails = {
    Width  = {6},
    Points = {11}
}

-- File Settings
----------------------------------------------------------------------------------------

local cfgSceneFiles = {
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTTRAIL.TRAIL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\PLASMATRAIL.TRAIL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.TRAIL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\SPLUTTERINGTRAIL.TRAIL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\TIMELOOPTRAIL.TRAIL.MBIN]]
}

-- Initialise modifications
----------------------------------------------------------------------------------------
local modifications = {}
----------------------------------------------------------------------------------------

local vct_entries = {}
for property, value in pairs(cfgHotTrails) do
    table.insert(vct_entries, {
        VCT = {{property, value[1]},}
    })
end
table.insert(modifications, {
    MBIN_CT = {
        {
            MBIN_FS = cfgSceneFiles,
            MXML_CT = vct_entries
        }
    }
})

-- Mod definition container
----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER = {
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_MAINTENANCE = maintenance,
    MOD_DESCRIPTION = description,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = modifications,
}
