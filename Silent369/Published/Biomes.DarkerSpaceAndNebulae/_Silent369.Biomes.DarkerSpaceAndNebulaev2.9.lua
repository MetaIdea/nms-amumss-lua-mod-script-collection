local modfilename = "Biomes.DarkerSpaceAndNebulae"
local lua_author  = "Silent"
local lua_version = "2.9"
local mod_author  = "Silent369"
local nms_version = "5.12"
local maintenance = mod_author
local description = [[

Makes Space Much Darker and Nebulae more subtle visually.

]]

------------------------------------------------------------------------------------------

local mbinfilepaths  = {
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN]],
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN]]
}

local skysettings = {
    topColour   = {value=0.02, keys={"TopColour"}},
    midColour   = {value=0.01, keys={"MidColour"}},
    botColour   = {value=0,    keys={"BottomColour"}},
    tpcolPlanet = {value=0.02, keys={"TopColourPlanet"}},
    mdcolPlanet = {value=0.01, keys={"MidColourPlanet"}},
    btcolPlanet = {value=0,    keys={"BottomColourPlanet"}},
    spaceClouds = {value=0,    keys={"CloudColour"}},
    lightColour = {value=1,    keys={"LightColour"}},
    nebulaCol1  = {value=0.03, keys={"NebulaColour1"}},
    nebulaCol2  = {value=0.02, keys={"NebulaColour2"}},
    nebulaCol3  = {value=0.01, keys={"NebulaColour3"}},
    spaceFog1   = {value=0,    keys={"FogColour"}},
    spaceFog2   = {value=0,    keys={"FogColour2"}},
}

------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_MAINTENANCE = maintenance,
    MOD_DESCRIPTION = description,
    MODIFICATIONS   = {
        {
            MBIN_CT = {
                {
                    MBIN_FS  = mbinfilepaths,
                    EXML_CT = {},
                },
            },
        },
    },
}

------------------------------------------------------------------------------------------

local changeTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CT"][1]["EXML_CT"]

local function createColorChangeTable(keyValue)
    local tableEntry = {
        PKW = keyValue.keys,
        REPLACE_TYPE = "ALL",
        ITF = "FORCE",
        VCT = {
            {"R", keyValue.value},
            {"G", keyValue.value},
            {"B", keyValue.value},
        },
    }
    return tableEntry
end

for _, keyValue in pairs(skysettings) do
    table.insert(changeTable, createColorChangeTable(keyValue))
end
