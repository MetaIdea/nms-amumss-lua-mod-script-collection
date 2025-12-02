local modfilename = "FireFliesRemoved"
local lua_author  = "Silent"
local lua_version = "4.9"
local mod_author  = "Silent369"
local nms_version = "6.18"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Removes 'heavyair' firefly particles in all biomes.

Optionally disables the HeavyAir mechanism which is on by
default. If set to 'false' effectively removes all floating
particles.

]]

------------------------------------------------------------------------------
local Use_HeavyAir  = false
------------------------------------------------------------------------------
local heavy_thick   = 0.3  -- Modifies heavyair Thickness.
local heavy_speed   = 0.1  -- Modifies heavyair Speed.
local heavy_alpha1  = 0.8  -- Modifies heavyair Alpha 1.
local heavy_alpha2  = 0.8  -- Modifies heavyair Alpha 2.
------------------------------------------------------------------------------
local heavy_partcnt = 0.0  -- Modifies the number of heavyair particles
local heavy_speed_v = 0.0  -- Modifies the visible speed of particles
local heavy_radi_xy = 0.0  -- Modifies the particles radius / radiusY
local heavy_plife_t = 0.0  -- Modifies particles Min / Max lifetime
local heavy_fades_m = 0.0  -- Modifies fade speed of rendered particles
local heavy_scale_m = 0.0  -- Modifies the x,y,z particles scale ranges
local heavy_rotat_r = 0.0  -- Modifies the rotational range of particles
------------------------------------------------------------------------------
local fogstrength   = 0.0  -- Modifies fogstrength
local fogmax        = 0.0  -- Modifies fogmax
local fogheight     = 0.0  -- Modifies fogheight
------------------------------------------------------------------------------

local cfgScale = {
    ["Scale Range"] = {heavy_scale_m},
}

local cfgRotation = {
    ["Rotation Speed Range"] = {heavy_rotat_r}
}

local cfgParticles = {
    ["Number Of Particles"]   = {heavy_partcnt},
    ["Max Visible Speed"]     = {heavy_speed_v},
    Radius                    = {heavy_radi_xy},
    RadiusY                   = {heavy_radi_xy},
    ["Min Particle Lifetime"] = {heavy_plife_t},
    ["Max Particle Lifetime"] = {heavy_plife_t},
    ["Fade Time"]             = {heavy_fades_m}
}

local cfgFog = {
    FogStrength = {fogstrength},
    FogMax      = {fogmax},
    FogHeight   = {fogheight}
}

local cfgColours = {
    ["Colour 1"] = {0.80, 0.75, 0.55},
    ["Colour 2"] = {0.75, 0.55, 0.35},
}

local cfgToolKit = {
    UseHeavyAir = {Use_HeavyAir},
}

local cfgHeavyAir = {
    Thickness = {heavy_thick},
    Speed     = {heavy_speed},
    Alpha1    = {heavy_alpha1},
    Alpha2    = {heavy_alpha2}
}

-- Configurations
------------------------------------------------------------------------------

local cfgDebugoptions = {
  [[GCDEBUGOPTIONS.GLOBAL.MBIN]]
}

