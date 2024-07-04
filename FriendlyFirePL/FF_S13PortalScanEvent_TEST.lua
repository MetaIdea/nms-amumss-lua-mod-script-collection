----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "S13PortalScanEvent"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "TEST"
METADATA_MOD_DESC       = ""



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_METADATA_REWARDTABLE = "METADATA\\REALITY\\TABLES\\REWARDTABLE.MBIN"
FILE_MODELS_BURIEDCACHE_ENTITY = "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\CRATE\\UNDERGROUNDCRATE\\ENTITIES\\UNDERGROUNDCRATE.ENTITY.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_REWARDTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Id","R_DIG_CLUE",},
                            ["SEC_SAVE_TO"] = "SEC_REWARD_SCAN",
                        },

                        {
                            ["SEC_EDIT"] = "SEC_REWARD_SCAN",
                            ["VCT"] = 
                            {
                                {"Id","R_S13_PORTAL",},
                                {"Event","SE_S13_SPACE_WALK_PORTAL",},
                                {"DoAerialScan","False",},
                            },
                        },

                        {
                            ["PKW"] = "InteractionTable",
                            ["SEC_ADD_NAMED"] = "SEC_REWARD_SCAN",
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_MODELS_BURIEDCACHE_ENTITY,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "GcSimpleInteractionComponentData.xml",
                            ["VCT"] = {{"Id","R_S13_PORTAL",},},
                        },
                    }
                },

            }
        }
    }
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------