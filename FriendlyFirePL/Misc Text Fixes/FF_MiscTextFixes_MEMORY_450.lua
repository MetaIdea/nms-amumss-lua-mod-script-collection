----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "MEMORY"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_METADATA_CONSUMABLE_TABLE = "METADATA\\REALITY\\TABLES\\CONSUMABLEITEMTABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_CONSUMABLE_TABLE,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["FSKWG"] = 
                            {
                                {"ID","TECHBOX",},
                                {"ID","INVBOX",},
                            },
                            ["VCT"] = 
                            {
                                {"ButtonLocID","UI_DISMANTLE_TECHBOX",},
                                {"ButtonSubLocID","UI_DISMANTLE_TECHBOX_SUB",},
                            },
                        },
                    },
                }
            }
        }
    },
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------