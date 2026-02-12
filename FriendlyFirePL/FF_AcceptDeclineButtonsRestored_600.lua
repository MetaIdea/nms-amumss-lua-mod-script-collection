----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "AcceptDeclineButtonsRestored"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
METADATA_MOD_DESC       = "This mod aims to restore the design of the Accept / Decline buttons found in compare / trade menus to the versions before Orbital update"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

FILE_UI_BUTTON_ACCEPT = "UI\COMPONENTS\BUTTONACCEPT.MBIN"
FILE_UI_BUTTON_DECLINE = "UI\COMPONENTS\BUTTONDECLINE.MBIN"

--------------------------------------------------
-- parameters for funtions
--------------------------------------------------

VCT_WHITE = {{"R",1,},{"G",1,},{"B",1,},{"A",1,},}
VCT_GREY = {{"R",0.141,},{"G",0.141,},{"B",0.18,},{"A",1,},}
VCT_BLACK_FULL = {{"R",0,},{"G",0,},{"B",0,},{"A",1,},}
VCT_BLACK_SEMI = {{"R",0,},{"G",0,},{"B",0,},{"A",0.2,},}

VCT_STYLE = {{"Stroke Size",0,},{"Gradient","None",},{"Stroke Gradient","false",},}

SKW_TEXT_STYLES = {{"Default","TkNGuiTextStyleData",},{"Highlight","TkNGuiTextStyleData",},{"Active","TkNGuiTextStyleData",},}
SKW_GRAPHIC_STYLES = {{"Default","TkNGuiGraphicStyleData"},{"Highlight","TkNGuiGraphicStyleData",},{"Active","TkNGuiGraphicStyleData",},}



--------------------------------------------------
-- functions to modify sections
--------------------------------------------------

function SetColour(colour,section,vct) return
{   ["PKW"] = colour,   ["SECTION_ACTIVE"] = section,   ["VCT"] = vct,   }
end

function SetStyle(style,section,vct) return
{   ["SKW"] = {style,"TkNGuiGraphicStyleData",},    ["SECTION_ACTIVE"] = section,   ["VCT"] = vct,  }
end

function SetMainTextLayout() return
{   ["SKW"] = {"ID","TEXT",},   ["SECTION_UP_SPECIAL"] = 1,     ["VCT"] = {{"Position X",8,},{"Position Y",6,},
    {"Width",94,},{"Height",0,},{"Vertical","Top",},{"Horizontal","Left",},{"AnchorPercent","false",},},    }
end

function SetSubTextLayout() return
{   ["SKW"] = {"ID","SUBTEXT",},    ["SECTION_UP_SPECIAL"] = 1,     ["VCT"] = {{"Position Y",63,},},   }
end

function AlignAllText() return
{   ["SKW"] = SKW_TEXT_STYLES,      ["REPLACE_TYPE"] = "ALL",     ["VCT"] = {{"Horizontal","Left",},},  }
end

