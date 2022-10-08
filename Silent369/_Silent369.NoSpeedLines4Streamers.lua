local modfilename = "NoSpeedLines4Streamers"
local lua_author  = "Silent"
local lua_version = "v1.4"
local mod_author  = "Silent369"
local nms_version = "4.0.x"
local description = "No speed lines. No ship halo effect at cruise/boost/pulse speeds in space. No Space Dust / Plasma."

--Modifies:
--MODELS\EFFECTS\ENGINES\SPEEDCOOL\TUNNELMAT.MATERIAL.MBIN
--MODELS\EFFECTS\ENGINES\SPEEDCOOLREVERSE\TUNNELMAT.MATERIAL.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACE2.HEAVYAIR.MBIN
--MODELS\EFFECTS\HEAVYAIR\SPACE\SPACEPLASMA.HEAVYAIR.MBIN
--MODELS\EFFECTS\SPEEDLINES\SPEEDLINE.SCENE.MBIN
--MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN

--Material Vec4
local _tParamsVec4             = 0

--Dust Particles    (cannot be 0)
local _dparticleNum            = 1        --Original "500"
local _dpartLifeMin            = 0.01     --Original "1.5"
local _dpartLifeMax            = 0.01     --Original "2.5"

--Plasma Particles  (cannot be 0)
local _pparticleNum            = 1        --Original "100"
local _ppartLifeMin            = 0.01     --Original "1"
local _ppartLifeMax            = 0.01     --Original "1"

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

                    --|----------------------------------------------------------------------------------------
                    --| Ship Boost Effect
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "MODELS\EFFECTS\ENGINES\SPEEDCOOL\TUNNELMAT.MATERIAL.MBIN",
                        "MODELS\EFFECTS\ENGINES\SPEEDCOOLREVERSE\TUNNELMAT.MATERIAL.MBIN",
                        "MODELS\EFFECTS\WARP\SPEEDTUNNEL\SPEEDTUNNELMAT.MATERIAL.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"t",               _tParamsVec4}
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gDiffuseMap"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Map",             ""}
                            },
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Speed Lines Scene File
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\EFFECTS\SPEEDLINES\SPEEDLINE.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Type", "SPEEDLINE"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["REMOVE"]              = "SECTION"
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Space Debris (Multi) Particles
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS/EFFECTS/HEAVYAIR/SPACE/SPACE.HEAVYAIR.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"NumberOfParticles",   _dparticleNum},
                                {"MinParticleLifetime", _dpartLifeMin},
                                {"MaxParticleLifetime", _dpartLifeMax},
                            }
                        }
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Space Dust Particles
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS/EFFECTS/HEAVYAIR/SPACE/SPACE2.HEAVYAIR.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"NumberOfParticles",   _dparticleNum},
                                {"MinParticleLifetime", _dpartLifeMin},
                                {"MaxParticleLifetime", _dpartLifeMax},
                            }
                        }
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Space Plasma Particles
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS/EFFECTS/HEAVYAIR/SPACE/SPACEPLASMA.HEAVYAIR.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"NumberOfParticles",   _pparticleNum},
                                {"MinParticleLifetime", _ppartLifeMin},
                                {"MaxParticleLifetime", _ppartLifeMax},
                            }
                        }
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Max Asteroid Generation Per Frame Pulse Jump
                    --|----------------------------------------------------------------------------------------

                --{
                --    ["MBIN_FILE_SOURCE"]   = {"GCENVIRONMENTGLOBALS.GLOBAL.MBIN"},
                --    ["EXML_CHANGE_TABLE"]  =
                --    {
                --        {
                --            ["VALUE_CHANGE_TABLE"]  =
                --            {
                --                {"MaxAsteroidGenerationPerFramePulseJump",   "0"}, --Original "1000"
                --            }
                --        },
                --    }
                --},
            }
        },
    }
}