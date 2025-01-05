NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Alternative Vehicle Control and Disable KeyP.pak",
["MOD_AUTHOR"]    = "Devilin Pixy",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "5.01.1",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"VehicleAltControlScheme", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA\INPUT\BINDINGS\GCINPUTBINDINGS_WIN_KEYBOARD.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InputAction", "Fe_Options"},
                            ["SECTION_ACTIVE"] = {5,7,8,11},
                            ["SECTION_UP"] = 1,
                            ["REMOVE"] = "SECTION",
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"InputAction", "Fe_Options"},
                            ["SECTION_ACTIVE"] = {3},
                            ["SECTION_UP"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"InputButton", "Escape"},
                            }
                        },
                    }
                },
            }
        },
    },
}
