----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "AcceptDeclineButtonsRestored"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "465"
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

COLOUR_GREY = {0.141,0.141,0.18,1}
COLOUR_WHITE = {1,1,1,1}
COLOUR_BLACK = {0,0,0,1}

STYLE_TRADE = {{"StrokeSize",0,},{"Gradient","None",},{"StrokeGradient","False",},}
ALL_TEXT_STYLE = {{"Default","TkNGuiTextStyleData.xml",},{"Highlight","TkNGuiTextStyleData.xml",},{"Active","TkNGuiTextStyleData.xml",},}

ALL_BAR_STYLE = {{"Default","TkNGuiGraphicStyleData.xml"},{"Highlight","TkNGuiGraphicStyleData.xml",},{"Active","TkNGuiGraphicStyleData.xml",},}
ALL_BAR_STYLE_COLOUR = {{"Default","TkNGuiGraphicStyleData.xml","Colour","Colour.xml",},{"Highlight","TkNGuiGraphicStyleData.xml","Colour","Colour.xml",},{"Active","TkNGuiGraphicStyleData.xml","Colour","Colour.xml",},}
ALL_BAR_STYLE_GRADIENT = {{"Default","TkNGuiGraphicStyleData.xml","GradientColour","Colour.xml",},{"Highlight","TkNGuiGraphicStyleData.xml","GradientColour","Colour.xml",},{"Active","TkNGuiGraphicStyleData.xml","GradientColour","Colour.xml",}}

--------------------------------------------------
-- functions to modify sections
--------------------------------------------------

function SetColour(section,rgba) return
{   ["ITF"] = "FORCE",    ["SKW"] = {section,"Colour.xml",},   ["SECTION_ACTIVE"] = {1,2,3,},   ["VCT"] = {{"R",rgba[1],},{"G",rgba[2],},{"B",rgba[3],},{"A",rgba[4],},},   }
end

function SetStyle(style,type,vct) return
{   ["SKW"] = {style,type,},    ["SECTION_ACTIVE"] = 1,   ["VCT"] = vct,  }
end

function SetMainTextLayout() return
{   ["SKW"] = {"ID","TEXT",},   ["SPECIAL_UP"] = 1,       ["VCT"] = {{"PositionX",10,},{"PositionY",7,},
    {"Width",94,},{"Height",0,},{"Vertical","Top",},{"Horizontal","Left",},{"AnchorPercent","False",},},    }
end

function SetSubTextLayout() return
{   ["SKW"] = {"ID","SUBTEXT",},    ["SPECIAL_UP"] = 1,   ["VCT"] = {{"PositionY",63,},},   }
end

function AlignAllText() return
{   ["SKW"] = ALL_TEXT_STYLE,       ["REPLACE_TYPE"] = "ALL",     ["VCT"] = {{"Horizontal","Left",},},  }
end

function ChangeMainTextSize(size) return
{   ["SKW"] = ALL_TEXT_STYLE,       ["SECTION_ACTIVE"] = 1,       ["VCT"] = {{"FontHeight",size,},},  }
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
                        SetColour("Colour",COLOUR_GREY),
                        SetColour("StrokeColour",COLOUR_WHITE),
                        SetColour("GradientColour",COLOUR_BLACK),
                        SetColour("StrokeGradientColour",COLOUR_WHITE),

                        SetStyle("Default","TkNGuiGraphicStyleData.xml",STYLE_TRADE),
                        SetStyle("Highlight","TkNGuiGraphicStyleData.xml",STYLE_TRADE),
                        SetStyle("Active","TkNGuiGraphicStyleData.xml",STYLE_TRADE),

                        -- restore colour bar elements
                        {   ["SKW"] = {{"ID","ACCEPT_GRADIENT",},{"ID","ACCEPT_BAR",},},    ["VCT"] = {{"IsHidden","False",},},   },
                        {   ["SKW"] = {"Height","9",},    ["SECTION_UP"] = 1,   ["VCT"] = {{"IsHidden","False",},},               },
                            
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
                        SetColour("Colour",COLOUR_GREY),
                        SetColour("StrokeColour",COLOUR_WHITE),
                        SetColour("GradientColour",COLOUR_BLACK),
                        SetColour("StrokeGradientColour",COLOUR_WHITE),

                        SetStyle("Default","TkNGuiGraphicStyleData.xml",STYLE_TRADE),
                        SetStyle("Highlight","TkNGuiGraphicStyleData.xml",STYLE_TRADE),
                        SetStyle("Active","TkNGuiGraphicStyleData.xml",STYLE_TRADE),

                        -- restore missing section
                        {   ["SKW"] = {"ElementData","GcNGuiElementData.xml",},   ["SECTION_ACTIVE"] = 2,   ["SECTION_UP"] = 1,   ["SEC_SAVE_TO"] = "SEC_BAR",  },
                        {   ["PKW"] = "Children",   ["SEC_ADD_NAMED"] = "SEC_BAR",    },

                        -- restore colour bar elements
                        {   ["SKW"] = {"Height","3",},    ["SECTION_ACTIVE"] = 1,     ["SECTION_UP"] = 1,   ["VCT"] = {{"IsHidden","False",},{"Height",55,},},  },
                        {   ["SKW"] = {"Height","3",},    ["SECTION_UP"] = 1,   ["VCT"] = {{"IsHidden","False",},{"Height",9,},{"AnchorPercent","True",},},     },
                        {   ["SKW"] = {"Height","5",},    ["SECTION_UP"] = 1,   ["VCT"] = {{"IsHidden","False",},},                                             },

                        -- restore shade effect
                        {   ["ITF"] = "FORCE",    ["SKW"] = ALL_BAR_STYLE_COLOUR,     ["SECTION_ACTIVE"] = 3,     ["VCT"] = {{"R",0,},{"G",0,},{"B",0,},{"A",0.2,},},   },
                        {   ["ITF"] = "FORCE",    ["SKW"] = ALL_BAR_STYLE_GRADIENT,   ["SECTION_ACTIVE"] = 3,     ["VCT"] = {{"R",0,},{"G",0,},{"B",0,},{"A",1,},},     },
                        {   ["SKW"] = ALL_BAR_STYLE,    ["SECTION_ACTIVE"] = 3,       ["VCT"] = {{"Gradient","None",},},                                                },

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