local modfilename = "NoShipTrails"
local lua_author  = "Silent"
local lua_version = "1.9"
local mod_author  = "Silent369"
local nms_version = "5.03"
local maintenance = mod_author
local description = [[

Simply removes all ship trails!

]]

local SourceFiles = {
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTCYANTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTDARKTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGOLDTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGREENTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTORANGETRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTREDTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\SPLUTTERINGTRAIL.MATERIAL.MBIN",
    "MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\TIMELOOPTRAIL.MATERIAL.MBIN"
}

local ExmlChangeTable = {
    ["PRECEDING_KEY_WORDS"] = {"Samplers"},
    ["VALUE_CHANGE_TABLE"]  = {{"Map", ""},}
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MOD_MAINTENANCE"]      = maintenance,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = SourceFiles,
                    ["EXML_CHANGE_TABLE"] = { ExmlChangeTable }
                },
            }
        },
    }
}
