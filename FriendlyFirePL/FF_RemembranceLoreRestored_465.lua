----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "RemembranceLoreRestored"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "465"
METADATA_MOD_DESC       = "This mod restores the Remembrance lore entries to the Catalogue and Guide - Collected Knowledge section"



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_METADATA_STORIESTABLE = "METADATA\\REALITY\\TABLES\\STORIESTABLE.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_STORIESTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- copy the New Beginnings story page from Journey Records section
                            ["SKW"] = {"InteractionType","Epilogue",},
                            ["SECTION_UP"] = 1,
                            ["SEC_SAVE_TO"] = "SEC_STORY_END",
                        },

                        {
                            -- paste the story page to Other History section
                            ["SKW"] = {"None","GcStoryCategory.xml",},
                            ["PKW"] = "Pages",
                            ["ADD_OPTION"] = "ADDendSECTION",
                            ["SEC_ADD_NAMED"] = "SEC_STORY_END",
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