----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "FancyDiscoveryMessage"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "703"
METADATA_MOD_DESC       = ""



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- files modified by the mod
FILE_UI_HUD_MESSAGE =           "UI\HUD\HUDMESSAGE.MBIN"
FILE_UI_HUD_PLANETINFO =        "UI\HUD\HUDPLANETINFO.MBIN"

-- data for positions and formatting
TITLE_POSX = 49
VALUE_POSX = 51
LINE1_POSY = 38
LINE2_POSY = 40
LINE3_POSY = 42
LINE4_POSY = 44

VCT_MOVE =
{
    {"Position X",0,},
    {"Position Y",0,},
    {"Width",100,},
    {"Height",100,},
    {"Vertical","Top",},
    {"Horizontal","Left",},
    {"Width Percentage","true",},
    {"Height Percentage","true",},
}

VCT_TEXT_LEFT =
{
    {"Horizontal","Left",},
    {"Horizontal","Left",},
    {"Horizontal","Left",},
    {"Horizontal","Left",},
}

VCT_TEXT_CENTER =
{
    {"Horizontal","Center",},
    {"Horizontal","Center",},
    {"Horizontal","Center",},
    {"Horizontal","Center",},
}

VCT_TEXT_RIGHT =
{
    {"Horizontal","Right",},
    {"Horizontal","Right",},
    {"Horizontal","Right",},
    {"Horizontal","Right",},
}

VCT_TEXT_SHADOW = {{"A",1,},{"A",0.701,},{"A",1,},{"A",0,},}

VCT_TEXT_OUTLINE_R = {{"R",1,},{"R",0,},{"R",0,},{"R",0,},}
VCT_TEXT_OUTLINE_G = {{"G",1,},{"G",0,},{"G",0,},{"G",0,},}
VCT_TEXT_OUTLINE_B = {{"B",1,},{"B",0,},{"B",0,},{"B",0,},}

VCT_TEXT_FONT1 =
{
    {"Font Height",30,},
    {"Font Spacing",2,},
    {"Drop Shadow Offset",2,},
    {"Outline Size",2,},
    {"Font Index",1,},
    {"Has Drop Shadow","true",},
    {"Has Outline","true",},
    {"Is Paragraph","true",},
    {"Force Upper Case","true",},
}

