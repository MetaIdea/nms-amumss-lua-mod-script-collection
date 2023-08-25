----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "StationOverrideRetexture"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "440"
METADATA_MOD_DESC       = "This mod changes the texture of Station Override to match the outlaw color scheme"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- procuct table
PATH_PRODUCTTABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"

-- search keywords
SKW_STATION_KEY = {"ID","STATION_KEY","Filename","TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/AUTOTRANSLATOR.DDS",}

-- new texture
DDS_STATION_KEY = "TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/STATION_KEY_RED.DDS"



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
                    ["MBIN_FILE_SOURCE"] = PATH_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = SKW_STATION_KEY,
                            ["VCT"] = {{"Filename",DDS_STATION_KEY},},
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