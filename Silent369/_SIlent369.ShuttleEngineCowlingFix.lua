local modfilename = "ShuttleCowlingFix"
local lua_author  = "Silent"
local lua_version = "v1.0"
local mod_author  = "Silent369"
local nms_version = "3.9x"
local description = [[
If the vanilla cowling is intended, it makes no sense. This is an attempt to
fix the connection of the cowling sections to the small side-thruster engines.
Due to the nature of the geomtry i've had to scale part of the cowling object
to make the fix visually work.
]]

--Modifies:
--MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA.SCENE.MBIN
--MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.SCENE.MBIN
--MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA.GEOMETRY.DATA.MBIN.PC
--MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA.GEOMETRY.MBIN.PC
--MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.GEOMETRY.DATA.MBIN.PC
--MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.GEOMETRY.MBIN.PC

---------------------------------------------------------------------------------------------------
_TransZ = 1.30
_ScaleX = 1.03
_ScaleY = 1.03
_ScaleZ = 0.522  --Scale Cowling
_ScaleC = 1.9    --Scale Collider
---------------------------------------------------------------------------------------------------

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
                    --=================================================================================================
                    --| Translate Scale / Position of the Cowling section (Object164).
                    --=================================================================================================

                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "Object164", "Transform", "TkTransformData.xml"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"TransZ", _TransZ}, --Original "0"
                                {"ScaleX", _ScaleX}, --Original "1"
                                {"ScaleY", _ScaleY}, --Original "1"
                                {"ScaleZ", _ScaleZ}, --Original "1"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA", "Type", "COLLISION", "Transform", "TkTransformData.xml"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"TransZ", _TransZ}, --Original "0"
                            },
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA", "Type", "COLLISION", "Name", "HEIGHT"},
                            ["MATH_OPERATION"]      = "/",
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", _ScaleC}, --Original "6.324121"
                            },
                        },
                    }
                },

                    --=================================================================================================
                    --| We're just going to duplicate the LTHRUSTERA to RTHRUSTERA since there are too many disparities
                    --| between the two files to allow for an easy, straight forward way of implementing this fix.
                    --=================================================================================================

                {   --LTHRUSTER SCENE
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA.SCENE.MBIN",
                            "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.SCENE.MBIN",
                        },
                    }
                },
                {   --LTHRUSTER GEOMETRY
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA.GEOMETRY.MBIN.PC",
                            "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.GEOMETRY.MBIN.PC",
                        },
                    }
                },
                {   --LTHRUSTER GEOMETRY DATA
                    ["MBIN_FILE_SOURCE"] =
                    {
                        {
                            "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA.GEOMETRY.DATA.MBIN.PC",
                            "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.GEOMETRY.DATA.MBIN.PC",
                        },
                    }
                },

                    --=================================================================================================
                    --| Pass the correct NameHash / Geometry data into the copied RTHRUSTERA scene file.
                    --=================================================================================================

                {
                    ["MBIN_FILE_SOURCE"]  = {"MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.SCENE.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\LTHRUSTERA"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Name", "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA"},
                                {"NameHash", "1718557826"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "GEOMETRY"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Value", "MODELS\COMMON\SPACECRAFT\SHUTTLE\THRUSTER\THRUSTERA\RTHRUSTERA.GEOMETRY.MBIN"},
                            }
                        },

                    --=================================================================================================
                    --| Perform the transform on MirrorMerged_Y5 (side-thruster attachment)
                    --=================================================================================================

                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Name", "MirrorMerged_Y5", "Transform", "TkTransformData.xml"},
                            ["SECTION_ACTIVE"]      = {1,},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"TransZ", "3.63"}, --Original "0"
                                {"RotY",    "180"}, --Original "0"
                            }
                        },
                    }
                },
            }
        },
    }
}