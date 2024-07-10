NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "LeftBinocBack.pak",
["MOD_AUTHOR"]    = "Aurfram",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "4.45",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSLEFTPANEL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Default","TkNGuiGraphicStyleData.xml","Colour","Colour.xml"},
                            ["SECTION_ACTIVE"] = {4},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.07843"},
                                {"B", "0.5764"},
                                {"A", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","BINOCS_LEFT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "100"}, --100
                                {"Height", "100"}, --100
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\HUD\BINOCULARS\HUDBINOCSRIGHTPANEL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Default","TkNGuiGraphicStyleData.xml","Colour","Colour.xml"},
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "0.07843"},
                                {"B", "0.5764"},
                                {"A", "0.2"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID","BINOCS_RIGHT"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "672"}, --672
                                {"Height", "800"}, --1080
                            }
                        },
                    }
                },
            }
        },
    }
}