VCT_TEXT_FONT0 =
{
    {"Width",500,},
    {"Font Height",20,},
    {"Font Spacing",2,},
    {"Drop Shadow Offset",2,},
    {"Outline Size",6,},
    {"Font Index",0,},
    {"Is Indented","true",},
    {"Has Drop Shadow","true",},
    {"Has Outline","true",},
    {"Is Paragraph","true",},
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
["NMS_VERSION"]		    = METADATA_NMS_VERSION,
["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

["MODIFICATIONS"] =
{
    {
        ["MBIN_CHANGE_TABLE"]   =
        {
            {
                --------------------------------------------------
                -- HUD message MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_UI_HUD_MESSAGE,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- grab template of the whole space POI message
                        ["SKW"] = {"ID","POI",},
                        ["SECTION_UP_SPECIAL"] = 2,
                        ["SEC_SAVE_TO"] = "SEC_MESSAGE",
                    },

                    {
                        -- remove old DISCOVERYTITLE message
                        ["SKW"] = {"ID","DISCOVERYTITLE",},
                        ["SECTION_UP_SPECIAL"] = 2,
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- change ID of the main node
                        ["SEC_EDIT"] = "SEC_MESSAGE",
                        ["VCT"] = {{"ID","DISCOVERYTITLE",},{"Is Hidden","false",},},
                    },

                    {
                        -- rename DESCRIPTION to SUBTITLE, increase the width
                        ["SEC_EDIT"] = "SEC_MESSAGE",
                        ["SKW"] = {"ID","DESCRIPTION",},
                        ["VCT"] = {{"ID","SUBTITLE",},{"Width",1000,},},
                    },

                    {
                        -- apply uppercase to TITLE
                        ["SEC_EDIT"] = "SEC_MESSAGE",
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = {{"Force Upper Case","true",},},
                    },

                    {
                        -- remove SUBHEADER (small white text on top)
                        ["SEC_EDIT"] = "SEC_MESSAGE",
                        ["SKW"] = {"ID","SUBHEADER",},
                        ["SECTION_UP_SPECIAL"] = 2,
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- rename TITLELAYER to empty node
                        ["SEC_EDIT"] = "SEC_MESSAGE",
                        ["SKW"] = {"ID","TITLELAYER",},
                        ["VCT"] = {{"ID","",},},
                    },

                    {
                        -- add the new message node after DEATHTITLE node
                        ["SKW"] = {"ID","DEATHTITLE",},
                        ["SECTION_UP_SPECIAL"] = 2,
                        ["ADD_OPTION"] = "ADDafterSECTION",
                        ["SEC_ADD_NAMED"] = "SEC_MESSAGE",
                    },

                    {
                        -- relocate the DISCOVERYINFO panel to top left
                        ["SKW"] = {"ID","DISCOVERYINFO",},
                        ["VCT"] = VCT_MOVE,
                    },
                },
            },

            {
                --------------------------------------------------
                -- HUD planet info MBIN
                --------------------------------------------------
                ["MBIN_FILE_SOURCE"] = FILE_UI_HUD_PLANETINFO,
                ["MXML_CHANGE_TABLE"] =
                {
                    {
                        -- remove background graphic
                        ["SKW"] = {"Image","/TEXTURES/UI/FRONTEND/COMPONENTS/NEWINFOBAR.DDS",},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["REMOVE"] = "SECTION",
                    },

                    {
                        -- move the main node to top left
                        ["VCT"] = VCT_MOVE,
                    },

                    {
                        -- move the main node to top left
                        ["PKW"] = "GcNGuiLayerData",
                        ["VCT"] = VCT_MOVE,
                    },

                    {
                        -- move individual ENTRYx nodes to top left
                        ["SKW"] =
                        {
                            {"ID","ENTRY1",},
                            {"ID","ENTRY2",},
                            {"ID","ENTRY3",},
                            {"ID","ENTRY4",},
                            {"ID","ENTRY5",},
                        },
                        ["VCT"] = VCT_MOVE,
                    },

                    {
                        -- remove TYPE_TITLE by pushing it out of bounds
                        -- game doesn't like it when you remove these sections entirely
                        ["SKW"] = {"ID","TYPE_TITLE",},
                        ["SECTION_UP_SPECIAL"] = 2,
                        ["VCT"] = {{"Position X",50000,},},
                    },

                    {
                        -- repeat for ENTRY1 title
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = 0,
                        ["SECTION_UP_SPECIAL"] = 2,
                        ["VCT"] = {{"Position X",50000,},},
                    },

                    --------------------------------------------------

                    {
                        -- move the ENTRY1 value to 50% in horizontal, 25% in vertical
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = 0,
                        ["VCT"] =
                        {
                            {"Position X",50,},
                            {"Position Y",24,},
                            {"Width",500,},
                            {"Height",0,},
                            {"AnchorPercent","true",},
                        },
                    },

                    {
                        -- apply text formatting for ENTRY1 value
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = 0,
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_FONT1,
                    },

                    {
                        -- align the text in center
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = 0,
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_CENTER,
                    },

                    --------------------------------------------------
                    -- ENTRY2: position around 50% in horizontal, 38% in vertical

                    {
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = 1,
                        ["VCT"] =
                        {
                            {"Position X",TITLE_POSX,},
                            {"Position Y",LINE1_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    {
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = 1,
                        ["VCT"] =
                        {
                            {"Position X",VALUE_POSX,},
                            {"Position Y",LINE1_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    --------------------------------------------------
                    -- ENTRY3: position around 50% in horizontal, 40% in vertical

                    {
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = 2,
                        ["VCT"] =
                        {
                            {"Position X",TITLE_POSX,},
                            {"Position Y",LINE2_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    {
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = 2,
                        ["VCT"] =
                        {
                            {"Position X",VALUE_POSX,},
                            {"Position Y",LINE2_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    --------------------------------------------------
                    -- ENTRY4: position around 50% in horizontal, 42% in vertical
                    
                    {
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = 3,
                        ["VCT"] =
                        {
                            {"Position X",TITLE_POSX,},
                            {"Position Y",LINE3_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    {
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = 3,
                        ["VCT"] =
                        {
                            {"Position X",VALUE_POSX,},
                            {"Position Y",LINE3_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    --------------------------------------------------
                    -- ENTRY5: position around 50% in horizontal, 44% in vertical

                    {
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = 4,
                        ["VCT"] =
                        {
                            {"Position X",TITLE_POSX,},
                            {"Position Y",LINE4_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    {
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = 4,
                        ["VCT"] =
                        {
                            {"Position X",VALUE_POSX,},
                            {"Position Y",LINE4_POSY,},
                            {"AnchorPercent","true",},
                        },
                    },

                    --------------------------------------------------

                    {
                        -- apply formatting for ENTRY titles
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_FONT0,
                    },

                    {
                        -- align ENTRY titles to right
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_RIGHT,
                    },

                    {
                        -- apply shadow colour
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_SHADOW,
                    },

                    {
                        -- apply outline colour
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_OUTLINE_R,
                    },

                    {
                        -- apply outline colour
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_OUTLINE_G,
                    },

                    {
                        -- apply outline colour
                        ["SKW"] = {"ID","TITLE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_OUTLINE_B,
                    },

                    --------------------------------------------------

                    {
                        -- apply formatting for ENTRY values
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_FONT0,
                    },

                    {
                        -- align ENTRY values to left
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = {1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_LEFT,
                    },

                    {
                        -- apply shadow colour
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = {0,1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_SHADOW,
                    },

                    {
                        -- apply outline colour
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = {0,1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_OUTLINE_R,
                    },

                    {
                        -- apply outline colour
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = {0,1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_OUTLINE_G,
                    },

                    {
                        -- apply outline colour
                        ["SKW"] = {"ID","VALUE",},
                        ["SECTION_ACTIVE"] = {0,1,2,3,4,},
                        ["SECTION_UP_SPECIAL"] = 1,
                        ["VCT"] = VCT_TEXT_OUTLINE_B,
                    },

                },
            },
        
        }
    }
},
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------