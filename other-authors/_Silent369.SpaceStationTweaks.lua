local modfilename = "SpaceStationTweaks"
local lua_author  = "Silent"
local lua_version = "v1.2"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = "Beautify Landing Pads at Space Stations."

--Created:
--MATERIALS\PAD_LIGHT.MATERIAL.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN

--Modifies:
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_CLOSE.ANIM.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_OPEN.ANIM.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\LEFTSECTIONTRIGGER.ENTITY.MBIN
--MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\RIGHTSECTIONTRIGGER.ENTITY.MBIN

--Modifies
--TEXTURES\SPACE\SPACESTATION\SSRFLOOR.MASKS.DDS
--TEXTURES\SPACE\SPACESTATION\STATIONLANES.DDS
--TEXTURES\SPACE\SPACESTATION\STATIONLANESABAN.DDS
--TEXTURES\SPACE\SPACESTATION\INTERIOR\METALHORIZONTALPATTERN.DDS

_LightIntensitySpt = "29500.000000"
_LightScalesMulti  = 1.6  --Pad Light Adjustment
_PadsAdjustAnimate = 0.7  --Pad Animation Height
_LocatorAdjPirates = 0.8  --Pad Locator Adjust (Must be 1 increment higher than _PadsAdjustAnimate value)
_LocatorAdjStation = 0.8  --Pad Locator Adjust (Must be 1 increment higher than _PadsAdjustAnimate value)

_RedS = 0.8
_GrnS = 0.3
_BluS = 0.1
_AlpS = 0.5

_RedP = 0.8
_GrnP = 0.3
_BluP = 0.1
_AlpP = 0.5

