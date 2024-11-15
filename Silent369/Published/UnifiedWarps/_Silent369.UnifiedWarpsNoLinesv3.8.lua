local modfilename = "UnifiedWarpsNoLines"
local lua_author  = "Silent"
local lua_version = "3.8"
local mod_author  = "Silent369"
local nms_version = "5.12"
local maintenance = mod_author
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

_FOV       = "360"
_FALLOFF   = "quadratic"
_FALLOFF_R = "0.5"
_INTENSITY = "500000.000000"
_COL_R     = "1.85"
_COL_G     = "0.50"
_COL_B     = "2.25"

_UVScroll = [[
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F14_UVSCROLL" />
    </Property>
]]

_ScrollStep = [[
    <Property value="TkMaterialUniform.xml">
      <Property name="Name" value="gUVScrollStepVec4" />
      <Property name="Values" value="Vector4f.xml">
        <Property name="x" value="0" />
        <Property name="y" value="3" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]]

--|----------------------------------------------------------------------------------------

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
            MBIN_CT =
            {
                {
                    MBIN_FS = [[MODELS\\EFFECTS\\WARP\\WARPTUNNEL.SCENE.MBIN]],
                    EXML_CT =
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
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", _FOV},}
                        },
                        {
                            SKW = {"Name", "FALLOFF"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", _FALLOFF},}
                        },
                        {
                            SKW = {"Name", "FALLOFF_RATE"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", _FALLOFF_R},}
                        },
                        {
                            SKW = {"Name", "INTENSITY"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", _INTENSITY},}
                        },
                        {
                            SKW = {"Name", "COL_R"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", _COL_R},}
                        },
                        {
                            SKW = {"Name", "COL_G"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", _COL_G},}
                        },
                        {
                            SKW = {"Name", "COL_B"},
                            ITF = "FORCE",
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", _COL_B},}
                        },
                        {
                            SKW = {"Name", "LightArms", "Transform", "TkTransformData.xml"},
                            VCT = {
                                {"TransZ", "-140"}, --Original "0"
                                {"ScaleX",    "8"}, --Original "1"
                                {"ScaleY",    "8"}, --Original "1"
                                {"ScaleZ",    "8"}, --Original "1"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\TUNNELMAT1.MATERIAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            ITF = "FORCE",
                            VCT = {{"y", "0.7"},} --Original "0.6"
                        },
                        {
                            SKW = {"Name", "gDiffuseMap"},
                            VCT = {{"Map", "TEXTURES/EFFECTS/BLACKHOLE/LINES.DDS"},}
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\LIGHTARMSMAT.MATERIAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Class", "GlowTranslucent"},
                            VCT = {{"Class", "Translucent"},} --Original "GlowTranslucent"
                        },
                        {
                            SKW = {"MaterialFlag", "_F10_NORECEIVESHADOW"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = _UVScroll,
                        },
                        {
                            SKW = {"MaterialFlag", "_F34_GLOW"},
                            REMOVE = "SECTION",
                        },
                        {
                            SKW = {"Name", "gMaterialSFXColVec4"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = _ScrollStep,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\SCROLLINGWAVES2MAT.MATERIAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Class", "GlowTranslucent"},
                            VCT = {{"Class", "Translucent"},} --Original "GlowTranslucent"
                        },
                        {
                            SKW = {"MaterialFlag", "_F10_NORECEIVESHADOW"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = _UVScroll,
                        },
                        {
                            SKW = {"MaterialFlag", "_F34_GLOW"},
                            REMOVE = "SECTION",
                        },
                        {
                            SKW = {"Name", "gMaterialSFXColVec4"},
                            ADD_OPTION = "ADDafterSECTION",
                            ADD = _ScrollStep,
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\WARPBGMAT.MATERIAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            ITF  = "FORCE",
                            VCT = {{"y", "0"},} --Original "0.3"
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\ENGGLOWCAPMAT.MATERIAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Class", "Glow"},
                            VCT = {{"Class", "Opaque"},} --Original "Glow"
                        },
                        {
                            SKW = {"MaterialFlag", "_F34_GLOW"},
                            REMOVE = "SECTION"
                        },
                        {   --warp tunnel glow
                            SKW = {"Name", "gCustomParams01Vec4"},
                            ITF = "FORCE",
                            VCT = {
                                {"x",   "0"},
                                {"y",  "80"}, --Original "40"
                                {"z",   "0"},
                                {"t", "0.1"}
                            }
                        },
                    }
                },
                {   --Create the new Light Material
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
                    MBIN_FS = [[MATERIALS\\LIGHT_WARPTUNNEL.MATERIAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Name", "gHSVOverlay"},
                            VCT = {{"Anisotropy",  "0"},}
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\\EFFECTS\\WARP\\WARPTUNNEL.SCENE.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"Type", "LIGHT", "Name", "MATERIAL"},
                            REPLACE_TYPE = "ALL",
                            VCT = {{"Value", "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN"},}
                        },
                    }
                },
                {
                    MBIN_FS = [[GCSIMULATIONGLOBALS.GLOBAL.MBIN]],
                    EXML_CT =
                    {
                        {
                            REPLACE_TYPE = "ALL",
                            VCT =
                            {
                                {"WarpTunnelScale",       "4"}, --Original "140"
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
