
-- mod description
METADATA_MOD_NAME       = "FF_ItemUseLabelsImproved.pak"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "4.1"
METADATA_MOD_DESC       = "This mod adds colors to item use labels found on item cards and changes their default separator for improved readability."

----------------------------------------------------------------------------------------------------

-- file to be modified
PATH_LABELS = "LANGUAGE\\NMS_LOC4_ENGLISH.MBIN"

-- new separator
LABEL_SEPARATOR = " &lt;IMG&gt;DOT&lt;&gt; "

-- color codes
COLOR_CHARGING      = "FUEL"
COLOR_BUILDING      = "RARE"
COLOR_UPGRADING     = "FLORA"
COLOR_REFINING      = "DARK_TECH"
COLOR_TRADE_NORM    = "CATALYST"
COLOR_TRADE_RARE    = "CATALYST"

-- colored labels
LABEL_CHARGING      = "&lt;"..COLOR_CHARGING.."&gt;Charging&lt;&gt;"
LABEL_BUILDING      = "&lt;"..COLOR_BUILDING.."&gt;Building&lt;&gt;"
LABEL_UPGRADING     = "&lt;"..COLOR_UPGRADING.."&gt;Upgrading&lt;&gt;"
LABEL_REFINING      = "&lt;"..COLOR_REFINING.."&gt;Refining&lt;&gt;"
LABEL_TRADE_NORM    = "&lt;"..COLOR_TRADE_NORM.."&gt;Trading&lt;&gt;"
LABEL_TRADE_RARE    = "&lt;"..COLOR_TRADE_RARE.."&gt;Trading (High Value)&lt;&gt;"

----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = METADATA_MOD_NAME, 
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
                    ["MBIN_FILE_SOURCE"]    = PATH_LABELS,
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            ["SKW"]   = {"Id","ITEMUSE_COMMA"},
                            ["VCT"]  = {{"Value",LABEL_SEPARATOR},},
                        },

                        {
                            ["SKW"]   = {"Id","ITEMUSE_CHARGE"},
                            ["VCT"]  = {{"Value",LABEL_CHARGING},},
                        },

                        {
                            ["SKW"]   = {"Id","ITEMUSE_BUILD"},
                            ["VCT"]  = {{"Value",LABEL_BUILDING},},
                        },

                        {
                            ["SKW"]   = {"Id","ITEMUSE_TECH"},
                            ["VCT"]  = {{"Value",LABEL_UPGRADING},},
                        },

                        {
                            ["SKW"]   = {"Id","ITEMUSE_REFINE"},
                            ["VCT"]  = {{"Value",LABEL_REFINING},},
                        },

                        {
                            ["SKW"]   = {"Id","ITEMUSE_TRADE"},
                            ["VCT"]  = {{"Value",LABEL_TRADE_NORM},},
                        },

                        {                    
                            ["SKW"]   = {"Id","ITEMUSE_RARETRADE"},
                            ["VCT"]  = {{"Value",LABEL_TRADE_RARE},},
                        },
                    }
                }
            }
        }
    }
}