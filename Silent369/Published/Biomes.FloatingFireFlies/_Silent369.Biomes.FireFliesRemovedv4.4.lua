local modfilename = "FireFliesRemoved"
local lua_author  = "Silent"
local lua_version = "4.4"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local description = [[

Remove 'heavyair' firefly particles in all biomes.

]]

------------------------------------------------------------------------------
local partcnt = 0 -- Modifies the number of heavyair particles.
local speed_v = 0 -- Modifies the visible speed of particles.
local radi_xy = 0 -- Modifies the particles radius / radiusY.
local plife_t = 0 -- Modifies particles Min / Max lifetime.
local fades_m = 0 -- Modifies fade speed of rendered particles.
local scale_m = 0 -- Modifies the x,y,z particles scale ranges.
local rotat_r = 0 -- Modifies the rotational range of particles.
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

-- Optimize particles for a given path
local function optimizeParticlesForPath(path)
    table.insert(NMS_MOD_DEFINITION_CONTAINER.MODIFICATIONS[1].MBIN_CT, {
        MBIN_FS = path,
        MXML_CT = {
            {
                PKW = {"Scale Range"},
                MATH_OP = "*",
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"X", scale_m},
                    {"Y", scale_m},
                    {"Z", scale_m}
                }
            },
            {
                PKW = {"Rotation Speed Range"},
                MATH_OP = "*",
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"Y", rotat_r},
                }
            },
            {
                MATH_OP = "*",
                REPLACE_TYPE = "ALL",
                VCT = {
                    {"Number Of Particles",   partcnt},
                    {"Max Visible Speed",     speed_v},
                    {"Radius",                radi_xy},
                    {"RadiusY",               radi_xy},
                    {"Min Particle Lifetime", plife_t},
                    {"Max Particle Lifetime", plife_t},
                    {"Fade Time",             fades_m}
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
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
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
------------------------------------------------------------------------------