_LodDistances =
[[
  <Property name="LodDistances">
    <Property value="50" />
    <Property value="100" />
    <Property value="300" />
    <Property value="500" />
    <Property value="800" />
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                    --|----------------------------------------------------------------------------------------
                    --| Create New Light Material
                    --|----------------------------------------------------------------------------------------

                {   --Create Light Material
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MATERIALS/LIGHT.MATERIAL.MBIN",
                            "MATERIALS/PAD_LIGHT.MATERIAL.MBIN",
                            "REMOVE"
                        }
                    }
                },
                {   --Edit Light Material
                    ["MBIN_FILE_SOURCE"]    = {"MATERIALS\PAD_LIGHT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Light"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CastShadow",     "True"},  --Original "False"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gHSVOverlay"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Anisotropy",     "0"},  --Original "2"
                            }
                        },
                    }
                },
                {   --Insert Light Material
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MATERIALS/PAD_LIGHT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "FOV"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "95"},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Create New Glow Material (Space Stations)
                    --|----------------------------------------------------------------------------------------

                {   --Create Orange Glow Material
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_MAT.MATERIAL.MBIN",
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN",
                            "REMOVE"
                        },
                    }
                },
                {   --Edit Orange Glow Material
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",               _RedS}, --R
                                {"y",               _GrnS}, --G
                                {"z",               _BluS}, --B
                                {"t",               _AlpS}, --A
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "gCustomParams01Vec4"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"x",                 "1"},
                                {"y",                 "1"},
                                {"z",                 "0"},
                                {"t",              "0.07"},
                            }
                        },
                    }
                },
                {   --Insert Glow Material
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings1_DUP1", "Transform", "TkTransformData.xml"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX",         "0.85"},
                                {"ScaleY",         "0.85"},
                                {"ScaleZ",         "0.85"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR1pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR0pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD\GLOW_ORA_MAT.MATERIAL.MBIN"},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Modify Landing Pads (Space Station)
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPAD.SCENE.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Dock", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LocatorAdjStation}, --0.4719
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "EXIT", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LocatorAdjStation}, --0.459369
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "INTENSITY"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          _LightIntensitySpt}, --30000.000000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_R"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_G"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_B"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LightScalesMulti},
                                {"ScaleX",         _LightScalesMulti},
                                {"ScaleY",         _LightScalesMulti},
                                {"ScaleZ",         _LightScalesMulti},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Create New Glow Material (Pirate Station)
                    --|----------------------------------------------------------------------------------------

                {   --Create Glow Material
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_MAT.MATERIAL.MBIN",
                            "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN",
                            "REMOVE"
                        }
                    }
                },
                {   --Edit Glow Material
                    ["MBIN_FILE_SOURCE"]    = {"MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN",},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gMaterialColourVec4"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x",              _RedP}, --R
                                {"y",              _GrnP}, --G
                                {"z",              _BluP}, --B
                                {"t",              _AlpP}, --A
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gCustomParams01Vec4"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x",                "1"},
                                {"y",                "1"},
                                {"z",                "0"},
                                {"t",             "0.07"},
                            }
                        },
                    }
                },
                {   --Insert Glow Material
                    ["MBIN_FILE_SOURCE"]    =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings", "Transform", "TkTransformData.xml"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX",         "0.97"},
                                {"ScaleY",         "0.97"},
                                {"ScaleZ",         "0.97"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Markings1_DUP", "Transform", "TkTransformData.xml"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"ScaleX",         "0.97"},
                                {"ScaleY",         "0.97"},
                                {"ScaleZ",         "0.97"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR1pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "SUB1SSR0pad", "Name", "MATERIAL"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN\GLOW_RED_MAT.MATERIAL.MBIN"},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Modify Landing Pads (Pirate Station)
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\LANDINGPADABAN.SCENE.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "Dock", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",          _LocatorAdjPirates},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "EXIT", "Type", "LOCATOR", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["SECTION_ACTIVE"]     = {1,},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",         _LocatorAdjStation}, --0.459369
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "INTENSITY"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          _LightIntensitySpt}, --30000.000000
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_R"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_G"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Name", "COL_B"},
                            ["REPLACE_TYPE"]       = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Value",          "1.000000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Type", "LIGHT", "Transform", "TkTransformData.xml"},
                            ["MATH_OPERATION"]     = "*",
                            ["REPLACE_TYPE"]       = "ALL",
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"TransY",          _LightScalesMulti},
                                {"ScaleX",          _LightScalesMulti},
                                {"ScaleY",          _LightScalesMulti},
                                {"ScaleZ",          _LightScalesMulti},
                            }
                        },
                    }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Adjust PAD Animations
                    --|----------------------------------------------------------------------------------------

                {
                  ["MBIN_FILE_SOURCE"]    =
                  {
                      "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_OPEN.ANIM.MBIN",
                      "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\ANIMS\LANDINGPAD_CLOSE.ANIM.MBIN"
                  },
                  ["EXML_CHANGE_TABLE"]   =
                  {
                      {
                          ["PRECEDING_KEY_WORDS"] = {"TkAnimNodeFrameData.xml", "Translations", "Vector3f.xml"},
                          ["MATH_OPERATION"]      = "*",
                          ["REPLACE_TYPE"]        = "ALL",
                          ["VALUE_CHANGE_TABLE"]  =
                          {
                              {"x",               _PadsAdjustAnimate},
                              {"y",               _PadsAdjustAnimate},
                              {"z",               _PadsAdjustAnimate},
                          }
                      },
                  }
                },

                    --|----------------------------------------------------------------------------------------
                    --| Modify Station LOD for both LEFTSECTIONTRIGGER / RIGHTSECTIONTRIGGER entities.
                    --| This seems to work just fine as from the gantry we see the shops active opposite.
                    --| (They're not fully loaded at this point but MUCH less pop-in when you approach).
                    --|----------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\LEFTSECTIONTRIGGER.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StateID", "LEFTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"State", "LEFTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = "LodDistances",
                          ["REMOVE"]              = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = {"Components"},
                          ["ADD_OPTION"]          = "ADDafterSECTION",
                          ["ADD"]                 = _LodDistances
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] =
                    {
                        "MODELS\SPACE\SPACESTATION\MODULARPARTS\DOCK\BACK_SECTION\ENTITIES\RIGHTSECTIONTRIGGER.ENTITY.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"StateID", "RIGHTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"State", "RIGHTOFF"},
                            ["REMOVE"]            = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = "LodDistances",
                          ["REMOVE"]              = "SECTION"
                        },
                        {
                          ["PRECEDING_KEY_WORDS"] = {"Components"},
                          ["ADD_OPTION"]          = "ADDafterSECTION",
                          ["ADD"]                 = _LodDistances
                        }
                    }
                },
            },
        },
    }
}