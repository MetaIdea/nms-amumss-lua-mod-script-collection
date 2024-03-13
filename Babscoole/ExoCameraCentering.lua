NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ExoCameraCentering.pak",
["MOD_AUTHOR"]    = "Jukelo",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "3.75",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCCAMERAGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "BUGGY"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime", "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "HOVERCRAFT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime", "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "SUBMARINE"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime", "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "VEHICLE"}, --2061,2126,2191
                            ["SECTION_ACTIVE"] = {2,3,4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime", "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime", "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECHSHOOT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime", "600"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Name", "MECHJETPACK"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"CenterStartTime", "600"},
                            }
                        },
                    }
                },
            }
        },
    }
}
