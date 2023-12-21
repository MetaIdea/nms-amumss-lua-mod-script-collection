----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "LaylapsSignalBoosterUpgrade"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "447"
METADATA_MOD_DESC       = "This mod adds the Signal Booster functionality to Laylaps' interaction menu"



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
                            ["SKW"] = {"Id","SIGNALSCANNER","Name","UI_SIGNAL_NEAREST_OPT",},
                            ["SEC_SAVE_TO"] = "OPT_NEARBY_SCAN",  
                        },

                        {
                            ["SEC_EDIT"] = "OPT_NEARBY_SCAN",
                            ["VCT"] = 
                            {
                                {"Text","",},
                                {"Cost","",},
                            },
                        },

                        {
                            ["FSKWG"] = 
                            {
                                {"TextAlien","UI_DRONE_FRIEND_LANG6",},
                                {"TextAlien","UI_DRONE_FRIEND_LANG7",},
                            },
                            ["PKW"] = "Options",
                            ["SEC_ADD_NAMED"] = "OPT_NEARBY_SCAN",
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