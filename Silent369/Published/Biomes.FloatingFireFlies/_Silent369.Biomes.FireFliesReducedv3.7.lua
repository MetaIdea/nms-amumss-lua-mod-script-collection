local modfilename = "Biomes.FireFliesReduced"
local lua_author  = "Silent"
local lua_version = "3.7"
local mod_author  = "Silent369"
local nms_version = "5.12"
local maintenance = mod_author
local description = [[

Resized/Reduced 'heavyair' firefly particles in all biomes.

]]

------------------------------------------------------------------------------
local divider = 0.1    -- Modifies the number of heavyair particles.
local speed_v = 0.1    -- Modifies the visible speed of particles.
local multply = 1.5    -- Modifies the particles radius / radiusY.
local fades_m = 0.5    -- Modifies fade speed of rendered particles.
local scale_m = 1.0    -- Modifies the x,y,z particles scale ranges.
local rotat_r = 0.5    -- Modifies the rotational range of particles.
------------------------------------------------------------------------------
local heavy_a = 0.1    -- Modifies all heavyair for all weather types.
local foggy_a = 0.1    -- Modifies all fog for all weather types.
------------------------------------------------------------------------------

local particle_paths = {
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
  [[MODELS\EFFECTS\HEAVYAIR\UNDERWATER\BUBBLE1.HEAVYAIR.MBIN]],
  [[MODELS\EFFECTS\HEAVYAIR\WATER\WATER.HEAVYAIR.MBIN]]
}

local weather_paths = {
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BLUEWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\BUBBLEWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARCOLD.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\CLEARWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\DUSTWEATHER.MBIN]],
  [[METADATA\SIMULATION\SOLARSYSTEM\WEATHER\FIRESTORMWEATHER.MBIN]],
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

local function decimals(value, precision)
    precision = precision or 0
    local formatString = "%." .. precision .. "f"
    return string.format(formatString, value)
end

-- Optimize particles for a given path
local function optimizeParticlesForPath(path)
    table.insert(NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CT, {
        MBIN_FS = path,
        EXML_CT = {
            {
                SKW = {"ScaleRange", "Vector3f.xml"},
                MATH_OP = "*",
                ITF = "FORCE",
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"x",           decimals(scale_m, 3)},
                    {"y",           decimals(scale_m, 3)},
                    {"z",           decimals(scale_m, 3)}
                }
            },
            {
                SKW = {"RotationSpeedRange", "Vector3f.xml"},
                MATH_OP = "*",
                ITF = "FORCE",
                REPLACE_TYPE = "ALL",
                VCT = {{"y", decimals(rotat_r, 3)}}
            },
            {
                MATH_OP = "*",
                ITF = "FORCE",
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"NumberOfParticles", decimals(divider, 5)},
                    {"MaxVisibleSpeed",   decimals(speed_v, 3)},
                    {"Radius",            decimals(multply, 5)},
                    {"RadiusY",           decimals(multply, 5)},
                    {"FadeTime",          decimals(fades_m, 3)}
                }
            }
        }
    })
end

-- Optimize weather heavyair for a given path
local function optimizeWeatherForPath(path)
    table.insert(NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CT, {
        MBIN_FS = path,
        EXML_CT = {
            {
                SKW = {"HeavyAir", "GcHeavyAirSetting.xml"},
                PKW = {"Settings", "GcHeavyAirSettingValues.xml"},
                SECTION_UP = 1,
                ITF = "FORCE",
                REPLACE_TYPE = "ALL",
                VALUE_MATCH = "0",
                VALUE_MATCH_OPTIONS = "~=",
                VCT = {
                    {"Thickness",   heavy_a},
                    {"Speed",       heavy_a},
                    {"Alpha1",      heavy_a},
                    {"Alpha2",      heavy_a}
                }
            },
            {
                PKW = {"HeavyAir", "VariableSizeString.xml"},
                REPLACE_TYPE = "ALL",
                VCT = {{"Value", ""},}
            },
            {
                SKW = {
                    {"Fog",        "GcFogProperties.xml"},
                    {"FlightFog",  "GcFogProperties.xml"},
                    {"StormFog",   "GcFogProperties.xml"},
                    {"ExtremeFog", "GcFogProperties.xml"},
                    {"ExtremeFog", "GcFogProperties.xml"},
                },
                ITF = "FORCE",
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"FogStrength",              foggy_a},
                    {"FogMax",                   foggy_a},
                    {"FogColourStrength",        foggy_a},
                    {"FogColourMax",             foggy_a},
                    {"HeightFogStrength",        foggy_a},
                    {"HeightFogFadeOutStrength", foggy_a},
                    {"HeightFogOffset",          foggy_a},
                    {"HeightFogMax",             foggy_a},
                    {"FogHeight",                foggy_a},
                }
            },
        }
    })
end

-- Optimize particles for all paths
local function optimizeAllParticles(mod_table)
    for _, path in ipairs(mod_table) do
        optimizeParticlesForPath(path)
    end
end

-- Optimize weather heavyair for all paths
local function optimizeAllWeather(mod_table)
    for _, path in ipairs(mod_table) do
        optimizeWeatherForPath(path)
    end
end

------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = string.format("_%s%s.pak", modfilename, "v"..lua_version),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    MODIFICATIONS   =
    {
        {
            MBIN_CT = {}
        }
    },
}

------------------------------------------------------------------------------
optimizeAllParticles(particle_paths)
optimizeAllWeather(weather_paths)
------------------------------------------------------------------------------
