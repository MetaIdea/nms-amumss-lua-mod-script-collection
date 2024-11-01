----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ProjectApollo"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "REALITY_DIALOGUE"
METADATA_NMS_VERSION    = "DEV8"
METADATA_MOD_DESC       = "Project Apollo: Lost in Time. Module for misc. dialogue functionality. Modifies METADATA\\REALITY\\TABLES\\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_PUZZLETABLE = "METADATA\\REALITY\\TABLES\\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PUZZLETABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        -- Hesperus dialogue: exchanging temporal memory
                        {   ["SKW"] = {"Id","%?EXOTIC5C","Name","ALL_REQUEST_LEAVE",},   ["SEC_SAVE_TO"] = "SEC_PUZZLE_MEMORY",                                                     },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_MEMORY",   ["VCT"] = {{"Name","TEXT_DIALOGUE_MEMORY",},{"Text","TEXT_REACTION_MEMORY",},{"IsAlien","True",},
                                                                  {"Cost","C_MEMORY",},{"Value","R_MEMORY",},{"ReseedInteractionOnUse","True",},{"SelectedOnBackOut","False",},},   },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_MEMORY",   ["SKW"] = {"Mood","GcAlienMood.xml",},     ["LINE_OFFSET"] = 1,    ["VCT"] = {{"Mood","Positive",},},             },
                        {   ["SKW"] = {"Id","EXOTIC5_WAIT",},     ["PKW"] = "Options",    ["SEC_ADD_NAMED"] = "SEC_PUZZLE_MEMORY",                                                  },
                          
                        -- Hesperus dialogue: open research tree + debug reward scanner tech silent
                        {   ["SKW"] = {"Id","%?EXOTIC5C","Name","ALL_REQUEST_LEAVE",},   ["SEC_SAVE_TO"] = "SEC_PUZZLE_TREE",                                                                           }, 
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_TREE",   ["VCT"] = {{"Name","TEXT_DIALOGUE_RESEARCH",},{"Value","R_SHIPTREE",},{"SelectedOnBackOut","False",},},                                 },   
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_TREE",   ["PKW"] = "Rewards",    ["ADD"] = [[<Property value="NMSString0x10.xml"><Property name="Value" value="RD_BLUEPRINT" /></Property>]],    },
                        {   ["SKW"] = {"Id","EXOTIC5_WAIT",},   ["PKW"] = "Options",    ["SEC_ADD_NAMED"] = "SEC_PUZZLE_TREE",                                                                          },

                        -- plaque dialogue: offering the lexicon item
                        {   ["SKW"] = {"Name","UI_RUINS_SEEK_TREASURE",},   ["SEC_SAVE_TO"] = "SEC_PUZZLE_PLAQUE",                                                                        },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_PLAQUE",   ["VCT"] = {{"Name","ALL_REQUEST_STD_LOW",},{"Cost","C_DICT",},{"Value","R_DICT",},},                                    },
                        {   ["SEC_EDIT"] = "SEC_PUZZLE_PLAQUE",   ["SKW"] = {"Mood","GcAlienMood.xml",},    ["LINE_OFFSET"] = 1,    ["VCT"] = {{"Mood","Positive",},},                    },
                        {   ["SKW"] = {"Name","UI_RUINS_SEEK_TREASURE",},   ["REPLACE_TYPE"] = "ALL",   ["ADD_OPTION"] = "ADDafterSECTION",   ["SEC_ADD_NAMED"] = "SEC_PUZZLE_PLAQUE",    },
                    },
                }
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------