local modfilename = "UnifiedWarpsNoLines"
local lua_author  = "Silent"
local lua_version = "4.8"
local mod_author  = "Silent369"
local nms_version = "6.12"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Unifies Blackhole/Portal/Ship/Teleporter Warps

Modifies:
GCCAMERAGLOBALS.GLOBAL.MBIN
GCSIMULATIONGLOBALS.GLOBAL.MBIN
MODELS\EFFECTS\WARP\WARPLARGEPORTAL\LIGHTARMSREDMAT.MATERIAL.MBIN
MODELS\EFFECTS\WARP\WARPTUNNEL\ENTITIES\ANIMATEDLIGHTS.ENTITY.MBIN
MODELS\EFFECTS\WARP\WARPTUNNEL\LIGHTARMSMAT.MATERIAL.MBIN
MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALT2MAT.MATERIAL.MBIN
MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELALTMAT.MATERIAL.MBIN
MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN
MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN

]]

-- Warp Camera Settings for Corvettes / Freighters and Ships
-------------------------------------------------------------------------------------------
local m_WarpSettingsCPos = true
local m_WarpSettingsFPos = true
local m_WarpSettingsSPos = true


-- Initialise TableData
-------------------------------------------------------------------------------------------

TableData = TableData or {}

-------------------------------------------------------------------------------------------

local m_FOV       = "360"
local m_FALLOFF   = "quadratic"
local m_FALLOFF_R = "0.5"
local m_INTENSITY = "200000.000000"
local m_COL_R     = "1.85"
local m_COL_G     = "0.50"
local m_COL_B     = "2.25"

-- Warp Settings
-------------------------------------------------------------------------------------------
if m_WarpSettingsSPos then
table.insert(TableData,
    {
        SKW = {"WarpSettings", "GcCameraWarpSettings"},
        REPLACE_TYPE = "ALL",
        VCT = {
            {"FocusPointDist",       "100000"}, --Original "100000"
            {"OffsetZFrequency_1",      "0.1"}, --Original "1.1"
            {"OffsetZFrequency_2",      "0.2"}, --Original "0.9"
            {"OffsetZStartBias",         "15"}, --Original "15"
            {"OffsetZBias",               "0"}, --Original "2"
            {"OffsetZRange",              "1"}, --Original "1.5"
            {"OffsetYFrequency_1",      "0.1"}, --Original "1.1"
            {"OffsetYFrequency_2",      "0.1"}, --Original "0.9"
            {"OffsetYStartBias",          "7"}, --Original "3.5"
            {"OffsetYBias",            "-0.4"}, --Original "0"
            {"OffsetYRange",              "2"}, --Original "0.75"
            {"OffsetXFrequency",        "0.3"}, --Original "0.25"
            {"OffsetXPhase",              "0"}, --Original "0"
            {"OffsetXRange",            "1.5"}, --Original "3.5"
            {"RollRange",               "0.8"}, --Original "1"
            {"YawnRange",               "300"}, --Original "600"
            {"Curve",           "SmoothInOut"}, --Original "EaseInOutBack"
        }
    })
end

if m_WarpSettingsCPos then
table.insert(TableData,
    {
        SKW = {"CorvetteWarpSettings", "GcCameraWarpSettings"},
        REPLACE_TYPE = "ALL",
        VCT = {
            {"FocusPointDist",       "100000"}, --Original "100000"
            {"OffsetZFrequency_1",      "0.1"}, --Original "1.1"
            {"OffsetZFrequency_2",      "0.2"}, --Original "0.9"
            {"OffsetZStartBias",         "25"}, --Original "45"
            {"OffsetZBias",               "1"}, --Original "2"
            {"OffsetZRange",            "1.5"}, --Original "2.5"
            {"OffsetYFrequency_1",      "0.1"}, --Original "1.1"
            {"OffsetYFrequency_2",      "0.1"}, --Original "0.9"
            {"OffsetYStartBias",          "7"}, --Original "3.5"
            {"OffsetYBias",            "-0.4"}, --Original "0"
            {"OffsetYRange",              "2"}, --Original "0.75"
            {"OffsetXFrequency",        "0.3"}, --Original "0.25"
            {"OffsetXPhase",              "0"}, --Original "0"
            {"OffsetXRange",            "1.5"}, --Original "3.5"
            {"RollRange",               "0.8"}, --Original "1"
            {"YawnRange",               "300"}, --Original "600"
            {"Curve",           "SmoothInOut"}, --Original "EaseInOutBack"
        }
    })
end

