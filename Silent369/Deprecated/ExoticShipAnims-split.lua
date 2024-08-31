local modfilename = "ExoticShipAnims"
local lua_author  = "Silent"
local lua_version = "v1.0"
local mod_author  = "Silent369"
local nms_version = "4.38"
local maintenance = mod_author
local description = [[

Slows down the Exotic (Royal) ships wing fold/unfold animations.
It affects all Exotic ships that have animated wing parts.

]]

--|-- Animation Reduction Amount -------------------------------------

local _WingTakeOffAmt = "0.6"  --Original "1"
local _WingLandingAmt = "0.8"  --Original "1"

--|-------------------------------------------------------------------

--Modifies:
--MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_A\ENTITIES\WINGS_A.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_B\ENTITIES\WINGS_B.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\S-CLASS\ROYALPARTS\WINGS\WINGS_C\ENTITIES\WINGSC.ENTITY.MBIN

--|-------------------------------------------------------------------

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
            ["MBIN_CHANGE_TABLE"] =
            {
                    --|-------------------------------------------------------------------
                    --| Wings A Entity Slow Down
                    --|-------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_A\\ENTITIES\\WINGS_A.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/S%-CLASS/ROYALPARTS/WINGS/ANIMS/WINGS_A_TAKEOFF.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingTakeOffAmt},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/S%-CLASS/ROYALPARTS/WINGS/ANIMS/WINGS_A_LANDING.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingLandingAmt},
                            }
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Wings B Entity Slow Down
                    --|-------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_B\\ENTITIES\\WINGS_B.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/S%-CLASS/ROYALPARTS/WINGS/ANIMS/WINGS_B_TAKEOFF.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingTakeOffAmt},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/S%-CLASS/ROYALPARTS/WINGS/ANIMS/WINGS_B_LANDING.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingLandingAmt},
                            }
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Wings C Entity Slow Down
                    --|-------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\\COMMON\\SPACECRAFT\\S-CLASS\\ROYALPARTS\\WINGS\\WINGS_C\\ENTITIES\\WINGSC.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/S%-CLASS/ROYALPARTS/WINGS/ANIMS/WINGS_C_TAKEOFF.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingTakeOffAmt},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/S%-CLASS/ROYALPARTS/WINGS/ANIMS/WINGS_C_LANDING.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingLandingAmt},
                            }
                        },
                    }
                },

            }
        },
    }
}

