local modfilename = "NoShipTrails"
local lua_author  = "Silent"
local lua_version = "3.4"
local mod_author  = "Silent369"
local nms_version = "6.12"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Simply removes all ship trails!

]]

-- File Sources
--------------------------------------------------------------------------------------------

local cfgFiles = {
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTCYANTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTDARKTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGOLDTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGREENTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTORANGETRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTREDTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\SPLUTTERINGTRAIL.MATERIAL.MBIN]],
    [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\TIMELOOPTRAIL.MATERIAL.MBIN]]
}

--------------------------------------------------------------------------------------------

local all_modifications = {}

--------------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgFiles) do
    local modifications = {}

    table.insert(modifications, {
        PKW = {"Samplers"},
        VCT = {{"Map", ""},}
    })

    table.insert(all_modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = modifications
            }
        }
    })
end

--------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = all_modifications,
}
