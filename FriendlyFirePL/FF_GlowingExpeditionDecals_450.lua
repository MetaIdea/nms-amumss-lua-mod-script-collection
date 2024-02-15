----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "GlowingExpeditionDecals"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod adds a light source to decals from Expeditions 01-12."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

--------------------------------------------------
-- files affected by this mod
--------------------------------------------------

-- wall light scene (not edited, used as template for light source)
FILE_WALLLIGHT =    "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\BAZAAR\\WALLLIGHT01.SCENE.MBIN"

-- expedition decal scenes (edited)
FILE_DECAL_01 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_01.SCENE.MBIN"
FILE_DECAL_02 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_02.SCENE.MBIN"
FILE_DECAL_03 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_03.SCENE.MBIN"
FILE_DECAL_04 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_04.SCENE.MBIN"

FILE_DECAL_05 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_05.SCENE.MBIN"
FILE_DECAL_06 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_06A.SCENE.MBIN"
FILE_DECAL_07 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_07.SCENE.MBIN"
FILE_DECAL_08 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_08.SCENE.MBIN"

FILE_DECAL_09 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_09.SCENE.MBIN"
FILE_DECAL_10 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_10.SCENE.MBIN"
FILE_DECAL_11 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_11.SCENE.MBIN"
FILE_DECAL_12 =     "MODELS\\PLANETS\\BIOMES\\COMMON\\BUILDINGS\\PARTS\\BUILDABLEPARTS\\DECORATION\\DECALDECORATION\\EXPEDITION_12.SCENE.MBIN"

--------------------------------------------------
-- list of expedition decals
--------------------------------------------------

LIST_DECALS =
{
    FILE_DECAL_01, FILE_DECAL_02, FILE_DECAL_03, FILE_DECAL_04,
    FILE_DECAL_05, FILE_DECAL_06, FILE_DECAL_07, FILE_DECAL_08,
    FILE_DECAL_09, FILE_DECAL_10, FILE_DECAL_11, FILE_DECAL_12,
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
                    ["MBIN_FILE_SOURCE"] = FILE_WALLLIGHT,
                    ["MBIN_FS_DISCARD"] = "TRUE",
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Type","LIGHT",},
                            ["SEC_SAVE_TO"] = "SEC_LIGHT",  
                        },
                    }
                },

                {
                    ["MBIN_FILE_SOURCE"] = LIST_DECALS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["PKW"] = "Children",
                            ["SEC_ADD_NAMED"] = "SEC_LIGHT",   
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