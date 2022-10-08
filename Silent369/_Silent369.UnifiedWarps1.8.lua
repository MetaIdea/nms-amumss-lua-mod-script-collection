local modfilename = "_UnifiedWarps"
local lua_author  = "Silent"
local lua_version = "v1.8"
local mod_author  = "Silent369"
local nms_version = "4.0.x"
local description = "Unifies Blackhole/Portal/Ship/Teleporter Warps"

--MODIFIES:
--GCSIMULATIONGLOBALS.GLOBAL.MBIN
--MATERIALS\LIGHT_WARPTUNNEL.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\ENGGLOWCAPMAT.MATERIAL.MBIN
--MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN

_FOV        = "360"
_FALLOFF    = "linear"
_FALLOFF_R  = "5.000000"
_INTENSITY  = "000100.000000"
_COL_R      = "1.000000"
_COL_G      = "0.555000"
_COL_B      = "1.000000"

_WarpTunnelScale = 800 --200

_TkMaterialFlags =
[[
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F22_TRANSPARENT_SCALAR" />
    </Property>
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F23_TRANSLUCENT" />
    </Property>
]]

_TkPostProcessF50 =
[[
    <Property value="TkMaterialFlags.xml">
      <Property name="MaterialFlag" value="_F50_DISABLE_POSTPROCESS" />
    </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]        = modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]          = lua_author,
    ["MOD_AUTHOR"]          = mod_author,
    ["NMS_VERSION"]         = nms_version,
    ["MOD_DESCRIPTION"]     = description,
    ["MODIFICATIONS"]       =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {   --WARP TUNNEL EFFECT
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {

                        --|----------------------------------------------------------------------------------------
                        --| Remove Unecessary Sections
                        --|----------------------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "AnimatedLights"},
                            ["REMOVE"]              = "SECTION",
                        },
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
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "LightLargeStreaks"},
                            ["REMOVE"]              = "SECTION"
                        },

                        --|----------------------------------------------------------------------------------------
                        --| SETTINGS / LIGHT COLOURS
                        --|----------------------------------------------------------------------------------------

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "FOV"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _FOV},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "FALLOFF"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _FALLOFF},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "FALLOFF_RATE"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _FALLOFF_R},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "INTENSITY"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _INTENSITY},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "COL_R"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _COL_R},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "COL_G"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _COL_G},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "COL_B"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",           _COL_B},
                            }
                        },
                    },
                },

                        --|----------------------------------------------------------------------------------------
                        --| Change TUNNELMAT1 Image
                        --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"]    = {
                        "MODELS\EFFECTS\WARP\WARPTUNNEL\TUNNELMAT1.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Class",           "Translucent"}, --Original "GlowTranslucent"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gDiffuseMap"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Map", ""}, --TEXTURES/EFFECTS/WARP/LINES.DDS
                            }
                        },
                    }
                },

                        --|----------------------------------------------------------------------------------------
                        --| End Glow Cap Material
                        --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\EFFECTS\WARP\WARPTUNNEL\ENGGLOWCAPMAT.MATERIAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Class",       "GlowTranslucent"}, --Original "Glow"
                                {"TransparencyLayerID",    "-100"}, --waaay back in the z order
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"MaterialFlag", "_F10_NORECEIVESHADOW"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _TkMaterialFlags,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"MaterialFlag", "_F29_VBCOLOUR"},
                            ["ADD_OPTION"]          = "ADDafterSECTION",
                            ["ADD"]                 = _TkPostProcessF50,
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gCustomParams01Vec4"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"t",       "0.02"}, --Original "0.04"
                            }
                        },
                    }
                },

                        --|----------------------------------------------------------------------------------------
                        --| Create New Light Material (Thanks to LazMonk for the tip!)
                        --| Since the default LIGHT.MATERIAL.MBIN is used throughout the game in many places we
                        --| need to create a new material, edit it and insert back in the scene for our purposes.
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
                {   --Edit the new Light Material
                    ["MBIN_FILE_SOURCE"]    = {"MATERIALS\LIGHT_WARPTUNNEL.MATERIAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Class",                "Opaque"}, --Original "Opaque"
                                {"TransparencyLayerID",       "0"}, --waaay back in the z order
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gHSVOverlay"},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Anisotropy",      "0"},
                            }
                        },
                    }
                },
                {   --Insert the new Light Material
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\EFFECTS\WARP\WARPTUNNEL.SCENE.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Type", "LIGHT", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value",       "MATERIALS/LIGHT_WARPTUNNEL.MATERIAL.MBIN"},
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
                            ["PRECEDING_KEY_WORDS"] = {""},
                            ["REPLACE_TYPE"]        = "ALL",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"WarpTunnelScale",                                    _WarpTunnelScale}, --Original "200"
                                {"BlackHoleTunnelFile",     "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPTUNNELBLACKHOLE.SCENE.MBIN"
                                {"TeleportTunnelFile",      "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPPORTAL.SCENE.MBIN"
                                {"PortalTunnelFile",        "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN""
                                {"PortalStoryTunnelFile",   "MODELS/EFFECTS/WARP/WARPTUNNEL.SCENE.MBIN"}, --Original "MODELS/EFFECTS/WARP/WARPLARGEPORTAL.SCENE.MBIN"
                            }
                        }
                    }
                },
            }
        },
    }
}