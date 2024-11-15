local modfilename = "BgDarkUINoFont"
local lua_author  = "Silent"
local lua_version = "3.6"
local mod_author  = "Silent369"
local nms_version = "5.26"
local maintenance = mod_author
local description = [[

Changes Start/Options Backgrounds/Transparent UI and Fonts

]]

--credit to Lo2k (https://www.nexusmods.com/nomanssky/mods/1706)
--for the centered atlas icon fix, it annoyed me too :)

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
                    MBIN_FS = [[UI\BOOT\TWOLINEBUTTON.MBIN]],
                    EXML_CT =
                    {
                        {
                            SKW = {"ID", "ICON"},
                            VCT = {
                                {"PositionX",       "50"},  -- Original "41.364212"
                                {"Horizontal",  "Center"},  -- Original "Left"
                            }
                        },
                    }
                }
            }
        }
    }
}
