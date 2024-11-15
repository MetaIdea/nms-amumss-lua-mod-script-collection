local modfilename = "BetterSubtleTrails"
local lua_author  = "Silent"
local lua_version = "2.4"
local mod_author  = "Silent369"
local nms_version = "5.12"
local maintenance = mod_author
local description = [[

Makes trail effects thinner and more subtle.

]]

----------------------------------------------------------------------------------------
local GlowValue = 0.25
----------------------------------------------------------------------------------------

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
                    EXML_CT =
                    {
                        {
                            SKW = {"Name", "HotTrail"},
                            VCT = {
                                {"Class", "Translucent"}, --Original "Additive"
                            }
                        },
                        {
                            SKW = {"Name", "gMinPixelSize_Glow", "Values", "Vector4f.xml"},
                            ITF = "FORCE",
                            MATH_OP = "*",
                            VCT = {
                                {"x", GlowValue},
                                {"y",    "0.02"},
                            }
                        },
                    }
                },
            }
        },
    }
}