if m_WarpSettingsFPos then
table.insert(TableData,
    {
        SKW = {"FreighterWarpSettings", "GcCameraWarpSettings"},
        REPLACE_TYPE = "ALL",
        VCT = {
            {"FocusPointDist",       "100000"}, --Original "100000"
            {"OffsetZFrequency_1",      "0.1"}, --Original "0.25"
            {"OffsetZFrequency_2",      "0.2"}, --Original "0.35"
            {"OffsetZStartBias",         "10"}, --Original "50"
            {"OffsetZBias",             "-11"}, --Original "-11"
            {"OffsetZRange",             "75"}, --Original "200"
            {"OffsetYFrequency_1",      "0.1"}, --Original "0.2"
            {"OffsetYFrequency_2",      "0.2"}, --Original "0.3"
            {"OffsetYStartBias",        "1.0"}, --Original "3.5"
            {"OffsetYBias",             "-20"}, --Original "0"
            {"OffsetYRange",             "10"}, --Original "150"
            {"OffsetXFrequency",        "0.4"}, --Original "0.15"
            {"OffsetXPhase",              "0"}, --Original "0"
            {"OffsetXRange",            "350"}, --Original "350"
            {"RollRange",               "0.6"}, --Original "0.6"
            {"YawnRange",               "400"}, --Original "400"
            {"Curve",           "SmoothInOut"}, --Original "EaseInOutBack"
        },
    })
end

if m_WarpSettingsFPos then
table.insert(TableData,
    {
        SKW = {"PirateFreighterWarpSettings", "GcCameraWarpSettings"},
        REPLACE_TYPE = "ALL",
        VCT = {
            {"FocusPointDist",       "100000"}, --Original "100000"
            {"OffsetZFrequency_1",        "0"}, --Original "0.25"
            {"OffsetZFrequency_2",        "0"}, --Original "0.35"
            {"OffsetZStartBias",          "0"}, --Original "50"
            {"OffsetZBias",             "-11"}, --Original "-11"
            {"OffsetZRange",            "300"}, --Original "700"
            {"OffsetYFrequency_1",        "0"}, --Original "0.2"
            {"OffsetYFrequency_2",        "0"}, --Original "0.3"
            {"OffsetYStartBias",       "1000"}, --Original "2000"
            {"OffsetYBias",             "-35"}, --Original "0"
            {"OffsetYRange",             "10"}, --Original "300"
            {"OffsetXFrequency",        "0.2"}, --Original "0.15"
            {"OffsetXPhase",       "0.000010"}, --Original "0"
            {"OffsetXRange",            "350"}, --Original "350"
            {"RollRange",               "0.6"}, --Original "0.6"
            {"YawnRange",               "400"}, --Original "400"
            {"Curve",           "SmoothInOut"}, --Original "EaseInOutBack"
        }
    })
end

-------------------------------------------------------------------------------------------

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
                    MBIN_FS = [[GCCAMERAGLOBALS.GLOBAL.MBIN]],
                    MXML_CT = TableData,
                },
            },
        },
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
                        -------------------------------------------------------------------------------------------

                        {
                            SKW = {"Type", "LIGHT", "Name", "MATERIAL"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN"},}
                        },

                        -- LightArms Position / Scale
                        -------------------------------------------------------------------------------------------

                        {
                            SKW = {"Name", "LightArms", "Transform", "TkTransformData"},
                            VCT = {
                                {"TransZ", "-180"}, --Original "0"
                                {"ScaleX",    "8"}, --Original "1"
                                {"ScaleY",    "8"}, --Original "1"
                                {"ScaleZ",    "8"}, --Original "1"
                            }
                        },
                        {
                            SKW = {"Name", "LightArms", "Attributes", "TkSceneNodeAttributeData", "Name", "MATERIAL"},
                            PKW = {"Attributes"},
                            VCT = {
                                {"Value", [[MODELS\EFFECTS\WARP\WARPLARGEPORTAL\LIGHTARMSREDMAT.MATERIAL.MBIN]]},
                            }
                        },
                    }
                },
                -------------------------------------------------------------------------------------------
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
                            VCT = {{"Map", "TEXTURES/EFFECTS/BLACKHOLE/LINES.DDS"},}
                        },
                    }
                },
                -------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\LIGHTARMSMAT.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Class", "GlowTranslucent"},
                            VCT = {{"Class", "Translucent"},} --Original "GlowTranslucent"
                        },
                    }
                },
                {
                    MBIN_FS = {
                        [[MODELS\EFFECTS\WARP\WARPTUNNEL\LIGHTARMSMAT.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\WARP\WARPLARGEPORTAL\LIGHTARMSREDMAT.MATERIAL.MBIN]]
                    },
                    MXML_CT = {
                        {
                            SKW = {"Name", "gMaterialParams2Vec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0.65"}, --Original "1.3"
                                {"Y",  "0.5"}, --Original "1"
                                {"W", "0.05"}, --Original "0"
                            }
                        },
                    }
                },
                -------------------------------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\SCROLLINGWAVES2MAT.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Class", "GlowTranslucent"},
                            VCT = {{"Class", "Translucent"},} --Original "GlowTranslucent"
                        },
                    }
                },
                -------------------------------------------------------------------------------------------
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
                -------------------------------------------------------------------------------------------

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
                -------------------------------------------------------------------------------------------

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
                -------------------------------------------------------------------------------------------

                {
                    MBIN_FS = [[GCSIMULATIONGLOBALS.GLOBAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            VCT =
                            {
                                {"WarpTunnelScale",       "2048"}, -- stops freighter warp reversing
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
