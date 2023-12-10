local modfilename = "NoSpeedLines4Streamers"
local lua_author  = "Silent"
local lua_version = "v1.5"
local mod_author  = "Silent369"
local nms_version = "4.46"
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
        ["INTEGER_TO_FLOAT"]   = "FORCE",
        ["REPLACE_TYPE"]       = "ALL",
        ["VALUE_CHANGE_TABLE"] = {
            {"NumberOfParticles", numParticles},
            {"MinParticleLifetime", minLife},
            {"MaxParticleLifetime", maxLife}
        }
    }
end

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]    = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]      = lua_author,
    ["MOD_AUTHOR"]      = mod_author,
    ["NMS_VERSION"]     = nms_version,
    ["MOD_DESCRIPTION"] = description,
    ["MOD_MAINTENANCE"] = maintenance,
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"] = {

                -- Ship Boost Effect
                {
                    ["MBIN_FILE_SOURCE"]  = {
                        "MODELS\\EFFECTS\\ENGINES\\SPEEDCOOL\\TUNNELMAT.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\ENGINES\\SPEEDCOOLREVERSE\\TUNNELMAT.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\WARP\\SPEEDTUNNEL\\SPEEDTUNNELMAT.MATERIAL.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"t",     tParamsVec4},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gDiffuseMap"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Map",            ""},
                            }
                        }
                    }
                },

                -- Speed Lines Scene File
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\\EFFECTS\\SPEEDLINES\\SPEEDLINE.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Type", "SPEEDLINE"},
                            ["REPLACE_TYPE"]      = "ALL",
                            ["REMOVE"]            = "SECTION"
                        }
                    }
                },

                -- Space Debris (Multi) Particles
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\\EFFECTS\\HEAVYAIR\\SPACE\\SPACE.HEAVYAIR.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        createParticleChanges(particleNum, partLifeMin, partLifeMax)
                    }
                },

                -- Space Dust Particles
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\\EFFECTS\\HEAVYAIR\\SPACE\\SPACE2.HEAVYAIR.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        createParticleChanges(particleNum, partLifeMin, partLifeMax)
                    }
                },

                -- Space Plasma / Particles
                {
                    ["MBIN_FILE_SOURCE"]  = "MODELS\\EFFECTS\\SPACE\\PLASMA\\PLASMA.MATERIAL.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "AnimatedSmokeMat"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"Class",          ""},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\\EFFECTS\\HEAVYAIR\\SPACE\\SPACEPLASMA.HEAVYAIR.MBIN"},
                    ["EXML_CHANGE_TABLE"] = {
                        createParticleChanges(particleNum, partLifeMin, partLifeMax)
                    }
                },
            }
        }
    }
}
