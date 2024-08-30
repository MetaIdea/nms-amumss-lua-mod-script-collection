----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "METADATA_STATS"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for custom player stat and titles. Modifies files in METADATA directory."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_GAMESTATE_STATSTABLE = "METADATA\\GAMESTATE\\STATS\\STATDEFINITIONSTABLE.MBIN"
FILE_GAMESTATE_PLAYERRTITLES = "METADATA\\GAMESTATE\\PLAYERDATA\\PLAYERTITLEDATA.MBIN"

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
                    -- player stats table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_STATSTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- add new stat to track: number of starships interacted with from scanner mission
                        {   ["SKW"] = {"Id","POLO_PROGRESS",},      ["SEC_SAVE_TO"] = "SEC_STAT_TOKEN",         },
                        {   ["SEC_EDIT"] = "SEC_STAT_TOKEN",        ["VCT"] = {{"Id","APOLLO_TOKENS",},},       },
                        {   ["PKW"] = "StatDefinitionTable",        ["SEC_ADD_NAMED"] = "SEC_STAT_TOKEN",       },
                    },
                },

                {
                    --------------------------------------------------
                    -- player titles table
                    --------------------------------------------------
                    ["MBIN_FILE_SOURCE"] = FILE_GAMESTATE_PLAYERRTITLES,
                    ["EXML_CHANGE_TABLE"] =
                    {   
                        -- add the new player titles
                        {   ["SKW"] = {"ID","T_DEFAULT"},   ["SEC_SAVE_TO"] = "SEC_TITLE",                                                                                              },
                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME5",},{"Title","TEXT_TITLE_FORMAT_5",},{"UnlockDescription","TEXT_TITLE_UNLOCK",},
                                                            {"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_5",},{"UnlockedByStat","APOLLO_TOKENS",},{"UnlockedByStatValue",30,},},     },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                            },
                                                                                                
                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME4",},{"Title","TEXT_TITLE_FORMAT_4",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_4",},{"UnlockedByStatValue",20,},},   },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },

                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME3",},{"Title","TEXT_TITLE_FORMAT_3",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_3",},{"UnlockedByStatValue",15,},},   },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },

                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME2",},{"Title","TEXT_TITLE_FORMAT_2",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_2",},{"UnlockedByStatValue",10,},},   },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },

                        {   ["SEC_EDIT"] = "SEC_TITLE",     ["VCT"] = {{"ID","T_TIME1",},{"Title","TEXT_TITLE_FORMAT_1",},{"AlreadyUnlockedDescription","TEXT_TITLE_OWNED_1",},{"UnlockedByStatValue",5,},},    },
                        {   ["PKW"] = "Titles",             ["SEC_ADD_NAMED"] = "SEC_TITLE",                                                                                                                    },
                    },
                },
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------