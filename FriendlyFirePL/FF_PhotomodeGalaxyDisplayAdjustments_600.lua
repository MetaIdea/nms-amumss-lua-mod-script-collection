----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "PhotomodeGalaxyDisplayAdjustments"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "620"
METADATA_MOD_DESC       = ""



----------------------------------------------------------------------------------------------------
-- mod definition
----------------------------------------------------------------------------------------------------

FILE_UI_PHOTOMODE =    "UI\PHOTOMODE\PHOTOOVERLAY.MBIN"

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
                    ["MBIN_FILE_SOURCE"] = FILE_UI_PHOTOMODE,
                    ["MXML_CHANGE_TABLE"] =
                    {
                        {
                            -- make the overlay wider (% of screen width)
                            -- push it a little lower to make it symmetrical
                            ["VCT"] = {{"Width",40,},{"Position Y",96,},},
                        },

                        {
                            -- make overlay less transparent
                            ["SKW"] = {"A","0.200000",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"A",0.4,},},
                        },

                        {
                            -- change text position
                            ["SKW"] = {"ID","GALAXYTEXT",},
                            ["VCT"] = {{"Position X",400,},{"Position Y",2,},},
                        },

                        {
                            -- change font size and text alignment for all 3 styles
                            ["SKW"] = {"Font Height","22.000000",},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VCT"] = {{"Font Height","30",},{"Vertical","Middle",},},
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