local modfilename = "UnifiedWarps"
local lua_author  = "Silent"
local lua_version = "v2.5"
local mod_author  = "Silent369"
local nms_version = "4.46"
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

_FOV        = "360.000000"
_FALLOFF    = "quadratic"
_FALLOFF_R  = "2.500000"
_INTENSITY  = "000100.000000"
_COL_R      = "0.850000"
_COL_G      = "0.255000"
_COL_B      = "1.500000"

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
        <Property name="y" value="2" />
        <Property name="z" value="0" />
        <Property name="t" value="0" />
      </Property>
      <Property name="ExtendedValues" />
    </Property>
]]

--|----------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = string.format("_%s%s.pak", modfilename, lua_version),
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MOD_MAINTENANCE"]      = maintenance,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\\EFFECTS\\WARP\\WARPTUNNEL.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        --|----------------------------------------------------------------------------------------
                        --| Make the changes first, then remove the sections we don't need!
                        --|----------------------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "FOV"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _FOV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "FALLOFF"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_MATCH"]         = "linear",
                            ["VALUE_MATCH_OPTIONS"] = "~=",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _FALLOFF},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "FALLOFF_RATE"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _FALLOFF_R},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "INTENSITY"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _INTENSITY},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _COL_R},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _COL_G},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "COL_B"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _COL_B},
                            }
                        },
                        --|----------------------------------------------------------------------------------------
                        --| LightArms modification to fill the screen better
                        --|----------------------------------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "LightArms", "Transform", "TkTransformData.xml"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"TransZ",          "-100"}, --Original "0"
                                {"ScaleX",             "8"}, --Original "1"
                                {"ScaleY",             "8"}, --Original "1"
                                {"ScaleZ",             "8"}, --Original "1"
                            }
                        },
                        --|----------------------------------------------------------------------------------------
                        --| Remove the sections we don't need. Sorry HG, sometimes less IS more!
                        --|----------------------------------------------------------------------------------------
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "scrollingwave9"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "scrollingwaveALT"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "scrollingwaveALT1"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "stars2"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "stars1"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gradientCloud"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gradientCloudAlt"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "pointLight5"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "EndGlowCaps"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "LightStreaks"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "LightStreaksSmall"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "LightStreaks1"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "LightStreaksSmall1"},
                            ["REMOVE"]              = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "LightLargeStreaks"},
                            ["REMOVE"]              = "SECTION"
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Change TUNNELMAT1 Image
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\TUNNELMAT1.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gUVScrollStepVec4"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"y",               "0.7"}, --Original "0.6"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Map",             "TEXTURES/EFFECTS/WARP/LINES.DDS"}, --TEXTURES/EFFECTS/WARP/LINES.DDS
                            }
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Change LightArms Material
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\LIGHTARMSMAT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Class", "GlowTranslucent"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Class",           "Translucent"}, --Original "GlowTranslucent"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gCustomParams01Vec4"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialSFXColVec4"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _ScrollStep,
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Change ScrollingWaves2Mat Material
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\SCROLLINGWAVES2MAT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Class", "GlowTranslucent"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Class",           "Translucent"}, --Original "GlowTranslucent"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gCustomParams01Vec4"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialSFXColVec4"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _ScrollStep,
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Change WarpBGMat Material
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\WARPBGMAT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gUVScrollStepVec4"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"y",               "2"}, --Original "0.3"
                            }
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Change ENGGLOWCAPMAT for EndFade Section
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\\EFFECTS\\WARP\\WARPTUNNEL\\ENGGLOWCAPMAT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gCustomParams01Vec4"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",               "20"}, --Original "40"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gCustomParams01Vec4"},
                            ["REMOVE"]              = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialSFXColVec4"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _ScrollStep,
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Create New Light Material
                        --| Since the default LIGHT.MATERIAL.MBIN is used throughout the game in many places we
                        --| need to create a new material, edit it and insert it back in the scene for our purpose.
                        --|----------------------------------------------------------------------------------------

                {   --Create the new Light Material
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MATERIALS/LIGHT.MATERIAL.MBIN",
                            "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN",
                            "REMOVE"
                        }
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Edit the new Light Material
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"MATERIALS\\LIGHT_WARPTUNNEL.MATERIAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gHSVOverlay"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Anisotropy",      "0"},
                            }
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Insert the new Light Material
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\\EFFECTS\\WARP\\WARPTUNNEL.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Type", "LIGHT", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN"},
                            }
                        },
                    }
                },
                        --|----------------------------------------------------------------------------------------
                        --| Merge All Warp scenes into one
                        --|----------------------------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"]    = {"GCSIMULATIONGLOBALS.GLOBAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"BlackHoleTunnelFile",     "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MBIN"
                                {"TeleportTunnelFile",      "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"
                                {"PortalTunnelFile",        "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN""
                                {"PortalStoryTunnelFile",   "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN"
                            }
                        }
                    }
                }
            }
        },
    }
}
