----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "CrimsonHeadRestoredDetails"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod restores the Painted Details section for Construct Head: Crimson."



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_METADATA_CHARACTER_CUSTOMIZER = "METADATA\\UI\\CHARACTERCUSTOMISATIONUIDATA.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CHARACTER_CUSTOMIZER,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = 
                            {
                                "DescriptorOption","HEAD_ASTBOT1",
                                "TextureOptionGroup","EYES_BUILDER",
                            },
                            ["SEC_SAVE_TO"] = "SEC_OPTION",
                        },

                        {
                            ["SEC_EDIT"] = "SEC_OPTION",
                            ["VCT"] = 
                            {
                                {"Title","UI_TIP_HEAD_MARK_BUI_NAME",},
                                {"TextureOptionGroup","HEAD_BUI",},
                            },
                        },

                        {
                            ["SKW"] = 
                            {
                                "DescriptorOption","HEAD_ASTBOT1",
                                "TextureOptionGroup","EYES_BUILDER",
                            },
                            ["SEC_ADD_NAMED"] = "SEC_OPTION",
                            ["ADD_OPTION"]  = "ADDafterSECTION",
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