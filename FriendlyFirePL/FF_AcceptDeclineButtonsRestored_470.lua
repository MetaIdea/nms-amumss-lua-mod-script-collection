----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "AcceptDeclineButtonsRestored"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "470"
METADATA_MOD_DESC       = "This mod aims to restore the design of the Accept / Decline buttons found in compare / trade menus to the versions before Orbital update"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_UI_BUTTON_ACCEPT = "UI\\COMPONENTS\\BUTTONACCEPT.MBIN"
FILE_UI_BUTTON_DECLINE = "UI\\COMPONENTS\\BUTTONDECLINE.MBIN"



--------------------------------------------------
-- parameters for funtions
--------------------------------------------------

VCT_WHITE = {{"R",1,},{"G",1,},{"B",1,},{"A",1,},}
VCT_GREY = {{"R",0.141,},{"G",0.141,},{"B",0.18,},{"A",1,},}
VCT_BLACK_FULL = {{"R",0,},{"G",0,},{"B",0,},{"A",1,},}
VCT_BLACK_SEMI = {{"R",0,},{"G",0,},{"B",0,},{"A",0.2,},}

VCT_STYLE = {{"StrokeSize",0,},{"Gradient","None",},{"StrokeGradient","False",},}

SKW_TEXT_ALL = {{"Default","TkNGuiTextStyleData.xml",},{"Highlight","TkNGuiTextStyleData.xml",},{"Active","TkNGuiTextStyleData.xml",},}
SKW_GRAPHIC_ALL = {{"Default","TkNGuiGraphicStyleData.xml"},{"Highlight","TkNGuiGraphicStyleData.xml",},{"Active","TkNGuiGraphicStyleData.xml",},}

SKW_COLOUR = {{"Default","TkNGuiGraphicStyleData.xml","Colour","Colour.xml",},{"Highlight","TkNGuiGraphicStyleData.xml","Colour","Colour.xml",},{"Active","TkNGuiGraphicStyleData.xml","Colour","Colour.xml",},}
SKW_GRADIENT = {{"Default","TkNGuiGraphicStyleData.xml","GradientColour","Colour.xml",},{"Highlight","TkNGuiGraphicStyleData.xml","GradientColour","Colour.xml",},{"Active","TkNGuiGraphicStyleData.xml","GradientColour","Colour.xml",}}



--------------------------------------------------
-- functions to modify sections
--------------------------------------------------

function SetColour(colour,section,vct) return
{   ["SKW"] = {colour,"Colour.xml",},   ["SECTION_ACTIVE"] = section,   ["VCT"] = vct,   }
end

function SetStyle(style,type,section,vct) return
{   ["SKW"] = {style,type,},    ["SECTION_ACTIVE"] = section,   ["VCT"] = vct,  }
end

function SetMainTextLayout() return
{   ["SKW"] = {"ID","TEXT",},   ["SECTION_UP_SPECIAL"] = 1,       ["VCT"] = {{"PositionX",10,},{"PositionY",7,},
    {"Width",94,},{"Height",0,},{"Vertical","Top",},{"Horizontal","Left",},{"AnchorPercent","False",},},    }
end

function SetSubTextLayout() return
{   ["SKW"] = {"ID","SUBTEXT",},    ["SECTION_UP_SPECIAL"] = 1,   ["VCT"] = {{"PositionY",63,},},   }
end

function AlignAllText() return
{   ["SKW"] = SKW_TEXT_ALL,       ["REPLACE_TYPE"] = "ALL",     ["VCT"] = {{"Horizontal","Left",},},  }
end

