----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "METADATA_MISC"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for changes to emote menu and custom tech banner. Modifies various files in METADATA directory."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_METADATA_EMOTEMENU = "METADATA\\UI\\EMOTEMENU.MBIN"
FILE_METADATA_DEFAULTREALITY = "METADATA\\REALITY\\DEFAULTREALITY.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
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
                    -- Quick Menu emote list
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_EMOTEMENU,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add menu entry for debug emote 1
                        {   ["SKW"] = {"Title","EMOTE_WAVE",},    ["SEC_SAVE_TO"] = "SEC_EMOTE_ICON",                                                                                     },
                        {   ["SEC_EDIT"] = "SEC_EMOTE_ICON",      ["VCT"] = {{"Title","TEXT_EMOTE_PLATING",},{"ChatText","",},{"ChatUsesPrefix","False",},{"EmoteID","EMOTE_PLATING",},
                                                                  {"AnimationName","ANIM_PLATING",},{"Filename","TEXTURES/ITEMS/PLATING.DDS",},},                                         },
                        {   ["PKW"] = "Emotes",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_EMOTE_ICON",                                                               },
                          
                        -- add menu entry for debug emote 2
                        {   ["SEC_EDIT"] = "SEC_EMOTE_ICON",      ["VCT"] = {{"Title","TEXT_EMOTE_FRAGMENT",},{"EmoteID","EMOTE_FRAGMENT",},{"AnimationName","ANIM_FRAGMENT",},
                                                                  {"Filename","TEXTURES/ITEMS/FRAGMENT.DDS",},},                                                                          },
                        {   ["PKW"] = "Emotes",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_EMOTE_ICON",                                                               },

                        -- add menu entry for debug emote 3
                        {   ["SEC_EDIT"] = "SEC_EMOTE_ICON",      ["VCT"] = {{"Title","TEXT_EMOTE_CIRCUIT",},{"EmoteID","EMOTE_CIRCUIT",},{"AnimationName","ANIM_CIRCUIT",},
                                                                  {"Filename","TEXTURES/ITEMS/CIRCUIT.DDS",},},                                                                           },
                        {   ["PKW"] = "Emotes",   ["ADD_OPTION"] = "ADDendSECTION",   ["SEC_ADD_NAMED"] = "SEC_EMOTE_ICON",                                                               },
                    },
                },

                {
                    --------------------------------------------------
                    -- default reality MBIN
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_DEFAULTREALITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- adding new banner image
                        {   ["SKW"] = {"ID","STATION_DETAIL",},   ["SEC_SAVE_TO"] = "SEC_BANNER",                                                 },
                        {   ["SEC_EDIT"] = "SEC_BANNER",          ["VCT"] = {{"ID","BANNER_TECH",},{"Filename","TEXTURES/BANNER_TECH.DDS",},},    },
                        {   ["PKW"] = "MissionDetailIcons",       ["SEC_ADD_NAMED"] = "SEC_BANNER",                                               },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------