----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "ColourfulSentinelLootBarrels"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "448"
METADATA_MOD_DESC       = "This mod changes the Visor and Compass markers to barrels dropped by Sentinels and adds a purple texture to barrels dropped by corrupted Sentinels"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

LIST_LOOT_CORRUPTED =
{
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\CORRUPTLOOT\\ENTITIES\\CORRUPTLOOT.ENTITY.MBIN",
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\SPIDERLOOT\\ENTITIES\\SPIDERLOOT.ENTITY.MBIN"
}

LIST_LOOT_REGULAR =
{
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\DRONELOOT\\ENTITIES\\DRONELOOT.ENTITY.MBIN",
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\MECHLOOT\\ENTITIES\\MECHLOOT.ENTITY.MBIN",
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\QUADLOOT\\ENTITIES\\QUADLOOT.ENTITY.MBIN",
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\WALKERLOOT\\ENTITIES\\WALKERLOOT.ENTITY.MBIN"
}

LIST_MATERIAL_CORRUPTED = 
{
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\CORRUPTLOOT\\DRONE_MAT.MATERIAL.MBIN",
    "MODELS\\COMMON\\ROBOTS\\LOOTDROP\\SPIDERLOOT\\DRONE_MAT1.MATERIAL.MBIN"
}



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
                    ["MBIN_FILE_SOURCE"] = LIST_LOOT_REGULAR,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "GcScannableComponentData.xml",
                            ["VCT"] = {{"ScanIconType","LifeSupport"},},
                        }, 
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = LIST_LOOT_CORRUPTED,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "GcScannableComponentData.xml",
                            ["VCT"] = {{"ScanIconType","Shield"},},
                        }, 
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = LIST_MATERIAL_CORRUPTED,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Name","gDiffuseMap",},
                            ["VCT"] = {{"Map","TEXTURES/COMMON/ROBOTS/CORRUPTED.DDS"},},
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