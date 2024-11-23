----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "BetterExoskiffCustomisation"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "512"
METADATA_MOD_DESC       = "This mod allows players to further customise the Exo-skiff fishing platform by allowing them to pick colors for center screen and sail."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by the mod
--------------------------------------------------

FILE_MODELS_EXOSKIFF_CUSTOMISATION =    "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\TECH\\PARTS\\SKIFFCUSTOMISATIONINTERACTION\\ENTITIES\\CUSTOMISATION.ENTITY.MBIN"
FILE_METADATA_CUSTOM_UIDATA =           "METADATA\\UI\\CHARACTERCUSTOMISATIONUIDATA.MBIN"

--------------------------------------------------
-- files for the proc coloured screen
--------------------------------------------------

FILE_VANILLA_PROC_TEXTURE =        "TEXTURES\\COMMON\\ROBOTS\\SHARED\\DETAILS.TEXTURE.MBIN"
FILE_TEXTURE_HOLOSCROLL =          "TEXTURES\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\SHARED\\BUILDABLEBUILDINGS\\HOLOGRAMSCROLLS.TEXTURE.DDS"



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

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
                    --------------------------------------------------
                    -- character customisation UI page MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CUSTOM_UIDATA,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- force show all colour options
                            ["SKW"] = {"Skiff","GcCustomisationUI.xml",},
                            ["VCT"] = {{"ForceShowAllColourOptions","True",},},
                        },

                        {   
                            -- get template for tertiary colour picker for Sail Primary
                            ["SKW"] = {"DescriptorOption","REG_HEAD_SAIL","Title","CUSTOMISE_TERTIARY",},
                            ["SEC_SAVE_TO"] = "SEC_COLOUR_TERTIARY",
                        },

                        {
                            -- add the colour picker to skiff customisation
                            ["SKW"] = {"Skiff","GcCustomisationUI.xml","Title","CUSTOMISE_PRIMARY",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_COLOUR_TERTIARY",
                        },

                        {
                            -- get template for secondary colour picker for Paint Alternative1
                            ["SKW"] = {"Vehicle_Mech","GcCustomisationUI.xml","Title","CUSTOMISE_SECONDARY",},
                            ["SEC_SAVE_TO"] = "SEC_COLOUR_SECONDARY",
                        },

                        {
                            -- add the colour picker to skiff customisation
                            ["SKW"] = {"Skiff","GcCustomisationUI.xml","Title","CUSTOMISE_PRIMARY",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_COLOUR_SECONDARY",
                        },
                    }
                },

                {
                    --------------------------------------------------
                    -- create new texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = {{   FILE_VANILLA_PROC_TEXTURE,  FILE_TEXTURE_HOLOSCROLL,    "REMOVE",   },},
                },

                {
                    --------------------------------------------------
                    -- holo scroll texture MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_TEXTURE_HOLOSCROLL,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- set the Paint Alternative1 colour palette
                            ["SKW"] = {"Name","BASE","Palette","TkPaletteTexture.xml",},
                            ["REPLACE_TYPE"] = "ONCEINSIDE",
                            ["VCT"] = {{"Palette","Paint",},{"ColourAlt","Alternative1",},},
                        },

                        {
                            -- point material to holo scroll texture
                            ["SKW"] = {"Name","BASE",},
                            ["VCT"] = 
                            {
                                {"Diffuse","TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/HOLOGRAMSCROLLS.DDS",},
                                {"Normal","",},
                                {"Mask","",},
                            },
                        },
                    },
                },

                {
                    --------------------------------------------------
                    -- exoskiff customisation MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_EXOSKIFF_CUSTOMISATION,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- change the position and orientation of camera on interaction
                            -- disable depth of field blur to better see the sail
                            ["SKW"] = {"Template","GcInteractionComponentData.xml",},
                            ["VCT"] =
                            {
                                {"Distance",20,},
                                {"x",5,},
                                {"y",1.5,},
                                {"z",0,},
                                {"Roll",0,},
                                {"Pitch",10,},
                                {"Rotate",150,},
                                {"LightPitch",10,},
                                {"LightRotate",150,},
                                {"IsEnabled","False",},
                            },
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