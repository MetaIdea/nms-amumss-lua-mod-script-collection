----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "SolarFabricatorFix"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "555"
METADATA_MOD_DESC       = "A quick fix for broken Solar starship fabricator. Modifies METADATA\GAMESTATE\PLAYERDATA\MODULARCUSTOMISATIONDATATABLE.MBIN file."

----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_METADATA_MODULARCUSTOM = "METADATA\GAMESTATE\PLAYERDATA\MODULARCUSTOMISATIONDATATABLE.MBIN"

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION,
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
                    ["MBIN_FILE_SOURCE"] = FILE_METADATA_MODULARCUSTOM,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Sail","GcModularCustomisationConfig",},
                            ["PKW"] = "ColourDataPriorityList",
                            ["REPLACE_TYPE"] = "ALLinSECTION",
                            ["VCT"] = {{"RequiredTextureGroup","SHIP_SAIL",},},
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