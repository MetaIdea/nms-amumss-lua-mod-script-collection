local modfilename = "NoShipTrails"
local lua_author  = "Silent"
local lua_version = "3.2"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Simply removes all ship trails!

]]

local SourceFiles = {
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

local ExmlChangeTable = {
    PKW = {"Samplers"},
    VCT = {{"Map", ""},}
}

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   =
    {
        {
            MBIN_CT =
            {
                {
                    MBIN_FS = SourceFiles,
                    MXML_CT = {
                        ExmlChangeTable
                    }
                },
            }
        },
    }
}
