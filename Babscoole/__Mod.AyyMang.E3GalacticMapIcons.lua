NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]            = "__Mod.AyyMang.E3GalacticMapIcons.pak",
["MOD_AUTHOR"]              = "AyyMang",
["LUA_AUTHOR"]              = "Babscoole",
["NMS_VERSION"]             = "4.72",
["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
["MODIFICATIONS"]           =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = "GCGALAXYGLOBALS.GLOBAL.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SolarInfoPanelWidth",  "2048"},
                                {"SolarInfoPanelHeight", "1024"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SolarInfoPanelOffset", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "90"},
                                {"y", "10"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"SolarInfoPanelLineOffset", "Vector2f.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "36"},
                                {"y", "56"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours.xml", "Yellow", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.921"},
                                {"B", "0.606"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours.xml", "Green", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.486"},
                                {"G", "0.957"},
                                {"B", "0.624"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours.xml", "Blue", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "0.567"},
                                {"G", "0.705"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"BaseStarDefaultColours", "GcGalaxyStarColours.xml", "Red", "Colour.xml"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0.083"},
                                {"B", "0.152"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Yellow"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "1.8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Green"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "2.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Blue"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "3"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"StarSize", "Red"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "1"},
                                {"y", "3.5"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetParameters"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FirstOrbitRadiusMin",  "20"},
                                {"FirstOrbitRadiusMax",  "60"},
                                {"OrbitRadiusOffsetMin", "20"},
                                {"OrbitRadiusOffsetMax", "50"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters", "PlanetRadii"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Large",  "10"},
                                {"Medium",  "8"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"SolarSystemParameters"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"SystemTilt",  "30"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\GALAXYBAR.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FontIndex",  "1"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcNGuiGraphicData.xml"},
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden",  "True"},
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcNGuiGraphicData.xml"},
                            ["SECTION_ACTIVE"] = {3,7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden",  "False"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GraphicStyle", "TkNGuiGraphicStyle.xml", "Colour", "Colour.xml"},
                            ["SECTION_ACTIVE"] = {28,43,55,58},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A",  "0"},
                            }
                        },
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "UI\TOOLTIP_GALAXY_SYSTEMINFO.MBIN",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FontIndex", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "BACKGROUND"},
                                {"ID", "STAR_ICON"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"IsHidden", "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] =
                            {
                                {"ID", "SEPARATOR"},
                                {"ID", "DISTANCE"},
                            },
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionY", "55"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SEPARATOR"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionY", "55"},
                                {"Gradient",  "None"},
                                {"Curve",     "FastInSlowOut"},
                                {"Animate",   "CustomWipe"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SEPARATOR"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"CustomMinStart"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"x", "0"},
                                {"y", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SEPARATOR"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"CustomMaxStart"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"y", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TEXT_LAYER"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "700"},
                                {"Height", "75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SYSTEMNAME"},
                            ["SECTION_ACTIVE"] = {1,3},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionY",  "-5"},
                                {"Width",      "700"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SYSTEMNAME"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FontHeight", "49"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DISTANCE"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Style",     "Colour"},
                                {"Highlight", "Colour"},
                                {"Active",    "Colour"},                                
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WARP"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = {1,2,3},
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Style",     "OutlineColour"},
                                {"Highlight", "OutlineColour"},
                                {"Active",    "OutlineColour"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"G", "0"},
                                {"B", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WARP"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = {1,2,3},
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Style"},
                                {"Highlight"},
                                {"Active"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"OutlineSize", "4"},
                                {"HasOutline",  "True"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "WARP"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = {1,2,3},
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"GraphicStyle", "Colour"},
                                {"GraphicStyle", "Active", "Colour"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TOOLTIP"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = {1,2,3},
                            ["PRECEDING_KEY_WORDS"] = {"GraphicStyle", "Colour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TEXT_LAYER"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "700"},
                                {"Height", "75"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SYSTEMNAME"},
                            ["SECTION_ACTIVE"] = 2,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionY", "-5"},
                                {"Width",     "700"},
                            }
                        },
                        {
                            ["SECTION_ACTIVE"] = 33,
                            ["PRECEDING_KEY_WORDS"] = {"Style", "Colour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "1"},
                            }
                        },
                        {
                            ["SECTION_ACTIVE"] = {38,52},
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Highlight", "Colour"},
                                {"Active",    "Colour"},                                
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "SEPARATOR"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionX", "43"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TEXT_LAYER"},
                            ["SECTION_ACTIVE"] = 3,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"Width",  "700"},
                                {"Height", "110"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DISTANCE"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = {3},
                            ["PRECEDING_KEY_WORDS"] =  {"Style", "Colour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"R", "1"},
                                {"G", "1"},
                                {"B", "1"},
                            }
                        },
                        -- {
                            -- ["SECTION_ACTIVE"] = 52,
                            -- ["PRECEDING_KEY_WORDS"] = {"Highlight", "Colour"},
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"R", "1"},
                                -- {"G", "1"},
                                -- {"B", "1"},
                            -- }
                        -- },
                        -- {
                            -- ["SECTION_ACTIVE"] = 52,
                            -- ["PRECEDING_KEY_WORDS"] = {"Active", "Colour"},                                
                            -- ["VALUE_CHANGE_TABLE"] =
                            -- {
                                -- {"R", "1"},
                                -- {"G", "1"},
                                -- {"B", "1"},
                            -- }
                        -- },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "REGION"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"PositionY", "80"},
                                {"Width",     "371"},
                                {"Height",    "28"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "REGION"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Style",     "Colour"},
                                {"Highlight", "Colour"},
                                {"Active",    "Colour"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "RACE"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = {2},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.05"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "ICON"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["SECTION_ACTIVE"] = {7},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.5"},
                                {"AnimSplit", "0.4"},
                                {"Animate",   "None"},
                            }
                        },
                        {
                            ["SECTION_ACTIVE"] = {47,50,57,62,66,70,74,78,82},
                            ["PRECEDING_KEY_WORDS"] = {"Style", "Colour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1"},
                            }
                        },
                        {
                            ["SECTION_ACTIVE"] = {58,63,73,80,86,92,98,104,110},
                            ["PRECEDING_KEY_WORDS"] =
                            {
                                {"Highlight", "Colour"},
                                {"Active",    "Colour"},
                            },
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "1"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "TYPE"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"FontHeight", "28"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"GraphicStyle", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {12,13},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.5"},
                                {"AnimSplit", "0.4"},
                                {"Animate",   "None"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {36},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.1"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "ECON_DETAIL"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.15"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "DETAILS"},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PRECEDING_KEY_WORDS"] = {"GraphicStyle", "Colour"},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"A", "0"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {40},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.2"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {43},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.25"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {45},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.3"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {47},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.35"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {49},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.4"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {51},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimTime",  "0.45"},
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"Style", "TkNGuiGraphicStyle.xml"},
                            ["SECTION_ACTIVE"] = {53},
                            ["VALUE_CHANGE_TABLE"] =
                            {
                                {"AnimSplit", "1"},
                                {"Animate",   "WipeRightToLeft"},
                            }
                        },
                    }
                },
            }
        },
    }
}
