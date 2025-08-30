NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "ClearBuild_NoPopups",
["MOD_AUTHOR"]              = "PakMack",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "6.01",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDBUILDNOTIFY.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "BUILD_INFO"},
                                {"ID", "LARGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "true"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\POPUP_BUILDMENUITEM.MBIN",
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Element Data", "GcNGuiElementData"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "TITLELAYER"},
                                {"ID", "CONTENT"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Is Hidden", "true"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Graphic Style", "TkNGuiGraphicStyle"},
                            ["PRECEDING_KEY_WORDS"] = {"Colour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004000"},
                                {"G", "0.004000"},
                                {"B", "0.071000"},
                                {"A", "0.770000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Default", "TkNGuiGraphicStyleData"},
                            ["PRECEDING_KEY_WORDS"] = {"Colour"},
                            ["SECTION_ACTIVE"] = {4,6,10,12,15,18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004000"},
                                {"G", "0.004000"},
                                {"B", "0.071000"},
                                {"A", "0.770000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Highlight", "TkNGuiGraphicStyleData"},
                            ["PRECEDING_KEY_WORDS"] = {"Colour"},
                            ["SECTION_ACTIVE"] = {3,4,6,9,10,12,15,18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004000"},
                                {"G", "0.004000"},
                                {"B", "0.071000"},
                                {"A", "0.770000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Active", "TkNGuiGraphicStyleData"},
                            ["PRECEDING_KEY_WORDS"] = {"Colour"},
                            ["SECTION_ACTIVE"] = {3,4,6,10,12,15,18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004000"},
                                {"G", "0.004000"},
                                {"B", "0.071000"},
                                {"A", "0.770000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Highlight", "TkNGuiGraphicStyleData"},
                            ["PRECEDING_KEY_WORDS"] = {"Colour"},
                            ["SECTION_ACTIVE"] = {9},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.000000"},
                                {"G", "0.000000"},
                                {"B", "0.000000"},
                                {"A", "0.500000"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Element Data", "GcNGuiElementData"},
                            ["SECTION_ACTIVE"] = {16,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "79"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Element Data", "GcNGuiElementData"},
                            ["SECTION_ACTIVE"] = {18},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "79"},
                            }
                        },
                    }
                },
            }
        },
    }
}