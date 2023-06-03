----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "426"
METADATA_LOCATIZATION   = "LOC3"
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