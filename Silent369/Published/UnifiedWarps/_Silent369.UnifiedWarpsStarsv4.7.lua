local modfilename = "UnifiedWarpsStars"
local lua_author  = "Silent"
local lua_version = "4.7"
local mod_author  = "Silent369"
local nms_version = "6.04"
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

m_ScrollStep = [[
    <Property name="Uniforms_Float" value="TkMaterialUniform_Float">
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values">
        <Property name="X" value="0.000000" />
        <Property name="Y" value="4.000000" />
        <Property name="Z" value="0.000000" />
        <Property name="W" value="0.000000" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]]

-------------------------------------------------------------------------------------------

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
                    MXML_CT = {
                        {
                            SKW = {
                                {"Name", "scrollingwaveALT"},
                                {"Name", "scrollingwave9"},
                                {"Name", "scrollingwaveALT1"},
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
                        -------------------------------------------------------------------------------------------

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

                        -- Stars (Lines)
                        -------------------------------------------------------------------------------------------

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

                        -- Insert New Light Material
                        -------------------------------------------------------------------------------------------

                        {
                            SKW = {"Type", "LIGHT", "Name", "MATERIAL"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN"},}
                        },
                    }
                },

                -- Animated Lights
                -------------------------------------------------------------------------------------------

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\ENTITIES\ANIMATEDLIGHTS.ENTITY.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Components", "TkAnimationComponentData", "Idle", "TkAnimationData"},
                            VCT = {
                                {"Speed",    "0.500000"}, --Original "1.000000"
                                {"Mirrored",     "true"}, --Original "false"
                            }
                        },
                    }
                },

                -- Light Arms
                -------------------------------------------------------------------------------------------

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

                -- Stars / Lines
                -------------------------------------------------------------------------------------------

                {
                    MBIN_FS = [[MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            VCT = {{"Y",  "0.3"},} --Original "0.6"
                        },
                        {
                            SKW = {"Name", "gDiffuseMap"},
                            VCT = {{"Map", "TEXTURES/EFFECTS/WARP/LINES.DDS"},}
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
                                {"Y", "0.1"}, --Original "0.3"
                            }
                        },
                    }
                },

                -- ScrollingWave
                -------------------------------------------------------------------------------------------

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
                -------------------------------------------------------------------------------------------

                {
                    MBIN_FS = {
                        [[MODELS\EFFECTS\WARP\WARPTUNNEL\ENDGLOWMAT.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\WARP\WARPTUNNEL\ENGGLOWCAPMAT.MATERIAL.MBIN]]
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
                            SKW = {"Name", "Light"},
                            VCT = {{"Class",  "Translucent"},}
                        },
                        {
                            SKW = {"Name", "gHSVOverlay"},
                            VCT = {{"Anisotropy",  "0"},}
                        },
                        {
                            SKW = {"Name", "gLightCookiesMap"},
                            REMOVE = "SECTION"
                        },
                    }
                },

                -- Simulation
                -------------------------------------------------------------------------------------------

                {
                    MBIN_FS = [[GCSIMULATIONGLOBALS.GLOBAL.MBIN]],
                    MXML_CT = {
                        {
                            VCT = {
                                {"WarpTunnelScale",       "2048"}, -- stops freighter warp reversing
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
