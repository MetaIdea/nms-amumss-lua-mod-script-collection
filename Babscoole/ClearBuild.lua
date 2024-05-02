NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ClearBuild.pak",
["MOD_AUTHOR"]    = "PakMack",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.65",
["MODIFICATIONS"] =
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
                    }
                },
            }
        },
    }
}