function ChangeMainTextSize(size) return
{   ["SKW"] = SKW_TEXT_ALL,       ["SECTION_ACTIVE"] = 1,       ["VCT"] = {{"FontHeight",size,},},  }
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]   	= METADATA_MOD_DESC,
    ["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    --------------------------------------------------
                    -- accept button MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_BUTTON_ACCEPT,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- restore button background
                        SetColour("Colour",{4,5,6},VCT_GREY),
                        SetColour("StrokeColour",{4,5,6},VCT_WHITE),
                        SetColour("GradientColour",{4,5,6},VCT_BLACK_FULL),
                        SetColour("StrokeGradientColour",{4,5,6},VCT_WHITE),

                        -- change style for active button
                        SetStyle("Default","TkNGuiGraphicStyleData.xml",2,VCT_STYLE),
                        SetStyle("Highlight","TkNGuiGraphicStyleData.xml",2,VCT_STYLE),
                        SetStyle("Active","TkNGuiGraphicStyleData.xml",2,VCT_STYLE),

                        -- restore gradient bar
                        {   ["SKW"] = {"ElementData","GcNGuiElementData.xml",},   ["SECTION_ACTIVE"] = 2,   ["SECTION_UP"] = 1,   ["SEC_SAVE_TO"] = "SEC_GRADIENT",                                                     },
                        {   ["SEC_EDIT"] = "SEC_GRADIENT",    ["VCT"] = {{"ID","GRADIENT",},{"Height",55,},{"AnchorPercent","False"},},                                                                                 },
                        {   ["SEC_EDIT"] = "SEC_GRADIENT",    ["SKW"] = {"Colour","Colour.xml",},                 ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = {{"R",0.055,},{"G",0.863,},{"B",0.341,},{"A",0.7,},},   },
                        {   ["SEC_EDIT"] = "SEC_GRADIENT",    ["SKW"] = {"StrokeColour","Colour.xml",},           ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_WHITE,                                              },
                        {   ["SEC_EDIT"] = "SEC_GRADIENT",    ["SKW"] = {"GradientColour","Colour.xml",},         ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = {{"R",0.055,},{"G",0.863,},{"B",0.341,},{"A",0.4,},},   },
                        {   ["SEC_EDIT"] = "SEC_GRADIENT",    ["SKW"] = {"StrokeGradientColour","Colour.xml",},   ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_WHITE,                                              },
                        {   ["SEC_EDIT"] = "SEC_GRADIENT",    ["SKW"] = SKW_GRAPHIC_ALL,      ["VCT"] = VCT_STYLE,                                                                                                      },
                        {   ["SKW"] = {"ID","ENABLED",},    ["SECTION_UP_SPECIAL"] = 1,     ["PKW"] = "Children",   ["CREATE_HOS"] = "TRUE",    ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_GRADIENT", },

                        -- restore shadow effect
                        {   ["SKW"] = {"ElementData","GcNGuiElementData.xml",},   ["SECTION_ACTIVE"] = 2,   ["SECTION_UP"] = 1,   ["SEC_SAVE_TO"] = "SEC_SHADOW",                                                       },
                        {   ["SEC_EDIT"] = "SEC_SHADOW",    ["VCT"] = {{"ID","SHADOW",},{"Height",9,},},                                                                                                                },
                        {   ["SEC_EDIT"] = "SEC_SHADOW",    ["SKW"] = {"Colour","Colour.xml",},                 ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_BLACK_SEMI,                                           },
                        {   ["SEC_EDIT"] = "SEC_SHADOW",    ["SKW"] = {"StrokeColour","Colour.xml",},           ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_WHITE,                                                },
                        {   ["SEC_EDIT"] = "SEC_SHADOW",    ["SKW"] = {"GradientColour","Colour.xml",},         ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_BLACK_FULL,                                           },
                        {   ["SEC_EDIT"] = "SEC_SHADOW",    ["SKW"] = {"StrokeGradientColour","Colour.xml",},   ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_WHITE,                                                },
                        {   ["SEC_EDIT"] = "SEC_SHADOW",    ["SKW"] = SKW_GRAPHIC_ALL,    ["VCT"] = VCT_STYLE,                                                                                                          },
                        {   ["SKW"] = {"ID","ENABLED",},    ["SECTION_UP_SPECIAL"] = 1,     ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_SHADOW",                               },

                        -- restore thin top bar
                        {   ["SKW"] = {"ElementData","GcNGuiElementData.xml",},   ["SECTION_ACTIVE"] = 2,   ["SECTION_UP"] = 1,   ["SEC_SAVE_TO"] = "SEC_TOPBAR",                                                       },
                        {   ["SEC_EDIT"] = "SEC_TOPBAR",    ["VCT"] = {{"ID","TOPBAR",},{"Height",5,},},                                                                                                                },
                        {   ["SEC_EDIT"] = "SEC_TOPBAR",    ["SKW"] = {"Colour","Colour.xml",},                 ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = {{"R",0.056,},{"G",0.863,},{"B",0.343,},{"A",1,},},       },
                        {   ["SEC_EDIT"] = "SEC_TOPBAR",    ["SKW"] = {"StrokeColour","Colour.xml",},           ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_WHITE,                                                },
                        {   ["SEC_EDIT"] = "SEC_TOPBAR",    ["SKW"] = {"GradientColour","Colour.xml",},         ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_BLACK_FULL,                                           },
                        {   ["SEC_EDIT"] = "SEC_TOPBAR",    ["SKW"] = {"StrokeGradientColour","Colour.xml",},   ["SECTION_ACTIVE"] = {1,2,3},       ["VCT"] = VCT_WHITE,                                                },
                        {   ["SEC_EDIT"] = "SEC_TOPBAR",    ["SKW"] = SKW_GRAPHIC_ALL,    ["VCT"] = VCT_STYLE,                                                                                                          },
                        {   ["SKW"] = {"ID","ENABLED",},    ["SECTION_UP_SPECIAL"] = 1,     ["PKW"] = "Children",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_TOPBAR",                               },
                            
                        SetMainTextLayout(),
                        SetSubTextLayout(),
                        AlignAllText(),
                        ChangeMainTextSize(26),
                    },
                },

                {
                    --------------------------------------------------
                    -- decline button MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_BUTTON_DECLINE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- restore button background
                        SetColour("Colour",{1,2,3},VCT_GREY),
                        SetColour("StrokeColour",{1,2,3},VCT_WHITE),
                        SetColour("GradientColour",{1,2,3},VCT_BLACK_FULL),
                        SetColour("StrokeGradientColour",{1,2,3},VCT_WHITE),

                        SetStyle("Default","TkNGuiGraphicStyleData.xml",1,VCT_STYLE),
                        SetStyle("Highlight","TkNGuiGraphicStyleData.xml",1,VCT_STYLE),
                        SetStyle("Active","TkNGuiGraphicStyleData.xml",1,VCT_STYLE),

                        -- restore missing section
                        {   ["SKW"] = {"ElementData","GcNGuiElementData.xml",},   ["SECTION_ACTIVE"] = 2,   ["SECTION_UP"] = 1,   ["SEC_SAVE_TO"] = "SEC_BAR",  },
                        {   ["PKW"] = "Children",   ["SEC_ADD_NAMED"] = "SEC_BAR",                                                                              },

                        -- restore colour bar elements
                        {   ["SKW"] = {"Height","3",},    ["SECTION_ACTIVE"] = 1,     ["SECTION_UP"] = 1,   ["VCT"] = {{"IsHidden","False",},{"Height",55,},},  },
                        {   ["SKW"] = {"Height","3",},    ["SECTION_UP"] = 1,   ["VCT"] = {{"IsHidden","False",},{"Height",9,},{"AnchorPercent","True",},},     },
                        {   ["SKW"] = {"Height","5",},    ["SECTION_UP"] = 1,   ["VCT"] = {{"IsHidden","False",},},                                             },

                        -- restore shadow effect
                        {   ["SKW"] = SKW_COLOUR,       ["SECTION_ACTIVE"] = 3,     ["VCT"] = VCT_BLACK_SEMI,           },
                        {   ["SKW"] = SKW_GRADIENT,     ["SECTION_ACTIVE"] = 3,     ["VCT"] = VCT_BLACK_FULL,           },
                        {   ["SKW"] = SKW_GRAPHIC_ALL,  ["SECTION_ACTIVE"] = 3,     ["VCT"] = {{"Gradient","None",},},  },

                        SetMainTextLayout(),
                        SetSubTextLayout(),
                        AlignAllText(),
                        ChangeMainTextSize(26),
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------