----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "UtopiaSpeederNoNanitesCost"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "440"
METADATA_MOD_DESC       = "Fixed a bug where redeeming the Utopia Speeder expedition reward shows a cost of 1400 nanites"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- file to be modified - Reward Table
PATH_REWARDTABLE = "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"

-- search keywords for Utopia Speeder
SEARCH_SPEEDER = {"Id","RS_S9_SHIP",}

-- change table for 0 units cost
CHANGE_SPEEDER = {{"CostAmount",0,},{"Currency","Units",},}



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
                    ["MBIN_FILE_SOURCE"] = PATH_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = SEARCH_SPEEDER,
                            ["VCT"] = CHANGE_SPEEDER,    
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