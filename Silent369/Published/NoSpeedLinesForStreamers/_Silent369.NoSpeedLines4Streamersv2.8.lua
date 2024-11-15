local modfilename = "NoSpeedLines4Streamers"
local lua_author  = "Silent"
local lua_version = "2.8"
local mod_author  = "Silent369"
local nms_version = "5.12"
local maintenance = mod_author
local description = [[

No speed lines. No ship halo effect at cruise/boost/pulse speeds in space. No Space Dust / Plasma.

]]

local particleNum = 1
local partLifeMin = 0.01
local partLifeMax = 0.01
local tParamsVec4 = 0

local function createParticleChanges(numParticles, minLife, maxLife)
    return {
        ITF = "FORCE",
        REPLACE_TYPE = "ALL",
        VCT = {
            {"NumberOfParticles", numParticles},
            {"MinParticleLifetime", minLife},
            {"MaxParticleLifetime", maxLife}
        }
    }
end

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
            MBIN_CT = {
                {   -- Ship Boost Effect
                    MBIN_FS  = {
                        [[MODELS\EFFECTS\ENGINES\SPEEDCOOL\TUNNELMAT.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\ENGINES\SPEEDCOOLREVERSE\TUNNELMAT.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN]]
                    },
                    EXML_CT = {
                        {
                            SKW = {"Name", "gMaterialColourVec4"},
                            ITF = "FORCE",
                            VCT = {{"t", tParamsVec4},}
                        },
                        {
                            SKW  = {"Name", "gDiffuseMap"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Map", ""},}
                        },
                    }
                },
                {   -- Speed Lines Scene File
                    MBIN_FS  = [[MODELS\EFFECTS\SPEEDLINES\SPEEDLINE.SCENE.MBIN]],
                    EXML_CT = {
                        {
                            SKW = {"Type", "SPEEDLINE"},
                            REPLACE_TYPE = "ALL",
                            REMOVE = "SECTION"
                        }
                    }
                },
                {   -- Space Debris (Multi) Particles
                    MBIN_FS = [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE.HEAVYAIR.MBIN]],
                    EXML_CT = {createParticleChanges(particleNum, partLifeMin, partLifeMax)}
                },
                {   -- Space Dust Particles
                    MBIN_FS = [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN]],
                    EXML_CT = {createParticleChanges(particleNum, partLifeMin, partLifeMax)}
                },
                {   -- Space Plasma / Particles
                    MBIN_FS = [[MODELS\EFFECTS\SPACE\PLASMA\PLASMA.MATERIAL.MBIN]],
                    EXML_CT = {
                        {
                            SKW  = {"Name", "AnimatedSmokeMat"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Class", ""},}
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN]],
                    EXML_CT = {createParticleChanges(particleNum, partLifeMin, partLifeMax)}
                },
            }
        }
    }
}
