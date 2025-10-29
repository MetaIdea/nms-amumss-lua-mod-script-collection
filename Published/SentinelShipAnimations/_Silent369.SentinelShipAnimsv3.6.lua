local modfilename = "SentinelShipAnims"
local lua_author  = "Silent"
local lua_version = "3.6"
local mod_author  = "Silent369"
local nms_version = "6.12"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Slows down the Sentinel ships wing fold/unfold animations so we can
better appreciate the effort that went into creating them. It affects
all Sentinel ships that have animated wing parts.

It also changes the opacity of red canopy circuitry texture to give
a much clearer view when flying in first person mode.

Modifies:
MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1\ENTITIES\DATA.ENTITY.MBIN
MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN
MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\WINGSB\ENTITIES\ROOTJNT.ENTITY.MBIN
MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\ROOTJNT.ENTITY.MBIN

]]

--|-- Animation Reduction Amount -------------------------------------

local cfgAnimSpeed = {
    PROCSLOWAMOUNT = 0.560,
    WINGSLOWAMOUNT = 0.420
}

local function changetable(anim, filename, speed)
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
                {
                    MBIN_FS = [[MODELS/COMMON/SPACECRAFT/SENTINELSHIP/SENTINELCOCKPIT.SCENE.MBIN]],
                    MXML_CT =
                    {
                        {
                            SKW = {
                                {"Name",        "lightrim"}, -- high sidewall scroll glow
                                {"Name",     "WireLightsL"}, -- L sidewires scroll glow
                                {"Name",     "WireLightsR"}, -- R sidewires scroll glow
                                {"Name", "polySurface8398"}, -- canopy lights
                                {"Name",       "Lightbase"}, -- map base center
                                {"Name",       "MonitorL1"}, -- L monitor
                                {"Name",       "MonitorL2"}, -- R monitor
                                {'Name',            "Red2"}, -- canopy scroll
                            },
                            REMOVE = "SECTION"
                        }
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Proc Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\SENTINELSHIP_PROC\ENTITIES\ROOTJNT.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        changetable("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", cfgAnimSpeed.PROCSLOWAMOUNT),
                        changetable("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", cfgAnimSpeed.PROCSLOWAMOUNT),
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship WingsB Root Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\WINGSB\ENTITIES\ROOTJNT.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        changetable("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", cfgAnimSpeed.WINGSLOWAMOUNT),
                        changetable("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", cfgAnimSpeed.WINGSLOWAMOUNT),
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame Body 1 Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEBODY1\ENTITIES\DATA.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        changetable("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", cfgAnimSpeed.PROCSLOWAMOUNT),
                        changetable("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", cfgAnimSpeed.PROCSLOWAMOUNT),
                    }
                },
                    --|-------------------------------------------------------------------
                    --| Sentinel Ship Engine Flame L Animation Slow Down
                    --|-------------------------------------------------------------------
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SENTINELSHIP\PARTS\ENGINEFLAMEL\ENTITIES\DATA.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        changetable("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELTAKEOFF.ANIM.MBIN", cfgAnimSpeed.PROCSLOWAMOUNT),
                        changetable("LANDING", "MODELS/COMMON/SPACECRAFT/SENTINELSHIP/ANIMS/SENTINELLANDING.ANIM.MBIN", cfgAnimSpeed.PROCSLOWAMOUNT),
                    }
                },
            }
        },
    }
}
