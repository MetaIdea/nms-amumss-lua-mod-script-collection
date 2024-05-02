NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "ClearBuild_NoPopups.pak",
["MOD_AUTHOR"]              = "PakMack",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.65",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\HUDBUILDNOTIFY.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "BUILD_INFO"},
                                {"ID", "LARGE"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\POPUP_BUILDMENUITEM.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
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
                                {"IsHidden", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GraphicStyle", "TkNGuiGraphicStyle.xml", "Colour","Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004"},
                                {"G", "0.004"},
                                {"B", "0.071"},
                                {"A", "0.77"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Default", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {5,7,11,13,16,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004"},
                                {"G", "0.004"},
                                {"B", "0.071"},
                                {"A", "0.77"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Highlight", "TkNGuiGraphicStyleData.xml", "Colour","Colour.xml"},
                            ["SECTION_ACTIVE"] = {4,5,7,10,11,13,16,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004"},
                                {"G", "0.004"},
                                {"B", "0.071"},
                                {"A", "0.77"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Active", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {4,5,7,11,13,16,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.004"},
                                {"G", "0.004"},
                                {"B", "0.071"},
                                {"A", "0.77"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Highlight", "TkNGuiGraphicStyleData.xml", "Colour","Colour.xml"},
                            ["SECTION_ACTIVE"] = {10},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0"},
                                {"G", "0"},
                                {"B", "0"},
                                {"A", "0.5"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {17,20},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "79"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {19},
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