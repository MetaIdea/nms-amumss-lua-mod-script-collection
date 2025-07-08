local modfilename = "DarkerSpaceAndNebulae"
local lua_author  = "Silent"
local lua_version = "3.8"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Makes Space Much Darker and Nebulae more subtle visually.

]]

-- Mbin File Paths
----------------------------------------------------------------------------------------
local mbin_file_source1 = [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACERARESKYCOLOURS.MBIN]]
local mbin_file_source2 = [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SKYSETTINGS\SPACESKYCOLOURS.MBIN]]

-- Index values for each file
----------------------------------------------------------------------------------------
local SpaceRColours = 47
local SpaceSColours = 9

-- Define RGB values for each property.
----------------------------------------------------------------------------------------
local TopColour          = {0.2, 0.2, 0.2}
local MidColour          = {0.1, 0.1, 0.1}
local BottomColour       = {0.1, 0.1, 0.1}
local TopColourPlanet    = {0.2, 0.2, 0.2}
local MidColourPlanet    = {0.1, 0.1, 0.1}
local BottomColourPlanet = {0.1, 0.1, 0.1}
local CloudColour        = {0.1, 0.1, 0.1}
local LightColour        = {0.9, 0.9, 1.0}
local NebulaColour1      = {0.3, 0.3, 0.3}
local NebulaColour2      = {0.2, 0.2, 0.2}
local NebulaColour3      = {0.1, 0.1, 0.1}
local FogColour          = {0.1, 0.1, 0.1}
local FogColour2         = {0.1, 0.1, 0.1}

-- Space Sky Colours Template
----------------------------------------------------------------------------------------
local SpaceSkyColoursTemplate = string.format([[
            <Property name="Settings" value="GcSolarSystemSkyColourData" _index="%%d">
                <Property name="TopColour">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="MidColour">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="BottomColour">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="TopColourPlanet">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="MidColourPlanet">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="BottomColourPlanet">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="CloudColour">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="LightColour">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="NebulaColour1">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="NebulaColour2">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="NebulaColour3">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="FogColour">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
                <Property name="FogColour2">
                    <Property name="R" value="%.6f" />
                    <Property name="G" value="%.6f" />
                    <Property name="B" value="%.6f" />
                    <Property name="A" value="1.000000" />
                </Property>
            </Property>
]],
TopColour[1], TopColour[2], TopColour[3],
MidColour[1], MidColour[2], MidColour[3],
BottomColour[1], BottomColour[2], BottomColour[3],
TopColourPlanet[1], TopColourPlanet[2], TopColourPlanet[3],
MidColourPlanet[1], MidColourPlanet[2], MidColourPlanet[3],
BottomColourPlanet[1], BottomColourPlanet[2], BottomColourPlanet[3],
CloudColour[1], CloudColour[2], CloudColour[3],
LightColour[1], LightColour[2], LightColour[3],
NebulaColour1[1], NebulaColour1[2], NebulaColour1[3],
NebulaColour2[1], NebulaColour2[2], NebulaColour2[3],
NebulaColour3[1], NebulaColour3[2], NebulaColour3[3],
FogColour[1], FogColour[2], FogColour[3],
FogColour2[1], FogColour2[2], FogColour2[3]
)

-- Initialise Modifications
----------------------------------------------------------------------------------------
local all_modifications = {}

-- Function to add Space Sky Colours for a given file
----------------------------------------------------------------------------------------
local function addSkyColourMod(filepath, num_indices)
    local current_file = {}
    table.insert(current_file, {
        SKW = {"Settings", "GcSolarSystemSkyColourData"},
        REPLACE_TYPE = "ALL",
        REMOVE = "SECTION",
    })
    for i = num_indices, 0, -1 do
        local SpaceSkyColours = string.format(SpaceSkyColoursTemplate, i)
        table.insert(current_file, {
            PKW = {"Settings"},
            EXML_FLAGS = "OVERWRITE",
            ADD = SpaceSkyColours
        })
    end
    table.insert(all_modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = current_file
            }
        }
    })
end

-- Call the function for each file
----------------------------------------------------------------------------------------
addSkyColourMod(mbin_file_source1, SpaceRColours)
addSkyColourMod(mbin_file_source2, SpaceSColours)

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