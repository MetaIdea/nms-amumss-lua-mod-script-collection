local modfilename = "SentinelShipAnims"
local lua_author  = "Silent"
local lua_version = "3.4"
local mod_author  = "Silent369"
local nms_version = "5.73"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Slows down the Sentinel ships wing fold/unfold animations so we can
better appreciate the effort that went into creating them. It affects
all Sentinel ships that have animated wing parts.

]]

--|-------------------------------------------------------------------

--Modifies:
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1\ENTITIES\DATA.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\WINGSB\ENTITIES\ROOTJNT.ENTITY.MBIN
--MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\ROOTJNT.ENTITY.MBIN

--|-- Animation Reduction Amount -------------------------------------

local procSlowAmounts = {
    PROCSLOWAMOUNT = 0.660,
    WINGSLOWAMOUNT = 0.520
}

local function create_change_table(anim, filename, speed)
    return {
        SKW = {"Anim", anim, "Filename", filename},
        VCT = {{"Speed", speed},}
    }
end

--|-------------------------------------------------------------------

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
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Proc Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\ROOTJNT.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        create_change_table("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", procSlowAmounts.PROCSLOWAMOUNT),
                        create_change_table("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", procSlowAmounts.PROCSLOWAMOUNT),
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship WingsB Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\WINGSB\ENTITIES\ROOTJNT.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        create_change_table("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", procSlowAmounts.WINGSLOWAMOUNT),
                        create_change_table("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", procSlowAmounts.WINGSLOWAMOUNT),
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame Body 1 Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1\ENTITIES\DATA.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        create_change_table("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", procSlowAmounts.PROCSLOWAMOUNT),
                        create_change_table("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", procSlowAmounts.PROCSLOWAMOUNT),
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame L Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        create_change_table("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", procSlowAmounts.PROCSLOWAMOUNT),
                        create_change_table("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", procSlowAmounts.PROCSLOWAMOUNT),
                    }
                },
            }
        },
    }
}
