----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "CRAFT"
METADATA_NMS_VERSION    = "447"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."

--[[
CREDITS:
> bk201                                        pointing out typos, providing feedback on changes
> Devilin Pixy, members of NMS Discord         pointing out typos
> Gumsk, Lyravega, Alchemist                   optimizations of the LUA script
]]



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
                            ["SKW"] = {"ID","HYPERFUEL2"},
                            ["VCT"] = {{"PinObjectiveTip","UI_PIN_HYPERFUEL2_OBJ_TIP"},},
                        },

                        {
                            ["SKW"] = {"ID","ATLAS_SEED_10"},
                            ["VCT"] = {{"PinObjectiveTip","UI_PIN_ATLASSEED_OBJ_TIP"},},
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