local modfilename = "DarkerSpaceAndNebulae"
local lua_author  = "Silent"
local lua_version = "3.9"
local mod_author  = "Silent369"
local nms_version = "5.74"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Space is much darker and Nebulae colours more subtle visually.

]]

-- Define the MBIN File Paths
----------------------------------------------------------------------------------------

local mbin_files = {
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN]],
    [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN]]
}

-- Define Space Sky Colours RGB values
----------------------------------------------------------------------------------------

local colourDefinitions = {
-------------------------  R    G    B
    TopColour          = {0.2, 0.2, 0.2},
    MidColour          = {0.1, 0.1, 0.1},
    BottomColour       = {0.1, 0.1, 0.1},
    TopColourPlanet    = {0.2, 0.2, 0.2},
    MidColourPlanet    = {0.1, 0.1, 0.1},
    BottomColourPlanet = {0.1, 0.1, 0.1},
    CloudColour        = {0.1, 0.1, 0.1},
    LightColour        = {0.9, 0.9, 1.0},
    NebulaColour1      = {0.3, 0.3, 0.3},
    NebulaColour2      = {0.2, 0.2, 0.2},
    NebulaColour3      = {0.1, 0.1, 0.1},
    FogColour          = {0.1, 0.1, 0.1},
    FogColour2         = {0.1, 0.1, 0.1}
}

-- Initialise Modifications
----------------------------------------------------------------------------------------

local all_modifications = {}

-- Solar System Space Sky Colours
----------------------------------------------------------------------------------------

for _, filepath in ipairs({mbin_files}) do
    local file_modifications = {}

    for prop_name, rgbValues in pairs(colourDefinitions) do
        table.insert(file_modifications, {
            SKW = {"Settings", "GcSolarSystemSkyColourData"},
            PKW = {prop_name},
            REPLACE_TYPE = "ALL",
            VCT = {
                {"R", rgbValues[1]},
                {"G", rgbValues[2]},
                {"B", rgbValues[3]},
                {"A", "1.000000"}
            }
        })
    end

    table.insert(all_modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = file_modifications
            }
        }
    })
end

-- Mod Definition Container
----------------------------------------------------------------------------------------
NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_MAINTENANCE = maintenance,
    MOD_DESCRIPTION = description,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   = all_modifications,
}
