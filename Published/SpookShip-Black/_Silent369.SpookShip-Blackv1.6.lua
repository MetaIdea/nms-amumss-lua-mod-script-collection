local modfilename = "SpookShip-Black"
local lua_author  = "Silent"
local lua_version = "1.6"
local mod_author  = "Silent369"
local nms_version = "6.12"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Changes SpookShip Colours

]]

--Modifies:
--MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\REDLIGHTANIM.MATERIAL.MBIN
--MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\REDLIGHTANIMBLUME.MATERIAL.MBIN
--MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\SOLIDORANGE_MAT.MATERIAL.MBIN
--MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\SOLIDRED_MAT.MATERIAL.MBIN
--MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP.SCENE.MBIN
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\ENGINEGLOW.1.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\ENGINE_JET.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\FISHINGROD_LIGHTS.2.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\HQTRIM_METAL.TRIMMETAL.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\HQTRIM_METAL01.TRIMMETAL.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\LIGHTS3.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\LIGHTS4.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\TRIMSHEET.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\TRIMSHEETBLACK.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\TRIMSHEETGREY.DDS
--TEXTURES\COMMON\SPACECRAFT\SPOOKSHIP\TRIMSHEETRED.DDS
--TEXTURES\EFFECTS\SHIP\ENGINE_JETSQUARE.DDS
--TEXTURES\EFFECTS\SHIP\ENGINE_JETSQUAREDIM.DDS

local _COL_R = "1.000000"
local _COL_G = "0.000000"
local _COL_B = "0.000000"

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
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP.SCENE.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {
                                {"Name", "CentreVentLight", "Name", "COL_R"},
                                {"Name", "LeftVentLight",   "Name", "COL_R"},
                                {"Name", "RightVentLight",  "Name", "COL_R"},
                                {"Name", "MainLight",       "Name", "COL_R"},
                                {"Name", "LandingLight",    "Name", "COL_R"}
                            },
                            VCT = {{"Value", _COL_R},}
                        },
                        {
                            SKW = {
                                {"Name", "CentreVentLight", "Name", "COL_G"},
                                {"Name", "LeftVentLight",   "Name", "COL_G"},
                                {"Name", "RightVentLight",  "Name", "COL_G"},
                                {"Name", "MainLight",       "Name", "COL_G"},
                                {"Name", "LandingLight",    "Name", "COL_G"}
                            },
                            VCT = {{"Value", _COL_G},}
                        },
                        {
                            SKW = {
                                {"Name", "CentreVentLight", "Name", "COL_B"},
                                {"Name", "LeftVentLight",   "Name", "COL_B"},
                                {"Name", "RightVentLight",  "Name", "COL_B"},
                                {"Name", "MainLight",       "Name", "COL_B"},
                                {"Name", "LandingLight",    "Name", "COL_B"}
                            },
                            VCT = {{"Value", _COL_B},}
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\LAMBERT1.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gMaterialColourVec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "1"}, --Original "0.5"
                                {"Y", "1"}, --Original "0.5"
                                {"Z", "1"}, --Original "0.5"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\REDLIGHTANIM.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0.3"}, --Original "0.2"
                            }
                        },
                        {
                            SKW = {"Name", "gMaterialParams2Vec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X",  "0.2"}, --Original "1"
                                {"Y",  "0.2"}, --Original "1"
                                {"W", "0.08"}, --Original "0"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\REDLIGHTANIMBLUME.MATERIAL.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {"Name", "gUVScrollStepVec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0.3"}, --Original "0.2"
                            }
                        },
                        {
                            SKW = {"Name", "gMaterialParams2Vec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X",  "0.2"}, --Original "1"
                                {"Y",  "0.1"}, --Original "0.2"
                                {"W", "0.08"}, --Original "0"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\ROD_SCROLINGLIGHTMAT1.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gMaterialColourVec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0"}, --Original "1"
                                {"Y", "0"}, --Original "0.5"
                                {"Z", "1"}, --Original "0"
                            }
                        },
                    }
                },
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\FIGHTERS\SPOOKSHIP\ROD_SCROLINGLIGHTMAT2.MATERIAL.MBIN]],
                    MXML_CT = {
                        {
                            SKW = {"Name", "gMaterialColourVec4"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", "0"}, --Original "1"
                                {"Y", "0"}, --Original "0"
                                {"Z", "1"}, --Original "0"
                            }
                        },
                    }
                },
            }
        },
    }
}
