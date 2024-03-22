----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "TethysRadiantBrainFix"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "452"
METADATA_MOD_DESC       = "This mod adds an option to convert Walker Brains into Radiant Brains with the help of Iteration: Tethys"



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_REALITY_PUZZLETABLE = "METADATA\\REALITY\\TABLES\\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PUZZLETABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- get template for new dialogue option
                            ["SKW"] = {"Id","?D_EXPED_SAVE_FREIGHT_END","Name","UI_EXPED_SAVE_FREIGHT_OPT_C",},
                            ["SEC_SAVE_TO"] = "SEC_BRAIN",
                        },
                            
                        {
                            -- modify the template using already existing bits
                            -- dialogue, cost and reward objects are all vanilla
                            ["SEC_EDIT"] = "SEC_BRAIN",
                            ["VCT"] =
                            {
                                {"Name","FTH_EXOTIC4_OPT_DAILY1",},
                                {"Text","FTH_EXOTIC4_RES_B_DAILY2",},
                                {"Cost","C_NEXUS_SENT",},
                                {"Value","R_NEXUS_SENT",},
                                {"KeepOpen","False",},
                                {"MarkInteractionComplete","False",}
                            },
                        },
                            
                        {
                            -- add new dialogue option to Tethys' idle cycle
                            ["SKW"] = {"Id","EXOTIC4_WAIT",},
                            ["PKW"] = "Options",
                            ["SEC_ADD_NAMED"] = "SEC_BRAIN",
                        },
                    }
                }
            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------