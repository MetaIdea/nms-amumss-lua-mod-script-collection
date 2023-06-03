----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "426"
METADATA_LOCATIZATION   = "LOC6"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game. Module for localization file 6."

-- credits:
-- bk201                                        pointing out typos, providing feedback on changes
-- Devilin Pixy, members of NMS Discord         pointing out typos
-- Gumsk, lyravega                              optimizations of the LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

-- new label for destroyed derelict freighters (red icon, no landing pads)
TEXT_DESTROYED_FREIGHTER = "Destroyed Freighter"

-- fixed description for source of Living Water (not on space station)
TEXT_LIVING_WATER = "The Void Egg host requires a &lt;COMMODITY&gt;Shell&lt;&gt;&#xA;Gather %ITEM% to craft &lt;TECHNOLOGY&gt;Impossible Membrane&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Seek %ITEM% in deep space"

-- fixed descriptions for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_1 = "Install the gifted &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;&#xA;The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather &lt;STELLAR&gt;Liquid Sun&lt;&gt; to craft Pulsating Core&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;"
TEXT_SOLARRAY_2 = "The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;"
TEXT_SOLARRAY_3 = "The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;&#xA;Press &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to equip the &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;"

-- new verbiage for Multitool Expansion Slot
TEXT_MULTITOOL_EXPANSION = "A flexible upgrade circuit, compatible with &lt;STELLAR&gt;all Multi-Tool types&lt;&gt;.&#xA;&#xA;This module can be wired into a Multi-Tool at a dedicated &lt;TECHNOLOGY&gt;Multi-Tool Upgrade Station&lt;&gt;, granting the user more space in the Multi-Tool's internal layout to add further upgrades or technology specialisations."

-- fixed description of Cargo Bulkhead
TEXT_CARGO_BULKHEAD = "A technology module harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be acquired from &lt;STELLAR&gt;rescued capital freighters&lt;&gt; after defeating pirates.&#xA;&#xA;Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. This module is compatible with both Technology and Cargo space. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;."

-- altered description of Exosuit Expansion Slot
TEXT_EXOSUIT_EXPANSION = "An advanced survival technology module that allows expansion of a user's &lt;STELLAR&gt;Exosuit Storage&lt;&gt;.&#xA;&#xA;Pre-packed nano-expanders create stablised sub-warp voids within the Exosuit, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply this augmentation at the &lt;TECHNOLOGY&gt;Exosuit upgrade terminal&lt;&gt; on board of a space station or at planetary drop pods."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- localization file path
PATH_LANGUAGE = "LANGUAGE\\NMS_LOC6_ENGLISH.MBIN"

-- data array
DATA = 
{
    UI_DERELICT1_LABEL = TEXT_DESTROYED_FREIGHTER,
    UI_BIO_SHIP_MISSION3_MSG2C = TEXT_LIVING_WATER,
    UI_BIO_SHIP_MISSION2_MSG2A = TEXT_SOLARRAY_1,
    UI_BIO_SHIP_MISSION2_MSG2B = TEXT_SOLARRAY_2,
    UI_BIO_SHIP_MISSION2_MSG2B2 = TEXT_SOLARRAY_3,
    UI_WEAPON_INV_TOKEN_DESC = TEXT_MULTITOOL_EXPANSION,
    UI_FREIGHT_INV_TOKEN_DESC = TEXT_CARGO_BULKHEAD,
    UI_SUIT_INV_TOKEN_DESC = TEXT_EXOSUIT_EXPANSION,
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