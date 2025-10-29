local modfilename = "NoSpeedLines4Streamers"
local lua_author  = "Silent"
local lua_version = "3.7"
local mod_author  = "Silent369"
local nms_version = "6.12"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

No speed lines.
No ship halo effect at cruise/boost/pulse in space.
No Space Dust / Plasma.
No Asteroids During Pulse.
No Metric Lines During Pulse

]]

-- Variables
----------------------------------------------------------------------------------------
local particleNum = 1
local partLifeMin = 0.01
local partLifeMax = 0.01
local partRadius  = 0.01
local partLiftime = 0.01
---------------------------------------------------------------------------------------------------

local cfgShipBoost = {
  [[MODELS\EFFECTS\ENGINES\SPEEDCOOL\TUNNELMAT.MATERIAL.MBIN]],
  [[MODELS\EFFECTS\ENGINES\SPEEDCOOLREVERSE\TUNNELMAT.MATERIAL.MBIN]],
  [[MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN]]
}

local cfgSpeedLines = {
  [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN]],
  [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN]],
  [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN]],
  [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN]],
  [[MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN]],
  [[MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN]],
  [[MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN]]
}

local cfgSpaceParticles = {
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACESMOKE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACESMOKEBIG.HEAVYAIR.MBIN]]
}

local cfgSpacePlasma      = { [[MODELS\EFFECTS\SPACE\PLASMA\PLASMA.MATERIAL.MBIN]] }
local cfgNoAsteroidsPulse = { [[GCENVIRONMENTGLOBALS.GLOBAL.MBIN]] }
local cfgNoMetricLines    = { [[GCSPACESHIPGLOBALS.GLOBAL.MBIN]] }

-- Modifications
----------------------------------------------------------------------------------------

local all_modifications = {}

----------------------------------------------------------------------------------------

-- No Metric Lines During Pulse
----------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgNoMetricLines) do
    local modifications = {}
    table.insert(modifications, {
        VCT = {{"MiniWarpLinesNum", 0},}
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

-- No Asteroids During Pulse
----------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgNoAsteroidsPulse) do
    local modifications = {}
    table.insert(modifications, {
        SKW = {
          {"Low",    "TkLODSettingsData"},
          {"Medium", "TkLODSettingsData"},
          {"High",   "TkLODSettingsData"},
          {"Ultra",  "TkLODSettingsData"},
        },
        VCT = {
            {"MaxAsteroidGenerationPerFramePulseJump", "0"},
        },
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

-- Ship Boost
----------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgShipBoost) do
    local modifications = {}
    table.insert(modifications, {
        SKW = {"Name", "gDiffuseMap"},
        REPLACE_TYPE = "ALL",
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

-- Speed Lines
----------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgSpeedLines) do
    local modifications = {}
    table.insert(modifications, {
        REPLACE_TYPE = "ALL",
        VCT = {
            {"Number Of Particles", particleNum},
            {"Radius",              partRadius},
            {"Lifetime",            partLiftime}
        }
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

-- Space Particles
----------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgSpaceParticles) do
    local modifications = {}
    table.insert(modifications, {
        REPLACE_TYPE = "ALL",
        VCT = {
            {"Number Of Particles",   particleNum},
            {"Min Particle Lifetime", partLifeMin},
            {"Max Particle Lifetime", partLifeMax}
        }
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

-- Space Plasma
----------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgSpacePlasma) do
    local modifications = {}
    table.insert(modifications, {
        SKW = {"Name", "gDiffuseMap"},
        REPLACE_TYPE = "ALL",
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
