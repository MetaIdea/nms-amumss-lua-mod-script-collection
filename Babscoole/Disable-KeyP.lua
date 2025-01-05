NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Disable-KeyP.pak",
["MOD_AUTHOR"]    = "Develin Pixy",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.01.1",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\INPUT\BINDINGS\GCINPUTBINDINGS_WIN_KEYBOARD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InputAction", "Fe_Options"},
                            ["SECTION_ACTIVE"] = {5,7,8,11},
                            ["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION"
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InputButton", "KeyP"},
                            ["SECTION_ACTIVE"] = {1},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InputButton", "Escape"}
                            }
                        },
                    }
                },
            }
        }
    }
}