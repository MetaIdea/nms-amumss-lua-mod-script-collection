local modfilename = "Biomes.FireFliesReduced"
local lua_author  = "Silent"
local lua_version = "v2.3"
local mod_author  = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Resized/Reduced 'heavyair' firefly particles in all biomes.

]]

------------------------------------------------------------------------------
local divider = 0.1    -- Modifies the number of heavyair particles.
local speed_v = 0.1    -- Modifies the visible speed of particles.
local multply = 1.5    -- Modifies the particles radius / radiusY.
local fades_m = 0.5    -- Modifies fade speed of rendered particles.
local scale_m = 2.0    -- Modifies the x,y,z particles scale ranges.
local rotat_r = 0.5    -- Modifies the rotational range of particles.
------------------------------------------------------------------------------

-- Define particle paths
local particle_paths = {
  "MODELS\\EFFECTS\\HEAVYAIR\\ALIEN\\ALIEN.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\ALIEN\\ALIEN2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\ALPINE\\ALPINE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\ALPINE\\ALPINE2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\ALPINE\\ALPINE3.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\ALPINE\\ALPINE4.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\BUBBLE\\BUBBLE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\CAVE\\CAVE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\CAVE\\CAVE2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\EARTH\\EARTH.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\EARTH\\EARTH2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\EARTH\\NIGHTTIME.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FIRESTORM\\FIRESTORMDOT.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FIRESTORM\\FIRESTORMGAS.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FIRESTORM\\SCORCHEDGASOLD.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FIRESTORM\\SPARK.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FIRESTORM\\STORMFLAME.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FIRESTORM\\STORMSMOKE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FOGSWAMP\\FOGSWAMP.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FOGSWAMP\\FOGSWAMP02.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FOGSWAMP\\FOGSWAMP03.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FOGSWAMP\\FOGSWAMP04.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FOGSWAMP\\FOGSWAMP05.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\FOGSWAMP\\NIGHTTIME.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\GRAVITYSTORM\\GRAVITYSTORMEMBER.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\GRAVITYSTORM\\GRAVITYSTORMGAS.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\GRAVITYSTORM\\GRAVITYSTORMSPIKE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\GRAVITYSTORM\\GRAVITYSTORMSPIKEL.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\GRAVITYSTORM\\SPARK.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\GRAVITYSTORM\\STORMFLAME.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\JUNGLE\\JUNGLE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\JUNGLE\\JUNGLE2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MARS\\MARS.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MARS\\MARS2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MARS\\MARS3.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MARS\\MARS4.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MARS\\SANDCAVE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MOON\\MOON.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MOON\\MOON2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MOUNTAIN\\MOUNTAIN.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MOUNTAIN\\MOUNTAIN2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\MOUNTAIN\\SANDCAVE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\RADIOACTIVE\\RADIOACTIVEASH1.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\RADIOACTIVE\\RADIOACTIVEFOG.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\RADIOACTIVE\\RADIOACTIVEGAS.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SCORCHED\\SCORCHDOT.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SCORCHED\\SCORCHEDGAS.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SCORCHED\\SCORCHEDGASOLD.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SCORCHED\\SCORCHFLAME.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SCORCHED\\SPARK.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SNOW\\SNOW1.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SNOW\\SNOW2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SWAMP\\SWAMP.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\SWAMP\\SWAMP2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\TOXIC\\TOXICGAS.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\TOXIC\\TOXICRAIN1.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\TOXIC\\TOXICRAIN2.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\TOXIC\\TOXICSPORE.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\UNDERWATER\\BUBBLE1.HEAVYAIR.MBIN",
  "MODELS\\EFFECTS\\HEAVYAIR\\WATER\\WATER.HEAVYAIR.MBIN"
}

local function round(value, precision)
    local sign = value >= 0 and 1 or -1
    local absValue = math.abs(value)
    local factor = 10 ^ precision

    local roundedAbsValue = math.floor(absValue * factor + 0.5) / factor
    return roundedAbsValue * sign
end

-- Optimize particles for a given path
local function optimizeParticlesForPath(path)
    table.insert(NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CHANGE_TABLE, {
        MBIN_FILE_SOURCE = path,
        EXML_CHANGE_TABLE = {
            {
                SPECIAL_KEY_WORDS  = {"ScaleRange", "Vector3f.xml"},
                MATH_OPERATION     = "*",
                INTEGER_TO_FLOAT   = "FORCE",
                REPLACE_TYPE       = "ALL",
                VALUE_CHANGE_TABLE =
                {
                    {"x",           round(scale_m, 3)},
                    {"y",           round(scale_m, 3)},
                    {"z",           round(scale_m, 3)}
                }
            },
            {
                SPECIAL_KEY_WORDS  = {"RotationSpeedRange", "Vector3f.xml"},
                MATH_OPERATION     = "*",
                INTEGER_TO_FLOAT   = "FORCE",
                REPLACE_TYPE       = "ALL",
                VALUE_CHANGE_TABLE =
                {
                    {"y",           round(rotat_r, 3)}
                }
            },
            {
                MATH_OPERATION      = "*",
                INTEGER_TO_FLOAT    = "FORCE",
                REPLACE_TYPE        = "ALL",
                VALUE_CHANGE_TABLE  =
                {
                    {"NumberOfParticles", round(divider, 5)},
                    {"MaxVisibleSpeed",   round(speed_v, 3)},
                    {"Radius",            round(multply, 5)},
                    {"RadiusY",           round(multply, 5)},
                    {"FadeTime",          round(fades_m, 3)}
                }
            }
        }
    })
end

-- Optimize particles for all paths
local function optimizeAllParticles(mod_table)
    for _, path in ipairs(mod_table) do
        optimizeParticlesForPath(path)
    end
end

------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MOD_MAINTENANCE"]      = maintenance,
    ["MODIFICATIONS"]        =
    {
        {
            MBIN_CHANGE_TABLE = {}
        }
    },
}

------------------------------------------------------------------------------
optimizeAllParticles(particle_paths)
------------------------------------------------------------------------------
