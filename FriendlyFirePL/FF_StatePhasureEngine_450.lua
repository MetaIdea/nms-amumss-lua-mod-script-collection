----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "StatePhasureEngine"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "Use Singularity Engine freighter tech on non-expedition game saves with State Phasure as the payment item. Modifies files in METADATA\\REALITY\\TABLES."



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_METADATA_PUZZLETABLE =         "METADATA\\REALITY\\TABLES\\NMS_DIALOG_GCALIENPUZZLETABLE.MBIN"
FILE_METADATA_COSTTABLE =           "METADATA\\REALITY\\TABLES\\COSTTABLE.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_COSTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Id","C_REP_TOKEN",},
                            ["SEC_SAVE_TO"] = "SEC_COST",
                        },

                        {
                            ["SEC_EDIT"] = "SEC_COST",
                            ["VCT"] = {{"Id","C_MEGAWARP_ITEM",},}, 
                        },

                        {
                            ["SEC_EDIT"] = "SEC_COST",
                            ["SKW"] = {"Cost","GcCostProduct.xml",},
                            ["VCT"] = {{"Id","ATLAS_SEED_7",},}, 
                        },

                        {
                            ["PKW"] = "InteractionTable",
                            ["SEC_ADD_NAMED"] = "SEC_COST",
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_PUZZLETABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            -- replace the cost of SE with the new cost object
                            -- needs to be done for all 6 entries
                            ["SKW"] = {"Cost","C_MEGAWARP"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Cost","C_MEGAWARP_ITEM",},},
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