function ChangeMainTextSize(size) return
{   ["SKW"] = SKW_TEXT_STYLES,      ["SECTION_ACTIVE"] = 1,       ["VCT"] = {{"Font Height",size,},},  }
end



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
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
                    ----------------------------------------------------------------------------------------------------
                    -- accept button MBIN
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_BUTTON_ACCEPT,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- restore button background
                        SetColour("Colour",{3,4,5},VCT_GREY),
                        SetColour("Stroke Colour",{3,4,5},VCT_WHITE),
                        SetColour("Gradient Colour",{3,4,5},VCT_BLACK_FULL),
                        SetColour("Stroke Gradient Colour",{3,4,5},VCT_WHITE),

                        -- change style for active button
                        SetStyle("Default",1,VCT_STYLE),
                        SetStyle("Highlight",1,VCT_STYLE),
                        SetStyle("Active",1,VCT_STYLE),

                        --------------------------------------------------
                        -- restore gradient bar
                        --------------------------------------------------

                        {
                            ["SKW"] = {"Children","GcNGuiLayerData",},
                            ["SECTION_ACTIVE"] = 0,
                            ["SEC_SAVE_TO"] = "SEC_GRADIENT",
                        },
                        
                        {
                            ["SEC_EDIT"] = "SEC_GRADIENT",
                            ["VCT"] = {{"ID","GRADIENT",},{"Height",55,},{"AnchorPercent","false"},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_GRADIENT",
                            ["PKW"] = "Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = {{"R",0.055,},{"G",0.863,},{"B",0.341,},{"A",0.7,},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_GRADIENT",
                            ["PKW"] = "Stroke Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_WHITE,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_GRADIENT",
                            ["PKW"] = "Gradient Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = {{"R",0.055,},{"G",0.863,},{"B",0.341,},{"A",0.4,},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_GRADIENT",
                            ["PKW"] = "Stroke Gradient Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_WHITE,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_GRADIENT",
                            ["SKW"] = SKW_GRAPHIC_STYLES,
                            ["VCT"] = VCT_STYLE,
                        },

                        {
                            ["SKW"] = {"Children","GcNGuiLayerData",},
                            ["SECTION_ACTIVE"] = 0,
                            ["REPLACE_TYPE"] = "onceINSIDE",
                            ["PKW"] = "Children",
                            ["CREATE_HOS"] = "TRUE",
                        },

                        {
                            ["SKW"] = {"ID","ENABLED",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PKW"] = "Children",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_GRADIENT",
                        },

                        --------------------------------------------------
                        -- restore shadow effect
                        --------------------------------------------------
                        
                        {
                            ["SKW"] = {"Children","GcNGuiLayerData",},
                            ["SECTION_ACTIVE"] = 0,
                            ["SEC_SAVE_TO"] = "SEC_SHADOW",
                        },

                        {
                            ["SEC_EDIT"] = "SEC_SHADOW",
                            ["VCT"] = {{"ID","SHADOW",},{"Height",9,},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_SHADOW",
                            ["PKW"] = "Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_BLACK_SEMI,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_SHADOW",
                            ["PKW"] = "Stroke Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_WHITE,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_SHADOW",
                            ["PKW"] = "Gradient Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_BLACK_FULL,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_SHADOW",
                            ["PKW"] = "Stroke Gradient Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_WHITE,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_SHADOW",
                            ["SKW"] = SKW_GRAPHIC_STYLES,
                            ["VCT"] = VCT_STYLE,
                        },

                        {
                            ["SKW"] = {"ID","ENABLED",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PKW"] = "Children",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_SHADOW",
                        },

                        --------------------------------------------------
                        -- restore thin top bar
                        --------------------------------------------------

                        {
                            ["SKW"] = {"Children","GcNGuiLayerData",},
                            ["SECTION_ACTIVE"] = 0,
                            ["SEC_SAVE_TO"] = "SEC_TOPBAR",
                        },

                        {
                            ["SEC_EDIT"] = "SEC_TOPBAR",
                            ["VCT"] = {{"ID","TOPBAR",},{"Height",5,},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_TOPBAR",
                            ["PKW"] = "Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = {{"R",0.056,},{"G",0.863,},{"B",0.343,},{"A",1,},},
                        },

                        {
                            ["SEC_EDIT"] = "SEC_TOPBAR",
                            ["PKW"] = "Stroke Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_WHITE,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_TOPBAR",
                            ["PKW"] = "Gradient Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_BLACK_FULL,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_TOPBAR",
                            ["PKW"] = "Stroke Gradient Colour",
                            ["SECTION_ACTIVE"] = {0,1,2},
                            ["VCT"] = VCT_WHITE,
                        },

                        {
                            ["SEC_EDIT"] = "SEC_TOPBAR",
                            ["SKW"] = SKW_GRAPHIC_STYLES,
                            ["VCT"] = VCT_STYLE,
                        },

                        {
                            ["SKW"] = {"ID","ENABLED",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["PKW"] = "Children",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_TOPBAR",
                        },
                    
                        -- rework text elements
                        SetMainTextLayout(),
                        SetSubTextLayout(),
                        AlignAllText(),
                        ChangeMainTextSize(26),
                    },
                },

                {
                    ----------------------------------------------------------------------------------------------------
                    -- decline button MBIN
                    ----------------------------------------------------------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_BUTTON_DECLINE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        -- restore button background
                        SetColour("Colour",{0,1,2},VCT_GREY),
                        SetColour("Stroke Colour",{0,1,2},VCT_WHITE),
                        SetColour("Gradient Colour",{0,1,2},VCT_BLACK_FULL),
                        SetColour("Stroke Gradient Colour",{0,1,2},VCT_WHITE),

                        SetStyle("Default",0,VCT_STYLE),
                        SetStyle("Highlight",0,VCT_STYLE),
                        SetStyle("Active",0,VCT_STYLE),

                        --------------------------------------------------
                        -- restore missing section
                        --------------------------------------------------

                        {
                            ["SKW"] = {"Children","GcNGuiLayerData",},
                            ["SECTION_ACTIVE"] = 0,
                            ["SEC_SAVE_TO"] = "SEC_BAR",
                        },

                        {   
                            ["SEC_EDIT"] = "SEC_BAR",
                            ["VCT"] = {{"ID","GRADIENT",},},
                        },

                        {
                            ["PKW"] = "Children",
                            ["SEC_ADD_NAMED"] = "SEC_BAR",
                        },

                        --------------------------------------------------
                        -- restore colour bar elements
                        --------------------------------------------------

                        {
                            ["SKW"] = {"ID","GRADIENT",},
                            ["VCT"] = {{"Is Hidden","false",},{"Height",55,},},
                        },

                        {
                            ["SKW"] = {"Height","3.000000",},
                            ["SECTION_UP"] = 1,
                            ["VCT"] = {{"ID","SHADOW",},{"Is Hidden","false",},{"Height",9,},{"AnchorPercent","true",},},
                        },

                        {
                            ["SKW"] = {"Height","5.000000",},
                            ["SECTION_UP"] = 1,
                            ["VCT"] = {{"ID","TOPBAR",},{"Is Hidden","false",},},
                        },

                        --------------------------------------------------
                        -- restore shadow effect
                        --------------------------------------------------

                        {
                            ["SKW"] = SKW_GRAPHIC_STYLES,
                            ["PKW"] = "Colour",
                            ["SECTION_ACTIVE"] = 2,
                            ["VCT"] = VCT_BLACK_SEMI,
                        },

                        {
                            ["SKW"] = SKW_GRAPHIC_STYLES,
                            ["PKW"] = "Gradient Colour",
                            ["SECTION_ACTIVE"] = 2,
                            ["VCT"] = VCT_BLACK_SEMI,
                        },

                        {
                            ["SKW"] = SKW_GRAPHIC_STYLES,
                            ["SECTION_ACTIVE"] = 3,
                            ["VCT"] = {{"Gradient","None",},},
                        },

                        -- rework text elements
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