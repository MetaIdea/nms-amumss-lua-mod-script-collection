local modfilename = "BetterSubtleTrails"
local lua_author  = "Silent"
local lua_version = "v1.0"
local mod_author  = "Silent369"
local nms_version = "4.47"
local maintenance = mod_author
local description = [[

Makes trail effects thinner and more subtle.

]]

----------------------------------------------------------------------------------------
local GlowValue = 2
----------------------------------------------------------------------------------------

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
                {
                    ["MBIN_FILE_SOURCE"]  =
                    {
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTCYANTRAIL.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTDARKTRAIL.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTGOLDTRAIL.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTGREENTRAIL.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTORANGETRAIL.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTREDTRAIL.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\HOTTRAIL.MATERIAL.MBIN",
                        "MODELS\\EFFECTS\\TRAILS\\SPACECRAFT\\HOT\\RAINBOWTRAIL.MATERIAL.MBIN",
                    },
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "HotTrail"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Class", "Translucent"}, --Original "Additive"
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"Name", "gMinPixelSize_Glow", "Values", "Vector4f.xml"},
                            ["INTEGER_TO_FLOAT"]   = "FORCE",
                            ["VALUE_CHANGE_TABLE"] =
                            {
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
