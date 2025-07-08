local modfilename = "UnifiedWarpsStarsNoLines"
local lua_author  = "Silent"
local lua_version = "4.5"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Unifies Blackhole/Portal/Ship/Teleporter Warps

]]

--|----------------------------------------------------------------------------------------
--MODIFIES:
--GCSIMULATIONGLOBALS.GLOBAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\ENTITIES\ANIMATEDLIGHTS.ENTITY.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\LIGHTARMSMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALT2MAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALTMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN
--|----------------------------------------------------------------------------------------

m_ScrollStep = [[
    <Property name="Uniforms_Float" value="TkMaterialUniform_Float">
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values">
        <Property name="X" value="0.000000" />
        <Property name="Y" value="3.000000" />
        <Property name="Z" value="0.000000" />
        <Property name="W" value="0.000000" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]]

--|----------------------------------------------------------------------------------------

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
            MBIN_CT =
            {
                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {
                                {"Name", "scrollingwave9"},
                                {"Name", "scrollingwaveALT"},
                                {"Name", "scrollingwaveALT1"},
                                --{"Name", "scrollingwave"},
                                {"Name", "gradientCloud"},
                                {"Name", "gradientCloudAlt"},
                                {"Name", "EndGlowCaps"},
                                {"Name", "LightStreaks"},
                                {"Name", "LightStreaksSmall"},
                                {"Name", "LightStreaks1"},
                                {"Name", "LightStreaksSmall1"},
                                {"Name", "LightLargeStreaks"},
                            },
                            REMOVE = "SECTION",
                        },

                        -- Animated Lights

                        {
                            SKW = {"Name", "AnimatedLights", "Type", "LIGHT", "Name", "FALLOFF_RATE"},
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"Value",   "0.500000"}, --Original "2.000000"
                            }
                        },
                        {
                            SKW = {"Name", "AnimatedLights", "Type", "LIGHT", "Name", "INTENSITY"},
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"Value",   "200000.000000"}, --Original "100000.000000"
                            }
                        },

                        -- Exit Warp Early Fade.
                        -- Sadly, immersion breaking when Teleport Warping but, it looks so cool!

                        --{
                        --    SKW = {"Name", "WarpCylinder1", "Transform", "TkTransformData"},
                        --    VCT = {
                        --        {"ScaleZ",     "0.01"}, --Original "1.02175"
                        --    }
                        --},

                        -- Stars (Lines)

                        {
                            SKW = {"Name", "stars", "Transform", "TkTransformData"},
                            VCT = {{"RotZ", "90"},} --Original "0"
                        },

                        -- Stars 1

                        {
                            SKW = {"Name", "stars1", "Transform", "TkTransformData"},
                            VCT = {{"RotZ", "45"},} --Original "0"
                        },

                        -- Stars 2

                        {
                            SKW = {"Name", "stars2", "Transform", "TkTransformData"},
                            VCT = {{"RotZ", "15"},} --Original "0"
                        },

                        -- LightArms Position / Scale

                        {
                            SKW = {"Name", "LightArms", "Transform", "TkTransformData"},
                            VCT = {
                                {"TransZ", "-160"}, --Original "0"
                                {"ScaleX",    "8"}, --Original "1"
                                {"ScaleY",    "8"}, --Original "1"
                                {"ScaleZ",    "8"}, --Original "1"
                            }
                        },

                        -- Insert New Light Material

                        {
                            SKW = {"Type", "LIGHT", "Name", "MATERIAL"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN"},}
                        },
                    }
                },

                -- Animated Lights

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\ENTITIES\ANIMATEDLIGHTS.ENTITY.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Components", "TkAnimationComponentData"},
                            PKW = {"TkAnimationComponentData", "Idle"},
                            VCT = {{"Speed", "0.5"},} --Original "1"
                        },
                    }
                },

                -- Light Arms

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\LIGHTARMSMAT.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gMaterialParams2Vec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0.65"}, --Original "1.3"
                                {"Y",  "0.5"}, --Original "1"
                                {"W", "0.03"}, --Original "0"
                            }
                        },
                    }
                },

                -- Stars / Lines

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            VCT = {{"Y",  "0.3"},} --Original "0.6"
                        },
                        {
                            SKW = {"Name", "gDiffuseMap"},
                            VCT = {{"Map", "TEXTURES/EFFECTS/BLACKHOLE/LINES.DDS"},}
                        },
                    }
                },

                -- Stars 1

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALTMAT.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            VCT = {
                                {"Y", "0.5"}, --Original "3"
                            }
                        },
                    }
                },

                -- Stars 2

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALT2MAT.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            VCT = {
                                {"Y", "0.05"}, --Original "0.3"
                            }
                        },
                    }
                },

                -- ScrollingWave

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\SCROLLINGWAVES2MAT.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Class", "GlowTranslucent"},
                            VCT = {{"Class", "Translucent"},}
                        },
                        {
                            SKW = {"Uniforms_Float", "TkMaterialUniform_Float", "Name", "gMaterialSFXColVec4"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = m_ScrollStep,
                        },
                    }
                },

                -- End Glow Cap Mat

                {
                    MBIN_FS = {
                      [[MODELS\EFFECTS\WARP\WARPTUNNEL\ENDGLOWMAT.MATERIAL.MBIN]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Name", "gMaterialParams2Vec4"},
                            VCT = {
                                {"X", "0"},
                                {"Y", "0"},
                                {"Z", "0"},
                                {"W", "0"}
                            }
                        },
                    }
                },
                {
                    MBIN_FS = {
                      [[MODELS\EFFECTS\WARP\WARPTUNNEL\ENGGLOWCAPMAT.MATERIAL.MBIN]],
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Name", "gMaterialParams2Vec4"},
                            VCT = {
                                {"X", "0"},
                                {"Y", "0"},
                                {"Z", "0"},
                                {"W", "0"}
                            }
                        },
                    }
                },

                --Create the new Light Material

                {
                    MBIN_FS =
                    {
                        {
                            "MATERIALS/LIGHT.MATERIAL.MBIN",
                            "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN",
                            "REMOVE"
                        }
                    }
                },
                {
                    MBIN_FS = [[MATERIALS\LIGHT_WARPTUNNEL.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Name", "Light"},
                            VCT = {{"Class",  "Translucent"},}
                        },
                        {
                            SKW = {"Name", "gHSVOverlay"},
                            VCT = {{"Anisotropy",  "0"},}
                        },
                        {
                            SKW	= {"Name", "gLightCookiesMap"},
                            REMOVE = "SECTION"
                        },
                    }
                },

                -- Simulation

                {
                    MBIN_FS = [[GCSIMULATIONGLOBALS.GLOBAL.MBIN]],
                    MXML_CT = {
                        {
                            REPLACE_TYPE = "ALL",
                            VCT = {
                                {"BlackHoleTunnelFile",   "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MBIN"
                                {"TeleportTunnelFile",    "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"
                                {"PortalTunnelFile",      "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN""
                                {"PortalStoryTunnelFile", "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN"
                            },
                        }
                    }
                }
            }
        },
    }
}
