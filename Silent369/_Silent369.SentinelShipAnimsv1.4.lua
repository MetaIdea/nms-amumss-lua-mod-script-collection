local modfilename = "SentinelShipAnims"
local lua_author  = "Silent"
local lua_version = "v1.4"
local mod_author  = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Slows down the Sentinel ships wing fold/unfold animations so we can
better appreciate the effort that went into creating them. It affects
all Sentinel ships that have animated wing parts.

]]

--|-- Animation Reduction Amount -------------------------------------

local _ProcSlowAmount = 0.660  --Original "1"
local _WingSlowAmount = 0.520  --Original "1"

--|-------------------------------------------------------------------

--Modifies:
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1\ENTITIES\DATA.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\WINGSB\ENTITIES\ROOTJNT.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\ROOTJNT.ENTITY.MBIN

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
                    --| Sentinel Ship Proc Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\\COMMON\\SPACECRAFT\\SENTINELSHIP\\SENTINELSHIP_PROC\\ENTITIES\\ROOTJNT.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _ProcSlowAmount},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _ProcSlowAmount},
                            }
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship WingsB Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\\COMMON\\SPACECRAFT\\SENTINELSHIP\\PARTS\\WINGSB\\ENTITIES\\ROOTJNT.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingSlowAmount},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _WingSlowAmount},
                            }
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame Body 1 Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\\COMMON\\SPACECRAFT\\SENTINELSHIP\\PARTS\\ENGINEFLAMEBODY1\\ENTITIES\DATA.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _ProcSlowAmount},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _ProcSlowAmount},
                            }
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame L Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    ["MBIN_FILE_SOURCE"] = {"MODELS\\COMMON\\SPACECRAFT\\SENTINELSHIP\\PARTS\\ENGINEFLAMEL\\ENTITIES\\DATA.ENTITY.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _ProcSlowAmount},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]   = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ["INTEGER_TO_FLOAT"]    = "FORCE",
                            ["VALUE_CHANGE_TABLE"]  =
                            {
                                {"Speed",           _ProcSlowAmount},
                            }
                        },
                    }
                },
            }
        },
    }
}

