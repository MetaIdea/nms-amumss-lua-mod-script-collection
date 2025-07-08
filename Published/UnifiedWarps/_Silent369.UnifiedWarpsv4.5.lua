local modfilename = "UnifiedWarps"
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
--MATERIALS\LIGHT_WARPTUNNEL.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\ENGGLOWCAPMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\LIGHTARMSMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\SCROLLINGWAVES2MAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\WARPBGMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN

--|----------------------------------------------------------------------------------------

m_FOV       = "360"
m_FALLOFF   = "quadratic"
m_FALLOFF_R = "0.5"
m_INTENSITY = "200000.000000"
m_COL_R     = "1.85"
m_COL_G     = "0.50"
m_COL_B     = "2.25"

--m_UVScroll = [[
--    <Property name="Flags" value="TkMaterialFlags">
--      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
--    </Property>
--]]
--
--m_ScrollStep = [[
--    <Property name="Uniforms_Float" value="TkMaterialUniform_Float">
--      <Property name="Name" value="gUVScrollStepVec4" />
--      <Property name="Values">
--        <Property name="X" value="0" />
--        <Property name="Y" value="3" />
--        <Property name="Z" value="0" />
--        <Property name="W" value="0" />
--      </Property>
--      <Property name="ExtendedValues" />
--    </Property>
--]]

--|----------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    MOD_FILENAME    = modfilename.."v"..lua_version,
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
                    MXML_CT =
                    {
                        {
                            SKW = {
                                {"Name", "scrollingwave9"},
                                {"Name", "scrollingwaveALT"},
                                {"Name", "scrollingwaveALT1"},
                                {"Name", "stars2"},
                                {"Name", "stars1"},
                                {"Name", "gradientCloud"},
                                {"Name", "gradientCloudAlt"},
                                {"Name", "pointLight5"},
                                {"Name", "EndGlowCaps"},
                                {"Name", "LightStreaks"},
                                {"Name", "LightStreaksSmall"},
                                {"Name", "LightStreaks1"},
                                {"Name", "LightStreaksSmall1"},
                                {"Name", "LightLargeStreaks"},
                            },
                            REMOVE = "SECTION",
                        },
                        {
                            SKW = {"Name", "FOV"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", m_FOV},}
                        },
                        {
                            SKW = {"Name", "FALLOFF"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", m_FALLOFF},}
                        },
                        {
                            SKW = {"Name", "FALLOFF_RATE"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", m_FALLOFF_R},}
                        },
                        {
                            SKW = {"Name", "INTENSITY"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", m_INTENSITY},}
                        },
                        {
                            SKW = {"Name", "COL_R"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", m_COL_R},}
                        },
                        {
                            SKW = {"Name", "COL_G"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", m_COL_G},}
                        },
                        {
                            SKW = {"Name", "COL_B"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", m_COL_B},}
                        },
                        {
                            SKW = {"Children", "TkSceneNodeData", "Name", "LightArms", "Transform", "TkTransformData"},
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
                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Uniforms_Float", "TkMaterialUniform_Float", "Name", "gUVScrollStepVec4"},
                            PKW = {"Values"},
                            VCT = {{"Y", "0.7"},} --Original "0.6"
                        },
                        {
                            SKW = {"Samplers", "TkMaterialSampler", "Name", "gDiffuseMap"},
                            VCT = {{"Map", "TEXTURES/EFFECTS/WARP/LINES.DDS"},}
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\LIGHTARMSMAT.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Class", "GlowTranslucent"},
                            VCT = {{"Class", "Translucent"},} --Original "GlowTranslucent"
                        },
                        --{
                        --    SKW = {"MaterialFlag", "_F09_TRANSPARENT"},
                        --    PKW = {"Flags"},
                        --    ADD_OPTION = "ADDafterSECTION",
                        --    ADD = m_UVScroll,
                        --},
                        --{
                        --    SKW = {"Uniforms_Float", "TkMaterialUniform_Float", "Name", "gMaterialSFXColVec4"},
                        --    ADD_OPTION = "ADDafterSECTION",
                        --    ADD = m_ScrollStep,
                        --},
                    }
                },
                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\SCROLLINGWAVES2MAT.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Class", "GlowTranslucent"},
                            VCT = {{"Class", "Translucent"},} --Original "GlowTranslucent"
                        },
                        --{
                        --    SKW = {"MaterialFlag", "_F09_TRANSPARENT"},
                        --    PKW = {"Flags"},
                        --    ADD_OPTION = "ADDafterSECTION",
                        --    ADD = m_UVScroll,
                        --},
                        --{
                        --    SKW = {"Uniforms_Float", "TkMaterialUniform_Float", "Name", "gMaterialSFXColVec4"},
                        --    ADD_OPTION = "ADDafterSECTION",
                        --    ADD = m_ScrollStep,
                        --},
                    }
                },
                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\WARPBGMAT.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Uniforms_Float", "TkMaterialUniform_Float", "Name", "gUVScrollStepVec4"},
                            PKW = {"Values"},
                            VCT = {{"Y", "0"},} --Original "0.3"
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
                            SKW = {"Uniforms_Float", "TkMaterialUniform_Float", "Name", "gMaterialColourVec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0.000000"},
                                {"Y", "0.000000"},
                                {"Z", "0.000000"},
                                {"W", "0.000000"}
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
                            SKW = {"Uniforms_Float", "TkMaterialUniform_Float", "Name", "gMaterialParamsVec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0.000000"},
                                {"Y", "0.000000"},
                                {"Z", "0.000000"},
                                {"W", "0.000000"}
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
                            SKW = {"Class", "Opaque"},
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
                    MXML_CT =
                    {
                        {
                            REPLACE_TYPE = "ALL",
                            VCT =
                            {
                                {"BlackHoleTunnelFile",   "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MBIN"
                                {"TeleportTunnelFile",    "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"
                                {"PortalTunnelFile",      "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN""
                                {"PortalStoryTunnelFile", "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN"
                            }
                        }
                    }
                }
            }
        },
    }
}
