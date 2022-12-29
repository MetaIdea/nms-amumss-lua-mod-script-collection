NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "_FF_ItemUseLabelsImproved.pak", 
    ["MOD_AUTHOR"]		    = "FriendlyFirePL",
    ["LUA_AUTHOR"]		    = "FriendlyFirePL",
    ["NMS_VERSION"]		    = "4.08",
    ["MOD_DESCRIPTION"]     = "This mods does two main things: 1) it adds colors to item use labels found on item cards 2) it changes the default separator for these labels from (, ) to ( - ) for improved readability",
    
    ["MODIFICATIONS"]   =
    {
        {
            ["MBIN_CHANGE_TABLE"]   =
            {
                {
                    -- file to load: NMS_LOC4_ENGLISH.MBIN
                    ["MBIN_FILE_SOURCE"]    = "LANGUAGE\NMS_LOC4_ENGLISH.MBIN",
                    ["EXML_CHANGE_TABLE"]   =
                    {
                        {
                            -- changing separator from (, ) to ( - )
                            ["SPECIAL_KEY_WORDS"]   = {"Id","ITEMUSE_COMMA"},
                            ["VALUE_CHANGE_TABLE"]  = {{"Value"," - "},},
                        },

                        {
                            -- Charging - red color from FUEL tag
                            ["SPECIAL_KEY_WORDS"]   = {"Id","ITEMUSE_CHARGE"},
                            ["VALUE_CHANGE_TABLE"]  = {{"Value","&lt;FUEL&gt;Charging&lt;&gt;"},},
                        },

                        {
                            -- Building - purple color from RARE tag
                            ["SPECIAL_KEY_WORDS"]   = {"Id","ITEMUSE_BUILD"},
                            ["VALUE_CHANGE_TABLE"]  = {{"Value","&lt;RARE&gt;Building&lt;&gt;"},},
                        },

                        {
                            -- Upgrading - green color from FLORA tag
                            ["SPECIAL_KEY_WORDS"]   = {"Id","ITEMUSE_TECH"},
                            ["VALUE_CHANGE_TABLE"]  = {{"Value","&lt;FLORA&gt;Upgrading&lt;&gt;"},},
                        },

                        {
                            -- Refining - blue color from VISOR tag
                            ["SPECIAL_KEY_WORDS"]   = {"Id","ITEMUSE_REFINE"},
                            ["VALUE_CHANGE_TABLE"]  = {{"Value","&lt;VISOR&gt;Refining&lt;&gt;"},},
                        },

                        {
                            -- Trading (regular) - orange color from CATALYST tag
                            ["SPECIAL_KEY_WORDS"]   = {"Id","ITEMUSE_TRADE"},
                            ["VALUE_CHANGE_TABLE"]  = {{"Value","&lt;CATALYST&gt;Trading&lt;&gt;"},},
                        },

                        {                    
                            -- Trading (high value) - also orange color from CATALYST tag + adding color to the whole label (before it was just the part in brackets)
                            ["SPECIAL_KEY_WORDS"]   = {"Id","ITEMUSE_RARETRADE"},
                            ["VALUE_CHANGE_TABLE"]  = {{"Value","&lt;CATALYST&gt;Trading (High Value)&lt;&gt;"},},
                        },

                        -- unchanged labels: Fueling, Crafting

                    }
                }
            }
        }
    }
}