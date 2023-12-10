local modfilename = "BgDarkUINoFont"
local lua_author  = "Silent"
local lua_version = "v1.8"
local mod_author  = "Silent369"
local nms_version = "4.46"
local maintenance = mod_author
local description = [[

Changes Start/Options Backgrounds/Transparent UI and Fonts

]]

--credit to Lo2k (https://www.nexusmods.com/nomanssky/mods/1706)
--for the centered atlas icon fix, it annoyed me too :)

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
                    ["MBIN_FILE_SOURCE"]  = {"UI\BOOT\TWOLINEBUTTON.MBIN"},
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"]  = {"ID", "ICON"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
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

