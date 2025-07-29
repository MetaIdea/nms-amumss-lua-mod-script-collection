local modfilename = "BetterSubtleTrails"
local lua_author  = "Silent"
local lua_version = "3.2"
local mod_author  = "Silent369"
local nms_version = "5.74"
local maintenance = mod_author
local exmlcreate  = true
local description = [[

Makes trail effects thinner and more subtle.

]]

----------------------------------------------------------------------------------------
local XGlowValue = 0.100000
local YGlowValue = 0.015000
----------------------------------------------------------------------------------------

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
                    MBIN_FS =
                    {
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTCYANTRAIL.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTDARKTRAIL.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGOLDTRAIL.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTGREENTRAIL.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTORANGETRAIL.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTREDTRAIL.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\HOTTRAIL.MATERIAL.MBIN]],
                        [[MODELS\EFFECTS\TRAILS\SPACECRAFT\HOT\RAINBOWTRAIL.MATERIAL.MBIN]]
                    },
                    MXML_CT =
                    {
                        {
                            SKW = {"Name", "gMinPixelSize_Glow"},
                            PKW = {"Values"},
                            VCT = {
                                {"X", XGlowValue},
                                {"Y", YGlowValue},
                            }
                        },
                    }
                },
            }
        },
    }
}
