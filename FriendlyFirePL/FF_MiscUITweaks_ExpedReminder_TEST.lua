----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscUITweaks_ExpedReminder"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "TEST"
METADATA_MOD_DESC       = ""



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_UI_SAVE_SELECT = "UI\BOOT\ROOTMENU2.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_UI_SAVE_SELECT,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        
                        {
                            -- add a transparent shade to reminder panel
                            ["SKW"] = {"ID","EXPEDITION",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VCT"] = {{"A",0.2,},},
                        },
                        

                        {
                            -- move and transform the panel
                            ["SKW"] = {"ID","EXPEDITION",},
                            ["VCT"] = 
                            {
                                {"PositionX",50,},                      -- anchor pos X: 50% of container width
                                {"PositionY",70,},                      -- anchor pos Y: 70% of container height
                                {"Width",820,},                         -- set width and height (what about other languages?)
                                {"Height",60,},                         
                                {"Vertical","Top",},                    -- panel relation to anchor: align top center
                                {"Horizontal","Center",},
                            },
                        },

                        {
                            -- move and transform the actual text
                            ["SKW"] = {"ID","TEXT",},
                            ["VCT"] = 
                            {
                                {"PositionX",50,},                      -- anchor pos X: 50% of container width            
                                {"PositionY",50,},                      -- anchor pos Y: 50% of container height
                                {"Vertical","Middle",},                 -- text relation to anchor: align middle center
                                {"Horizontal","Center",},
                                {"WidthPercentage","True",},            -- force the positions to be expressed as % of container data
                                {"HeightPercentage","True",},
                            },
                        },

                        {
                            -- modify the text - set yellow colour 
                            -- (the same yellow shade as text elements in save data list)
                            ["SKW"] = {"ID","TEXT",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VCT"] = 
                            {
                                {"R","0.97",},
                                {"G","0.69",},
                                {"B","0.038",},
                            },
                        },

                        {   
                            -- modify text: increase font size, disable scrolling on hover
                            ["SKW"] = {"ID","TEXT",},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["REPLACE_TYPE"] = "ALLINSECTION",
                            ["VCT"] = 
                            {
                                {"FontHeight",36,},
                                {"AllowScroll","False",},
                            },
                        },

                        {
                            -- remove the yellow dot from reminder panel
                            ["SKW"] = {"Image","TEXTURES/UI/FRONTEND/COMPONENTS/NEWEXPEDITION.DDS",},
                            ["REMOVE"] = "SECTION",
                        },
                    }
                },

               
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------