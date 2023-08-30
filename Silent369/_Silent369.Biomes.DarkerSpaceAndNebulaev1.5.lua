local modfilename = "Biomes.DarkerSpaceAndNebulae"
local lua_author  = "Silent"
local lua_version = "v1.5"
local mod_author  = "Silent369"
local nms_version = "4.42"
local maintenance = mod_author
local description = [[

Makes Space Much Darker and Nebulae more subtle visually.

]]

---------------------------------------------------------------------------------------------
local spaceSkyColourStrength    = 0.1
local nightSkyColourStrength    = 0.1
local spaceCloudsColourStrength = 0.1
local starLightColourStrength   = 1
local nebulaColourStrength      = 0.2
local nebulaAlphaStrength       = 0.1
local spaceFogColourStrength    = 0.2
local spaceFogAlphaStrength     = 0.2
---------------------------------------------------------------------------------------------

local COLOR_TABLE =
{
    {spaceSkyColourStrength,    {"TopColour", "MidColour", "BottomColour"}},
    {nightSkyColourStrength,    {"TopColourPlanet", "MidColourPlanet", "BottomColourPlanet"}},
    {spaceCloudsColourStrength, {"CloudColour"}},
    {starLightColourStrength,   {"LightColour"}},
    {nebulaColourStrength,      {"NebulaColour1", "NebulaColour2", "NebulaColour3"}},
    {spaceFogColourStrength,    {"FogColour", "FogColour2"}}
}

local ALPHA_TABLE =
{
    {nebulaAlphaStrength,       {"NebulaColour1", "NebulaColour2", "NebulaColour3"}},
    {spaceFogAlphaStrength,     {"FogColour", "FogColour2"}}
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
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"]  = {
                        [[METADATA\\SIMULATION\\SOLARSYSTEM\\WEATHER\\SKYSETTINGS\\SPACERARESKYCOLOURS.MBIN]],
                        [[METADATA\\SIMULATION\\SOLARSYSTEM\\WEATHER\\SKYSETTINGS\\SPACESKYCOLOURS.MBIN]]
                    },
                    ["EXML_CHANGE_TABLE"] = {},
                },
            },
        },
    },
}

local changeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

local function createColorChangeTable(keys, value)
    local temp_table =
    {
        ["PRECEDING_KEY_WORDS"] = keys,
        ["MATH_OPERATION"]      = "*",
        ["REPLACE_TYPE"]        = "ALL",
        ["INTEGER_TO_FLOAT"]    = "FORCE",
        ["VALUE_CHANGE_TABLE"]  =
        {
            {"R", value},
            {"G", value},
            {"B", value},
            {"A", value},
        },
    }
    return temp_table
end

local function addToChangeTable(changeTable, keys, value)
    for j = 1, #keys do
        changeTable[#changeTable + 1] = createColorChangeTable({keys[j]}, value)
    end
end

for _, colorEntry in ipairs(COLOR_TABLE) do
    addToChangeTable(changeTable, colorEntry[2], colorEntry[1])
end

for _, alphaEntry in ipairs(ALPHA_TABLE) do
    addToChangeTable(changeTable, alphaEntry[2], alphaEntry[1])
end
