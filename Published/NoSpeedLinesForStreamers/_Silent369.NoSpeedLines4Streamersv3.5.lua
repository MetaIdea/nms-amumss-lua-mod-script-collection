local modfilename = "NoSpeedLines4Streamers"
local lua_author  = "Silent"
local lua_version = "3.5"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

No speed lines.
No ship halo effect at cruise/boost/pulse in space.
No Space Dust / Plasma.

]]

---------------------------------------------------------------------------------------------------

--Modifies:
--MODELS\EFFECTS\ENGINES\SPEEDCOOL\TUNNELMAT.MATERIAL.MBIN
--MODELS\EFFECTS\ENGINES\SPEEDCOOLREVERSE\TUNNELMAT.MATERIAL.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACESMOKE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACESMOKEBIG.HEAVYAIR.MBIN
--MODELS\EFFECTS\SPACE\PLASMA\PLASMA.MATERIAL.MBIN
--MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN
--MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN
--MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN

---------------------------------------------------------------------------------------------------
local particleNum = 1
local partLifeMin = 0.01
local partLifeMax = 0.01
local partRadius  = 0.01
local partLiftime = 0.01
---------------------------------------------------------------------------------------------------

local function createParticleChanges(numParticles, minLife, maxLife)
    return {
        REPLACE_TYPE = "ALL",
        VCT = {
            {"Number Of Particles",   numParticles},
            {"Min Particle Lifetime", minLife},
            {"Max Particle Lifetime", maxLife}
        }
    }
end

local function removeSpeedlines(numParticles, mRadius, maxLife)
    return {
        REPLACE_TYPE = "ALL",
        VCT = {
            {"Number Of Particles", numParticles},
            {"Radius",              mRadius},
            {"Lifetime",            maxLife}
        }
    }
end

---------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = table.concat({modfilename, ".v", lua_version}),
    LUA_AUTHOR      = lua_author,
    MOD_AUTHOR      = mod_author,
    NMS_VERSION     = nms_version,
    MOD_DESCRIPTION = description,
    MOD_MAINTENANCE = maintenance,
    EXML_CREATE     = exmlcreate,
    MODIFICATIONS   =
    {
        {
            MBIN_CT = {
                {   -- Ship Boost Effect Texture
                    MBIN_FS = {
                        [[MODELS\EFFECTS\ENGINES\SPEEDCOOL\TUNNELMAT.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\ENGINES\SPEEDCOOLREVERSE\TUNNELMAT.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN]]
                    },
                    MXML_CT = {
                        {
                            SKW = {"Name", "gDiffuseMap"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Map", ""},}
                        },
                    }
                },
                {   -- Speed Lines
                    MBIN_FS = {
                        [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN]],
                        [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN]],
                        [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN]],
                        [[MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN]],
                        [[MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN]],
                        [[MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN]],
                        [[MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN]]
                    },
                    MXML_CT = {
                      removeSpeedlines(particleNum, partRadius, partLiftime)
                    }
                },
                {   -- Space Debris (Multi) Particles \ Plasma \ Smoke
                    MBIN_FS = {
                        [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACESMOKE.HEAVYAIR.MBIN]],
                        [[MODELS\EFFECTS\HEAVYAIR\SPACE\SPACESMOKEBIG.HEAVYAIR.MBIN]]
                    },
                    MXML_CT = {
                      createParticleChanges(particleNum, partLifeMin, partLifeMax)
                    }
                },
                {   -- Space Plasma Texture
                    MBIN_FS = [[MODELS\EFFECTS\SPACE\PLASMA\PLASMA.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gDiffuseMap"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Map", ""},}
                        },
                    }
                },
            }
        }
    }
}
