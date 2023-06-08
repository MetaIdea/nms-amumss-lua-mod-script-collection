----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "430"
METADATA_LOCATIZATION   = "LOC8"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game. Module for localization file 8."

-- credits:
-- bk201                                        pointing out typos, providing feedback on changes
-- Devilin Pixy, members of NMS Discord         pointing out typos
-- Gumsk, lyravega                              optimizations of the LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

-- changed description for Anti-Gravity Well (recharge functionality)
TEXT_GRAVITYWELL_RECHARGE = "Gently detaches the starship from gravitational fields, lifting it toward the stars.&#xA; &#xA;The well hungers for &lt;SPECIAL&gt;pugneum&lt;&gt; or &lt;SPECIAL&gt;radiant shards&lt;&gt;, and must be sufficiently fueled before launch. When in slumber, it dreams of realm of &lt;SPECIAL&gt;g l a s s&lt;&gt;, harnessing the otherworldly energy to &lt;STELLAR&gt;recharge&lt;&gt; the starship's transcendental &lt;TECHNOLOGY&gt;launch systems&lt;&gt;.&#xA;&#xA;Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost."

-- label for portal glyphs that have no name assigned
TEXT_DATA_CORRUPTED = "// DATA CORRUPTED //"

-- portal glyph names from Starbirth quest
TEXT_PORTALGLYPH_01 = "THE STAR OVER WATER"
TEXT_PORTALGLYPH_02 = "THE HUNTER"
TEXT_PORTALGLYPH_03 = "THE REFLECTION"
TEXT_PORTALGLYPH_04 = "THE ANCIENT GIANT"
TEXT_PORTALGLYPH_05 = "THE OBSCURED COMPANION"
TEXT_PORTALGLYPH_06 = "THE ASCENDING ORB"
TEXT_PORTALGLYPH_07 = "THE SAILOR"
TEXT_PORTALGLYPH_08 = "THE LOWLY INSECT"

TEXT_PORTALGLYPH_09 = TEXT_DATA_CORRUPTED
TEXT_PORTALGLYPH_10 = "THE SPIRAL OF REALITY"
TEXT_PORTALGLYPH_11 = "THE ANOMALY"
TEXT_PORTALGLYPH_12 = "THE OCEAN KING"
TEXT_PORTALGLYPH_13 = TEXT_DATA_CORRUPTED
TEXT_PORTALGLYPH_14 = "THE VESSEL TO BEYOND"
TEXT_PORTALGLYPH_15 = TEXT_DATA_CORRUPTED
TEXT_PORTALGLYPH_16 = TEXT_DATA_CORRUPTED



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- localization file path
PATH_LANGUAGE = "LANGUAGE\\NMS_LOC8_ENGLISH.MBIN"

-- data array
DATA = 
{
    UI_LAUNCHER_ROBO_DESC = TEXT_GRAVITYWELL_RECHARGE,

    UI_PORTAL_GLYPH_NAME_1 = TEXT_PORTALGLYPH_01,
    UI_PORTAL_GLYPH_NAME_2 = TEXT_PORTALGLYPH_02,
    UI_PORTAL_GLYPH_NAME_3 = TEXT_PORTALGLYPH_03,
    UI_PORTAL_GLYPH_NAME_4 = TEXT_PORTALGLYPH_04,
    UI_PORTAL_GLYPH_NAME_5 = TEXT_PORTALGLYPH_05,
    UI_PORTAL_GLYPH_NAME_6 = TEXT_PORTALGLYPH_06,
    UI_PORTAL_GLYPH_NAME_7 = TEXT_PORTALGLYPH_07,
    UI_PORTAL_GLYPH_NAME_8 = TEXT_PORTALGLYPH_08,

    UI_PORTAL_GLYPH_NAME_9 = TEXT_PORTALGLYPH_09,
    UI_PORTAL_GLYPH_NAME_10 = TEXT_PORTALGLYPH_10,
    UI_PORTAL_GLYPH_NAME_11 = TEXT_PORTALGLYPH_11,
    UI_PORTAL_GLYPH_NAME_12 = TEXT_PORTALGLYPH_12,
    UI_PORTAL_GLYPH_NAME_13 = TEXT_PORTALGLYPH_13,
    UI_PORTAL_GLYPH_NAME_14 = TEXT_PORTALGLYPH_14,
    UI_PORTAL_GLYPH_NAME_15 = TEXT_PORTALGLYPH_15,
    UI_PORTAL_GLYPH_NAME_16 = TEXT_PORTALGLYPH_16,
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_LOCATIZATION.."_"..METADATA_NMS_VERSION..".pak",
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
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE,
                    ["EXML_CHANGE_TABLE"] = {},
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- mod functions
----------------------------------------------------------------------------------------------------

-- EXML Change Table for the file
local EXML = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]

-- function to modify tables
function MODIFY(_data,_exml)
    if _data~=nil and _exml~=nil then
        for id,value in next,_data do
            local change = {["SKW"] = {"Id",id,},["VCT"] = {{"Value",value},},}
            _exml[#_exml+1] = change
        end
    end
end

-- modify the localization file
MODIFY(DATA,EXML)



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------