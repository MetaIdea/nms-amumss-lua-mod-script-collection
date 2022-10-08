local modfilename = "BgDarkUI"
local lua_author  = "Silent"
local lua_version = "v1.2"
local mod_author  = "Silent369"
local nms_version = "4.00.x"
local description = "Changes Start/Options Backgrounds and Transparent UI"

--credit to Lo2k (https://www.nexusmods.com/nomanssky/mods/1706)
--for the centered atlas icon fix, it annoyed me too :)

NMS_MOD_DEFINITION_CONTAINER =
{
    ["MOD_FILENAME"]         = "_"..modfilename..lua_version..".pak",
    ["LUA_AUTHOR"]           = lua_author,
    ["MOD_AUTHOR"]           = mod_author,
    ["NMS_VERSION"]          = nms_version,
    ["MOD_DESCRIPTION"]      = description,
    ["MODIFICATIONS"]        =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"]    = {"UI\BOOT\TWOLINEBUTTON.MBIN"},
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "ICON"},
                            ["VALUE_CHANGE_TABLE"]  =
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
