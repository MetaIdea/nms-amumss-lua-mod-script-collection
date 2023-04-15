----------------------------------------------------------------------------------------------------
-- mod description
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "LabelsImproved"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "422"
METADATA_MOD_DESC       = "This mod changes some aspects of various labels found in the game for improved readability."



----------------------------------------------------------------------------------------------------
-- variables
----------------------------------------------------------------------------------------------------

-- new line
NL = "&#xA;"

-------------------- item use labels --------------------

-- new separator
LABEL_SEPARATOR     = " &lt;IMG&gt;DOT&lt;&gt; "

-- color codes
COLOR_CHARGING      = "FUEL"
COLOR_BUILDING      = "RARE"
COLOR_UPGRADING     = "FLORA"
COLOR_REFINING      = "DARK_TECH"
COLOR_TRADE_NORM    = "CATALYST"
COLOR_TRADE_RARE    = "CATALYST"

-- new labels
LABEL_CHARGING      = "&lt;"..COLOR_CHARGING.."&gt;Charging&lt;&gt;"
LABEL_BUILDING      = "&lt;"..COLOR_BUILDING.."&gt;Building&lt;&gt;"
LABEL_UPGRADING     = "&lt;"..COLOR_UPGRADING.."&gt;Upgrading&lt;&gt;"
LABEL_REFINING      = "&lt;"..COLOR_REFINING.."&gt;Refining&lt;&gt;"
LABEL_TRADE_NORM    = "&lt;"..COLOR_TRADE_NORM.."&gt;Trading&lt;&gt;"
LABEL_TRADE_RARE    = "&lt;"..COLOR_TRADE_RARE.."&gt;Trading (High Value)&lt;&gt;"

-------------------- galaxy map labels --------------------

-- color codes
COLOR_WATER         = "DARK_TECH"
COLOR_DISSONANT     = "RARE"

-- new labels
LABEL_WATER         = " // &lt;"..COLOR_WATER.."&gt;Water&lt;&gt;"
LABEL_DISSONANT     = " // &lt;"..COLOR_DISSONANT.."&gt;Dissonant&lt;&gt;"

-------------------- planet info labels --------------------

-- color codes
COLOR_SENTINELS_HIGHALERT = "HIGHLIGHT"
COLOR_SENTINELS_AGRESSIVE = "FUEL"
COLOR_SENTINELS_CORRUPTED = "RARE"

-- new labels
LABEL_SENTINELS_HIGHALERT = NL.."&lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;"..COLOR_SENTINELS_HIGHALERT.."&gt;High Alert Sentinels&lt;&gt;"
LABEL_SENTINELS_AGRESSIVE = NL.."&lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;"..COLOR_SENTINELS_AGRESSIVE.."&gt;Aggressive Sentinels&lt;&gt;"
LABEL_SENTINELS_CORRUPTED = NL.."&lt;IMG&gt;EX_SENTINEL&lt;&gt; &lt;"..COLOR_SENTINELS_CORRUPTED.."&gt;Corrupted Sentinels&lt;&gt;"



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- file to be modified
PATH_LANGUAGE_LOC4 = "LANGUAGE\\NMS_LOC4_ENGLISH.MBIN"
PATH_LANGUAGE_LOC5 = "LANGUAGE\\NMS_LOC5_ENGLISH.MBIN"
PATH_LANGUAGE_LOC8 = "LANGUAGE\\NMS_LOC8_ENGLISH.MBIN"

-- data lists for localization file 4

LIST_ID_4 = 
{
    "ITEMUSE_COMMA",
    "ITEMUSE_CHARGE",
    "ITEMUSE_BUILD",
    "ITEMUSE_TECH",
    "ITEMUSE_REFINE",
    "ITEMUSE_TRADE",
    "ITEMUSE_RARETRADE",
    "UI_GALMAP_WATER",  
}

LIST_TEXT_4 = 
{
    LABEL_SEPARATOR,
    LABEL_CHARGING,
    LABEL_BUILDING,
    LABEL_UPGRADING,
    LABEL_REFINING,
    LABEL_TRADE_NORM,
    LABEL_TRADE_RARE,
    LABEL_WATER,
}

-- data lists for localization file 5

LIST_ID_5 =
{
    "UI_PLANETLABEL_SENTINELS",
    "UI_PLANETLABEL_SENTINELS_MOD",
}

LIST_TEXT_5 = 
{
    LABEL_SENTINELS_AGRESSIVE,
    LABEL_SENTINELS_HIGHALERT,
}

-- data lists for localization file 8

LIST_ID_8 =
{
    "UI_GALMAP_CORRUPTION",
    "UI_PLANETLABEL_SENTINEL_CORRUPT",
}

LIST_TEXT_8 = 
{
    LABEL_DISSONANT,
    LABEL_SENTINELS_CORRUPTED,
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
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC4,
                    ["EXML_CHANGE_TABLE"] = {{},},
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC5,
                    ["EXML_CHANGE_TABLE"] = {{},},
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC8,
                    ["EXML_CHANGE_TABLE"] = {{},},
                }
            }
        }
    }
}

-- EXML Change Tables for each file
local EXML_4 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local EXML_5 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local EXML_8 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]

-- function to modify loc files according to property ID lists
function MODIFY(I,T,E)
    if I~=nil and T~=nil and E~=nil and #I==#T then
        for i=1,#I do
            local M = {["SKW"] = {"ID",I[i],},["VCT"] = {{"Value",T[i]},},}
            E[#E+1] = M
        end
    end
end

-- modify each localization file
MODIFY(LIST_ID_4,LIST_TEXT_4,EXML_4)
MODIFY(LIST_ID_5,LIST_TEXT_5,EXML_5)
MODIFY(LIST_ID_8,LIST_TEXT_8,EXML_8)



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------