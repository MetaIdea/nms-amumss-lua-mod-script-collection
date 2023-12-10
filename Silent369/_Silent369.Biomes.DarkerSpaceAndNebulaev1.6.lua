local modfilename = "Biomes.DarkerSpaceAndNebulae"
local lua_author = "Silent"
local lua_version = "v1.6"
local mod_author = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Makes Space Much Darker and Nebulae more subtle visually.

]]

local mbinfilepaths  = {
    "METADATA\\SIMULATION\\SOLARSYSTEM\\WEATHER\\SKYSETTINGS\\SPACERARESKYCOLOURS.MBIN",
    "METADATA\\SIMULATION\\SOLARSYSTEM\\WEATHER\\SKYSETTINGS\\SPACESKYCOLOURS.MBIN"
}

local strengthValues = {
    spaceSky    = 0.2,
    nightSky    = 0.2,
    spaceClouds = 0.2,
    starLight   = 0.9,
    nebula      = 0.3,
    spaceFog    = 0.2,
}

local alphaValues = {
    nebula      = 0.2,
    spaceFog    = 0.2,
}

local colorKeys = {
    spaceSky    = {"TopColour", "MidColour", "BottomColour"},
    nightSky    = {"TopColourPlanet", "MidColourPlanet", "BottomColourPlanet"},
    spaceClouds = {"CloudColour"},
    starLight   = {"LightColour"},
    nebula      = {"NebulaColour1", "NebulaColour2", "NebulaColour3"},
    spaceFog    = {"FogColour", "FogColour2"},
}

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]      = lua_author,
    ["MOD_AUTHOR"]      = mod_author,
    ["NMS_VERSION"]     = nms_version,
    ["MOD_MAINTENANCE"] = maintenance,
    ["MOD_DESCRIPTION"] = description,
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"]  = mbinfilepaths,
                    ["EXML_CHANGE_TABLE"] = {},
                },
            },
        },
    },
}

local changeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

local function createColorChangeTable(keys, value)
    return {
        ["PRECEDING_KEY_WORDS"] = keys,
        ["MATH_OPERATION"]      = "*",
        ["REPLACE_TYPE"]        = "ALL",
        ["INTEGER_TO_FLOAT"]    = "PRESERVE",
        ["VALUE_CHANGE_TABLE"]  =
        {
            {"R", value},
            {"G", value},
            {"B", value},
            {"A", value},
        },
    }
end

local function addToChangeTable(changeTable, keys, value)
    for _, key in ipairs(keys) do
        changeTable[#changeTable + 1] = createColorChangeTable({key}, value)
    end
end

for color, value in pairs(strengthValues) do
    addToChangeTable(changeTable, colorKeys[color], value)
end

for alpha, value in pairs(alphaValues) do
    addToChangeTable(changeTable, colorKeys[alpha], value)
end
