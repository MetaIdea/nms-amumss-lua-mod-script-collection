local modfilename = "CloudsSunAndFogLOD"
local lua_author  = "Silent"
local lua_version = "5.3"
local mod_author  = "Silent369"
local nms_version = "6.12"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

LOD Support Mod for Clouds Sun And Fog.

]]

--Modifies:
--GCENVIRONMENTGLOBALS.GLOBAL.MBIN
--GCDEBUGOPTIONS.GLOBAL.MBIN
--GCBUILDINGGLOBALS.GLOBAL.MBIN
--GCGRAPHICSGLOBALS.GLOBAL.MBIN

----------------------------------------------------------------------------------------
-- Settings
----------------------------------------------------------------------------------------

local bldLODdistance = 3

local cfgLODAdjust = {
    Low    = {1.0},
    Medium = {1.2},
    High   = {1.5},
    Ultra  = {2.5}
}

local cfgToolKit = {
    LODOverride = {1},
}

local cfgEnvProps = {
    PlanetObjectSwitch        = {150},   -- Original "700"
    PlanetLodSwitch0          = {600},   -- Original "300"
    PlanetLodSwitch0Elevation = {1400},  -- Original "700"
    PlanetLodSwitch1          = {4000},  -- Original "2000"
    PlanetLodSwitch2          = {20000}, -- Original "10000"
    PlanetLodSwitch3          = {40000}  -- Original "20000"
}

local cfgEnvPrimeProps = {
    PlanetObjectSwitch        = {250},   -- Original "2000"
    PlanetLodSwitch0          = {4000},  -- Original "2000"
    PlanetLodSwitch0Elevation = {4000},  -- Original "2000"
    PlanetLodSwitch1          = {4000},  -- Original "2000"
    PlanetLodSwitch2          = {20000}, -- Original "10000"
    PlanetLodSwitch3          = {40000}  -- Original "20000"
}

local cfgEnvGasGiantProps = {
    PlanetObjectSwitch        = {250},   -- Original "2000"
    PlanetLodSwitch0          = {4000},  -- Original "2000"
    PlanetLodSwitch0Elevation = {4000},  -- Original "2000"
    PlanetLodSwitch1          = {4000},  -- Original "2000"
    PlanetLodSwitch2          = {20000}, -- Original "10000"
    PlanetLodSwitch3          = {40000}  -- Original "20000"
}

local cfgFadeTimes = {
    TerrainFadeTime           = {1.0},   -- Original "2"
    TerrainFadeTimeInShip     = {1.0},   -- Original "2"
    CreatureFadeTime          = {0.7},   -- Original "1.5"
    FloraFadeTimeMin          = {0.3},   -- Original "0.6"
    FloraFadeTimeMax          = {1.0},   -- Original "2.25"
    HeavyAirFadeDistance      = {100},   -- Original "200"
    HeavyAirFadeInTime        = {0.7},   -- Original "1.5"
    HeavyAirFadeOutTime       = {0.7},   -- Original "1.5"
}

----------------------------------------------------------------------------------------
-- Mbin Files
----------------------------------------------------------------------------------------

local cfgFiles = {
    [[GCENVIRONMENTGLOBALS.GLOBAL.MBIN]], -- Id 1
    [[GCDEBUGOPTIONS.GLOBAL.MBIN]],       -- Id 2
    [[GCBUILDINGGLOBALS.GLOBAL.MBIN]],    -- Id 3
    [[GCGRAPHICSGLOBALS.GLOBAL.MBIN]]     -- Id 4
}

----------------------------------------------------------------------------------------

local modifications = {}

local function add_modification(filepath, vct_entries)
    table.insert(modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = vct_entries
            }
        }
    })
end

----------------------------------------------------------------------------------------
-- LODAdjust (GCENVIRONMENTGLOBALS)
----------------------------------------------------------------------------------------

local vct_entries_lod_adjust = {}

for property, value in pairs(cfgLODAdjust) do
    table.insert(vct_entries_lod_adjust, {
        SKW = {property, "TkLODSettingsData"},
        REPLACE_TYPE = "ALL",
        VCT = {{"LODAdjust", value[1]}}
    })
end

-- No Asteroids During Pulse
table.insert(vct_entries_lod_adjust, {
    REPLACE_TYPE = "ALL",
    VCT = {{"MaxAsteroidGenerationPerFramePulseJump", 0},}
})

add_modification(cfgFiles[1], vct_entries_lod_adjust)

----------------------------------------------------------------------------------------
-- Planet Object Switch (GCENVIRONMENTGLOBALS)
----------------------------------------------------------------------------------------

local vct_entries_planet_switch = {}

for property, value in pairs(cfgEnvProps) do
    table.insert(vct_entries_planet_switch, {
        PKW = {"EnvironmentProperties"},
        VCT = {{property, value[1]}}
    })
end

for property, value in pairs(cfgEnvPrimeProps) do
    table.insert(vct_entries_planet_switch, {
        PKW = {"EnvironmentPrimeProperties"},
        VCT = {{property, value[1]}}
    })
end

for property, value in pairs(cfgEnvGasGiantProps) do
    table.insert(vct_entries_planet_switch, {
        PKW = {"EnvironmentGasGiantProperties"},
        VCT = {{property, value[1]}}
    })
end

for property, value in pairs(cfgFadeTimes) do
    table.insert(vct_entries_planet_switch, {
        VCT = {{property, value[1]}}
    })
end

add_modification(cfgFiles[1], vct_entries_planet_switch)

----------------------------------------------------------------------------------------
-- Lod Override (GCDEBUGOPTIONS)
----------------------------------------------------------------------------------------

local vct_entries_lod_override = {}

for property, value in pairs(cfgToolKit) do
    table.insert(vct_entries_lod_override, {
        SKW = {"ToolkitGlobals", "TkGlobals"},
        VCT = {{property, value[1]}}
    })
end

add_modification(cfgFiles[2], vct_entries_lod_override)

----------------------------------------------------------------------------------------
-- Building Lod Override (GCBUILDINGGLOBALS)
----------------------------------------------------------------------------------------

local vct_entries_building_lod = {}

for property, value in pairs(cfgLODAdjust) do
    table.insert(vct_entries_building_lod, {
        SKW = {property, "TkLODDistances"},
        MATH_OP = "*",
        REPLACE_TYPE = "ALL",
        VCT = {{"Distances", value[1]*bldLODdistance}}
    })
end

add_modification(cfgFiles[3], vct_entries_building_lod)

----------------------------------------------------------------------------------------
-- Force Uncached Terrain (GCGRAPHICSGLOBALS)
----------------------------------------------------------------------------------------

local vct_entries_graphics = {}

table.insert(vct_entries_graphics, {
    VCT = {{"ForceUncachedTerrain", true},}
})

add_modification(cfgFiles[4], vct_entries_graphics)

----------------------------------------------------------------------------------------
-- Mod definition container
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
    MODIFICATIONS   = modifications,
}
