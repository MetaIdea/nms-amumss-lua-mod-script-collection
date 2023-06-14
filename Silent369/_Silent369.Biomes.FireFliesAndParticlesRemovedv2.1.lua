local modfilename = "Biomes.FireFliesAndParticlesRemoved"
local lua_author  = "Silent"
local lua_version = "v2.1"
local mod_author  = "Silent369"
local nms_version = "4.33"
local description = [[
Resized / Reduced(optional) 'heavyair' firefly particles in all biomes.
]]

--This mod decreases the number of fireflies rendered whilst also reducing the scale range and increasing
--the distance between particles to appear less dense.
--
--DIVIDER is affecting the particles for the fire flies
--
DIVIDER = 0     --Modifies the number of firefly particles.
SPEED_V = 0.01  --Modifies the visible speed of particles.
MULTPLY = 1.4   --Modifies the particles radius / radiusY.
FADES_M = 0.5   --Modifies fade speed of rendered particles.
SCALE_M = 1.5   --Modifies the x,y,z particles scale ranges.
ROTAT_R = 0.5   --Modifies the rotational range of particles.

local function round(number, precision)
   local fmtStr = string.format('%%0.%sf',precision)
   number = string.format(fmtStr,number)
   return number
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]            = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]              = lua_author,
    ["MOD_AUTHOR"]              = mod_author,
    ["NMS_VERSION"]             = nms_version,
    ["MOD_DESCRIPTION"]         = description,
    ["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
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
                        [[MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\SWAMP\SWAMP2.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICGAS.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN1.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICRAIN2.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\TOXIC\TOXICSPORE.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\UNDERWATER\BUBBLE1.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\WATER\WATER.HEAVYAIR.MBIN]],
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        --===============================================================================
                        --NUMBER OF PARTICLES (OPTIONAL)
                        --===============================================================================
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"NumberOfParticles", round(DIVIDER,5)},
                            }
                        },
                        --===============================================================================
                        --MAX VISIBLE PARTICLE SPEED
                        --===============================================================================
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"MaxVisibleSpeed",   round(SPEED_V,3)},
                            }
                        },
                        --===============================================================================
                        --PARTICLES RADIUS / FADE TIME
                        --===============================================================================
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Radius",          round(MULTPLY,5)},
                                {"RadiusY",         round(MULTPLY,5)},

                            }
                        },
                        {
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"FadeTime",        round(FADES_M,3)},
                            }
                        },
                        --===============================================================================
                        --PARTICLES SCALE RANGES
                        --===============================================================================
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ScaleRange"},
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",               round(SCALE_M,3)},
                                {"y",               round(SCALE_M,3)},
                                {"z",               round(SCALE_M,3)},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"RotationSpeedRange"},
                            ["MATH_OPERATION"]      = "*",
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"y",               round(ROTAT_R,3)},
                            }
                        },
                    }
                },
            }
        },
    }
}