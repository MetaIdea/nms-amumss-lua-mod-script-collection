----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "FlamethrowerOnAtlasMT"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "448"
METADATA_MOD_DESC       = "This mod enables either the Atlas / Atlantid Multi-Tools to spawn with Incinerator technology pre-installed"



----------------------------------------------------------------------------------------------------
-- files affected by the mod
----------------------------------------------------------------------------------------------------

FILE_REALITY_TECHNOLOGYTABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN"

FILES_MODELS_MULTITOOLS_ATLAS =
{
    "MODELS\\COMMON\\WEAPONS\\MULTITOOL\\ATLASMULTITOOL\\ENTITIES\\_ATLAS_MT.ENTITY.MBIN",
    "MODELS\\COMMON\\WEAPONS\\MULTITOOL\\ATLASMTPARTS\\ATLASMTMONOLITH\\ENTITIES\\_ATLAS_MT.ENTITY.MBIN",
    "MODELS\\COMMON\\WEAPONS\\MULTITOOL\\ATLASMTPARTS\\ATLASMTARTEMIS\\ENTITIES\\_ATLAS_MT.ENTITY.MBIN",
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
                    ["MBIN_FILE_SOURCE"] = FILES_MODELS_MULTITOOLS_ATLAS,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Tech","ATLAS_LASER",},
                            ["SEC_SAVE_TO"] = "SEC_TECH",
                        },

                        {
                            ["SEC_EDIT"] = "SEC_TECH",
                            ["VCT"] = {{"Tech","FLAME",},},
                        },

                        {
                            ["PKW"] = "DesiredTechs",
                            ["SEC_ADD_NAMED"] = "SEC_TECH",
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_TECHNOLOGYTABLE,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"ID","FLAME",},
                            ["VCT"] = {{"Core","True",},},
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