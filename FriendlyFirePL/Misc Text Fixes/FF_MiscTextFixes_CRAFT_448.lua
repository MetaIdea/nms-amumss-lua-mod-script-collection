----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "CRAFT"
METADATA_NMS_VERSION    = "450"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

FILE_REALITY_PRODUCTTABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_REALITY_PRODUCTTABLE,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            -- Warp Hypercore - add new crafting tooltip
                            ["SKW"] = {"ID","HYPERFUEL2"},
                            ["VCT"] = {{"PinObjectiveTip","UI_PIN_HYPERFUEL2_OBJ_TIP"},},
                        },

                        {
                            -- Heart of the Sun - add new crafting tooltip
                            ["SKW"] = {"ID","ATLAS_SEED_10"},
                            ["VCT"] = {{"PinObjectiveTip","UI_PIN_ATLASSEED_OBJ_TIP"},},
                        },

                        {
                            -- Supply Pipe, Mineral Extractor, Gas Extractor
                            -- change blueprint subtitle to one used by the depot
                            ["FSKWG"] = 
                            {
                                {"ID","U_PIPELINE"},
                                {"ID","U_GASEXTRACTOR"},
                                {"ID","U_EXTRACTOR_S"},
                            },
                            ["VCT"] = {{"Value","BLD_SILO_SUB"},},
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