local cfgHeavyairPaths = {
  [[MODELS\EFFECTS\HEAVYAIR\ALIEN\ALIEN.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\ALIEN\ALIEN2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE3.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\ALPINE\ALPINE4.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\BUBBLE\BUBBLE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\CAVE\CAVE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\CAVE\CAVE2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\EARTH\EARTH2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\EARTH\NIGHTTIME.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORMDOT.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FIRESTORM\FIRESTORMGAS.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FIRESTORM\SCORCHEDGASOLD.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FIRESTORM\SPARK.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FIRESTORM\STORMFLAME.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FIRESTORM\STORMSMOKE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP02.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP03.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP04.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\FOGSWAMP05.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\FOGSWAMP\NIGHTTIME.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GASGIANT\GASGIANTASH.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GASGIANT\GASGIANTMIST.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMEMBER.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMGAS.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMSPIKE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\GRAVITYSTORMSPIKEL.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\SPARK.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\GRAVITYSTORM\STORMFLAME.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\JUNGLE\JUNGLE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\JUNGLE\JUNGLE2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MARS\MARS.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MARS\MARS2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MARS\MARS3.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MARS\MARS4.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MARS\SANDCAVE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MOON\MOON.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MOON\MOON2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\MOUNTAIN2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\MOUNTAIN\SANDCAVE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEASH1.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEFOG.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\RADIOACTIVE\RADIOACTIVEGAS.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHDOT.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHEDGAS.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHEDGASOLD.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SCORCHED\SCORCHFLAME.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SCORCHED\SPARK.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SNOW\SNOW1.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SNOW\SNOW2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\ABANDONEDFREIGHTER.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\NEBULABITS.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SPACE\NEBULADUST.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICGAS.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICSPORE.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\UNDERWATER\BUBBLES.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\WATER\WATER.HEAVYAIR.MBIN]]
}

local cfgWeatherPaths = {
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GASGIANTWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GRAVITYSTORMWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\GREENWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\HUMIDWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\LAVAWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RADIOACTIVE.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\RAINWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\REDWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SCORCHED.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SNOWWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\SWAMPWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\TOXIC.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\WEIRDWEATHER.MBIN]]
}

-- Initialise Modifications

----------------------------------------------------------------------------------------
local all_modifications = {}
----------------------------------------------------------------------------------------

-- Lod Override
----------------------------------------------------------------------------------------

for _, filepath in ipairs({cfgDebugoptions}) do
    local modifications = {}
    for property, value in pairs(cfgToolKit) do
        table.insert(modifications, {
            SKW = {"ToolkitGlobals", "TkGlobals"},
            VCT = {{property, value[1]},}
        })
    end
    table.insert(all_modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = modifications
            }
        }
    })
end

-- HeavyAir Particles Modifications
----------------------------------------------------------------------------------------

for _, filepath in ipairs(cfgHeavyairPaths) do
    local modifications = {}
    for property, value in pairs(cfgScale) do
        table.insert(modifications, {
            PKW = {property},
            MATH_OP = "*",
            REPLACE_TYPE = "ALL",
            VCT = {
                {"X", value[1]},
                {"Y", value[1]},
                {"Z", value[1]}
            }
        })
    end
    for property, value in pairs(cfgRotation) do
        table.insert(modifications, {
            PKW = {property},
            MATH_OP = "*",
            REPLACE_TYPE = "ALL",
            VCT = {
                {"Y", value[1]},
            }
        })
    end
    for property, value in pairs(cfgParticles) do
        table.insert(modifications, {
            MATH_OP = "*",
            REPLACE_TYPE = "ALL",
            ITF = "PRESERVE",
            VCT = {
                {property, value[1]},
            }
        })
    end
    for property, value in pairs(cfgColours) do
        table.insert(modifications, {
            PKW = {property},
            MATH_OP = "*",
            REPLACE_TYPE = "ALL",
            VCT = {
                {"R", value[1]},
                {"G", value[2]},
                {"B", value[3]},
                {"A", 1.000000},
            }
        })
    end
    table.insert(all_modifications, {
        MBIN_CT = {
            {
                MBIN_FS = filepath,
                MXML_CT = modifications
            }
        }
    })
end


-- HeavyAir Weather Modifications
----------------------------------------------------------------------------------------

for _, filepath in ipairs({cfgWeatherPaths}) do
    local modifications = {}
    for property, value in pairs(cfgHeavyAir) do
        table.insert(modifications, {
            SKW = {"Settings", "GcHeavyAirSettingValues"},
            SECTION_UP = 1,
            REPLACE_TYPE = "ALL",
            MATH_OP = "*",
            VCT = {{property, value[1]},}
        })
    end
    for property, value in pairs(cfgFog) do
        table.insert(modifications, {
            SKW = {"Fog", "GcFogProperties"},
            MATH_OP = "*",
            REPLACE_TYPE = "ALL",
            VCT = {{property, value[1]},}
        })
    end
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
