local modfilename = "SentinelShipAnims"
local lua_author  = "Silent"
local lua_version = "3.1"
local mod_author  = "Silent369"
local nms_version = "5.27"
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
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Proc Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\ROOTJNT.ENTITY.MBIN]],
                    EXML_CT = {
                        {
                            SKW = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _ProcSlowAmount},}
                        },
                        {
                            SKW = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _ProcSlowAmount},}
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship WingsB Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\WINGSB\ENTITIES\ROOTJNT.ENTITY.MBIN]],
                    EXML_CT = {
                        {
                            SKW = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _WingSlowAmount},}
                        },
                        {
                            SKW = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _WingSlowAmount},}
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame Body 1 Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1\ENTITIES\DATA.ENTITY.MBIN]],
                    EXML_CT = {
                        {
                            SKW = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _ProcSlowAmount},}
                        },
                        {
                            SKW = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _ProcSlowAmount},}
                        },
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame L Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN]],
                    EXML_CT = {
                        {
                            SKW = {"Anim", "TAKEOFF", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _ProcSlowAmount},}
                        },
                        {
                            SKW = {"Anim", "LANDING", "Filename", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN"},
                            ITF = "FORCE",
                            VCT = {{"Speed", _ProcSlowAmount},}
                        },
                    }
                },
            }
        },
    }
}
