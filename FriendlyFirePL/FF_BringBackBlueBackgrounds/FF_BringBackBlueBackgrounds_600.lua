----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "BringBackBlueBackgrounds"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL, Babscoole"
METADATA_NMS_VERSION    = "600"
METADATA_MOD_DESC       = "This mod restores some blue backgrounds from the pre-Waypoint releases of the game. Modifies various files in UI directory and repalces a couple of textures."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------
FILE_UI_CATEGORY =      "UI\COMPONENTS\CATEGORY.MBIN"
FILE_UI_MISSIONBAR =    "UI\MISSIONS\MISSIONBAR.MBIN"
FILE_UI_MISC_PAGE =     "UI\PCMISCPAGENEW.MBIN"
FILE_UI_ONELINEBUTTON = "UI\BOOT\ONELINEBUTTON.MBIN"

--------------------------------------------------
-- new colour data
--------------------------------------------------

-- grey colour used for highlights in mission log left pane
COLOUR_GREY = {{"R","0.154",},{"G","0.162",},{"B","0.267",},{"A","0.3",},}

-- yellow color used for buttons in options menu
COLOUR_YELLOW_BUTTON = {{"R","0.858",},{"G","0.694",},{"B","0.113",},}

-- other yellow color used for displaying last save location in save select screen
COLOUR_YELLOW_SAVE = {{"R","0.97",},{"G","0.69",},{"B","0.038",},}

-- white color used to display extra labels in save select screen
COLOUR_WHITE_SAVE = {{"R","0.914",},{"G","0.863",},{"B","0.804",},}

--------------------------------------------------
-- change table shared elements
--------------------------------------------------

CHANGE_COLOUR = 
{
    ["SKW"] = {"Highlight","TkNGuiGraphicStyleData",},
    ["PKW"] = "Colour",
    ["SECTION_ACTIVE"] = 2,
    ["VCT"] = COLOUR_GREY,
}

CHANGE_GRADIENT =
{
    ["SKW"] = {"Highlight","TkNGuiGraphicStyleData",},
    ["PKW"] = "Gradient Colour",
    ["SECTION_ACTIVE"] = 2,
    ["VCT"] = COLOUR_GREY,
}

TABLE_CHANGE = {CHANGE_COLOUR,CHANGE_GRADIENT,}



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
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_CATEGORY,
                    ["MXML_CHANGE_TABLE"] = TABLE_CHANGE,
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_MISSIONBAR,
                    ["MXML_CHANGE_TABLE"] = TABLE_CHANGE,
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_MISC_PAGE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"R","0.549019635",},
                            ["VCT"] = COLOUR_YELLOW_BUTTON,
                            ["REPLACE_TYPE"] = "ALL", 
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_ONELINEBUTTON,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"R","0.968627453",},
                            ["VCT"] = COLOUR_WHITE_SAVE,
                            ["REPLACE_TYPE"] = "ALL", 
                        },

                        {
                            ["SKW"] = {"R","0.737254918",},
                            ["VCT"] = COLOUR_YELLOW_SAVE,
                            ["REPLACE_TYPE"] = "ALL", 
                        },
                    },
                },
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------