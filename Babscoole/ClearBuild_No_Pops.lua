NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "ClearBuild_No_Pops.pak",
["MOD_AUTHOR"]              = "PakMack",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.62",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\BUILDINTERACT.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "OPTIONS"},
                                {"ID", "CYCLEPART"},
                                {"ID", "SHOWRELATIVES"},
                                {"ID", "CYCLESPACER"},
                                {"ID", "PLACE"},
                                {"ID", "PLACEWIRE"},
                                {"ID", "MOVE"},
                                {"ID", "COLOURSWATCH"},
                                {"ID", "SNAPROTATE"},
                                {"ID", "ROTATEY"},
                                {"ID", "CYCLEROTATION"},
                                {"ID", "SCALE"},
                                {"ID", "DUPLICATE"},
                                {"ID", "DELETE"},
                                {"ID", "TOGGLESPACER"},
                                {"ID", "TOGGLESNAPS"},
                                {"ID", "TOGGLESELECT"},
                                {"ID", "TOGGLECAM"},
                                {"ID", "TOGGLEWIRING"},
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
                                {"R", "0.141"},
                                {"G", "0.141"},
                                {"B", "0.18"},
                                {"A", "0.9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Default", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {5,7,11,13,16,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.141"},
                                {"G", "0.141"},
                                {"B", "0.18"},
                                {"A", "0.9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Highlight", "TkNGuiGraphicStyleData.xml", "Colour","Colour.xml"},
                            ["SECTION_ACTIVE"] = {4,5,7,10,11,13,16,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.141"},
                                {"G", "0.141"},
                                {"B", "0.18"},
                                {"A", "0.9"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Active", "TkNGuiGraphicStyleData.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {4,5,7,11,13,16,19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.141"},
                                {"G", "0.141"},
                                {"B", "0.18"},
                                {"A", "0.9"},
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
                                {"Height", "70"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ElementData", "GcNGuiElementData.xml"},
                            ["SECTION_ACTIVE"] = {19},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Height", "100"},
                            }
                        },
                    }
                },
            }
        },
    }
}