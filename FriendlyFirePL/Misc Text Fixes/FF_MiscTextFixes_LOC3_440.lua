----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "440"
METADATA_LOCALIZATION   = "LOC3"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game. Module for localization file 3."

-- credits:
-- bk201                                        pointing out typos, providing feedback on changes
-- Devilin Pixy, members of NMS Discord         pointing out typos
-- Gumsk, lyravega                              optimizations of the LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

-- removed double dot from Cactus Flesh description
TEXT_CACTUSFLESH_DESC = "Succulent, edible cactus flesh from the &lt;TRADEABLE&gt;Echinocactus plant&lt;&gt;. As well as being juicy on the tongue, the flesh has many industrial uses.&#xA;&#xA;The Echinocactus thrives only on &lt;STELLAR&gt;desert planets&lt;&gt;, but can be farmed in all environments with the aid of a &lt;TECHNOLOGY&gt;Hydroponics Tray&lt;&gt;."

-- fixed description of NipNip
TEXT_NIPNIP_GROWTIME = "This medicinal herb is known for its pungent buds, which are harvested to produce Gek Nip. NipNip thrives in dank environments, and often grows as a weed.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;4 hours&lt;&gt;"

-- changed verbiage for "better ratios" in refiners descriptions
TEXT_BETTERRATIO_REFINER2 = "A vital piece of planetary equipment. The &lt;TECHNOLOGY&gt;Refiner&lt;&gt; allows gathered substances to be processed into more powerful and more advanced materials.&#xA;&#xA;The Medium Refiner features &lt;COMMODITY&gt;two&lt;&gt; input slots, allowing user to combine more substances and utilise new refining techniques.&#xA;&#xA;The Medium Refiner must be installed in a &lt;VAL_ON&gt;Habitable Base&lt;&gt;, but does not require additional power sources."

-- changed verbiage for "better ratios" in refiners descriptions
TEXT_BETTERRATIO_REFINER3 = "A vital piece of planetary equipment. The &lt;TECHNOLOGY&gt;Refiner&lt;&gt; allows gathered substances to be processed into more powerful and more advanced materials.&#xA;&#xA;The Large Refiner features &lt;COMMODITY&gt;three&lt;&gt; input slots, allowing user to combine more substances and utilise new refining techniques.&#xA;&#xA;The Large Refiner must be installed in a &lt;VAL_ON&gt;Habitable Base&lt;&gt;, but does not require additional power sources."

-- specified teleporter range
TEXT_TELEPORTER_RANGE = "A device that modulates standard starship communication signals to &lt;TECHNOLOGY&gt;enable the transport of matter&lt;&gt; as well as data.&#xA;&#xA;Starships fitted with such a device can send and receive products and substances to a user's exosuit over a distance of &lt;VAL_ON&gt;up to 150 units&lt;&gt;."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- localization file path
PATH_LANGUAGE = "LANGUAGE\\NMS_UPDATE3_ENGLISH.MBIN"

-- data array
DATA = 
{
    UI_PLANTSUB_BARREN_DESC = TEXT_CACTUSFLESH_DESC,
    UI_PLANT_11_DESC = TEXT_NIPNIP_GROWTIME,
    REFINER2_DESC = TEXT_BETTERRATIO_REFINER2,
    REFINER3_DESC = TEXT_BETTERRATIO_REFINER3,
    SHIP_TELEPORT_DESC = TEXT_TELEPORTER_RANGE,
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_LOCALIZATION.."_"..METADATA_NMS_VERSION..".pak",
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