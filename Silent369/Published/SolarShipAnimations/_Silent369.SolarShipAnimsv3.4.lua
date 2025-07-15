local modfilename = "SolarShipAnims"
local lua_author  = "Silent"
local lua_version = "3.4"
local mod_author  = "Silent369"
local nms_version = "5.74"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Slightly increases the Solar Ship Wing animation speed for altitude,
turning, landing and takeoff situations.

]]

--|-------------------------------------------------------------------

local animation_speeds = {
    TAKEOFF     = 1.4,
    LANDING     = 1.4,
    LOWALTITUDE = 1.5,
    TURNLEFT    = 1.6,
    TURNRIGHT   = 1.6
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
                {
                    MBIN_FS = [[MODELS\COMMON\SPACECRAFT\SAILSHIP\SAILSHIPPARTS\SAILSHIPANIMS\SAILSHIP_SHARED\ENTITIES\ROOTJNT.ENTITY.MBIN]],
                    MXML_CT =
                    {
                        create_change_table("TAKEOFF", "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPANIMS/SAILSHIP_TAKEOFF.ANIM.MBIN", animation_speeds.TAKEOFF),
                        create_change_table("LANDING", "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPANIMS/SAILSHIP_LANDING.ANIM.MBIN", animation_speeds.LANDING),
                        create_change_table("LOWALTITUDE", "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPANIMS/SAILSHIP_SAILSUNFOLD.ANIM.MBIN", animation_speeds.LOWALTITUDE),
                        create_change_table("TURNLEFT", "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPANIMS/SAILSHIP_TUCKIN.ANIM.MBIN", animation_speeds.TURNLEFT),
                        create_change_table("TURNRIGHT", "MODELS/COMMON/SPACECRAFT/SAILSHIP/SAILSHIPPARTS/SAILSHIPANIMS/SAILSHIP_TUCKIN.ANIM.MBIN", animation_speeds.TURNRIGHT),
                    }
                },
            }
        },
    }
}
