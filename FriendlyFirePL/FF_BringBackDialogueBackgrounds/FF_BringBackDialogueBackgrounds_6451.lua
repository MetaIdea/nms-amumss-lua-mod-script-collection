----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "BringBackDialogueBackgrounds"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "6451"
METADATA_MOD_DESC       = "This mod restores some blue and black backgrounds displayed during dialogue interactions"



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_UI_DIALOGUE_PAGE =         "UI\INTERACTIONDIALOGPAGE.MBIN"

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
                    --------------------------------------------------
                    -- dialogue interaction UI MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_UI_DIALOGUE_PAGE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- resize the alien speech background (blue)
                            ["SKW"] = {"Image","/TEXTURES/UI/FRONTEND/COMPONENTS/DIALOG.TALK.DDS",},
                            ["SECTION_ACTIVE"] = {0,1,},
                            ["VCT"] = {{"Width",1080,},},
                        },

                        {
                            -- restore the coloured border on the alien speech background (blue)
                            ["SKW"] = {"Image","/TEXTURES/UI/FRONTEND/COMPONENTS/DIALOG.TALK.DDS",},
                            ["SECTION_ACTIVE"] = {0,1,},
                            ["VCT"] = {{"Stroke Size",1,},{"Stroke Size",1,},{"Stroke Size",1,},},
                        },

                        {
                            -- resize and reposition the player speech background (black)
                            ["SKW"] = {"Image","/TEXTURES/UI/FRONTEND/COMPONENTS/DIALOG.DESCRIPT.DDS",},
                            ["SECTION_ACTIVE"] = {0,1,},
                            ["VCT"] = {{"Width",1080,},{"Width Percentage","false",},},
                        },

                        {
                            -- make the border for player speech background (black) more visible
                            ["SKW"] = {"Image","/TEXTURES/UI/FRONTEND/COMPONENTS/DIALOG.DESCRIPT.DDS",},
                            ["SECTION_ACTIVE"] = {0,1,},
                            ["VCT"] =
                            {
                                {"A",1,},{"A",1,},{"A",0.3,},{"A",1,},{"A",1,},
                                {"A",1,},{"A",1,},{"A",0.3,},{"A",1,},{"A",1,},
                                {"A",1,},{"A",1,},{"A",0.3,},{"A",1,},{"A",1,},
                            },
                        },

                        {
                            -- restore the coloured border on the player speech background (black)
                            ["SKW"] = {"Image","/TEXTURES/UI/FRONTEND/COMPONENTS/DIALOG.DESCRIPT.DDS",},
                            ["SECTION_ACTIVE"] = {0,1,},
                            ["VCT"] = {{"Stroke Size",1,},{"Stroke Size",1,},{"Stroke Size",1,},},
                        },

                        {
                            -- change the colour of title label background to semi-transparent black
                            ["SKW"] = {"Corner Radius","17.000000",},
                            ["SECTION_ACTIVE"] = {0,1,2,3,4,5,},
                            ["PKW"] = "Colour",
                            ["VCT"] = {{"R",0,},{"G",0,},{"B",0,},{"A",0.5,},},
                        },

                        {
                            -- reposition the title label background above the speech background
                            ["SKW"] = {{"ID","BIG_TITLE",},{"ID","BIG_TITLE_RES",},},
                            ["VCT"] = {{"Position X",48.5,},{"Position Y",40,},},
                        },

                        {
                            -- remove formatting from title label
                            ["SKW"] = {"ID","MAINTEXT",},
                            ["SECTION_ACTIVE"] = {0,1,},
                            ["SECTION_UP_SPECIAL"] = 1,
                            ["VCT"] = {{"BlockSpecialStyles","true",},},
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