----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "440"
METADATA_LOCALIZATION   = "LOC1"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game. Module for localization file 1."

-- credits:
-- bk201                                        pointing out typos, providing feedback on changes
-- Devilin Pixy, members of NMS Discord         pointing out typos
-- Gumsk, lyravega                              optimizations of the LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

-- special text operators
NL = "&#xA;"                        -- new line
SL = "&lt;IMG&gt;SLASH&lt;&gt;"     -- double slash icon
HS = "&#xa0; "                      -- hard space + space

-- new save messsage for multiplayer session
TEXT_SAVE_MULTIPLAYER = SL.."Multiplayer"..SL.."Player position not saved."..NL..HS.."Mission progress and player inventory saved."

-- new save message for Nexus mission
TEXT_SAVE_NEXUSMISSION = SL.." Nexus mission "..SL.." Player inventory saved."..NL..HS.."Mission progress and player position not saved."

-- fixed typo in Traveller
TEXT_TRAVELLER_DIALOGUE = "Have the travellers come? Are they here?"

-- new verbiage for Solar Panel Power stat
TEXT_LIFESUPPORT_SOLAR = "Daytime Efficiency"

-- fixed typo in Warp Cell description
TEXT_WARPCELL_TYPO = "This &lt;FUEL&gt;antimatter-based fuel&lt;&gt; is one of the few power sources capable of meeting the incredible energy requirements of a &lt;TECHNOLOGY&gt;starship hyperdrive&lt;&gt;.&#xA;&#xA;Secured within a robust housing, the cell is guaranteed paradox-free during FTL travel."

-- fixed grow time for Albumin Pearl
TEXT_ALBUMEN_GROWTIME = "A medium-sized, farmable Crystal Orb that yields an occasional harvest of valuable Albumen Pearls.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;2 hours&lt;&gt;"

-- changed descriptions for hazard protection blueprints from Space Anomaly (no recharge)
TEXT_HAZARDPROT_HOT = "Provides relief from intense atmospheric and solar heat through a threaded dermal distribution network of liquid frenium.&#xA;&#xA;This device grants user increased resistance to heat damage. Operates automatically once constructed within user's exosuit inventory."
TEXT_HAZARDPROT_COLD = "Heat capillaries threaded through a user's suit that evenly distributes liquid calidium to maintain a comfortable body temperature.&#xA;&#xA;This device grants increased resistance to cold damage. Operates automatically once constructed within user's exosuit inventory."
TEXT_HAZARDPROT_TOXIC = "Reactive compounds within the suppressor remove toxic liquids that fall on the user, thereby reducing peril and choking hazards.&#xA;&#xA;This device grants increased resistance to toxic damage. Operates automatically once constructed within user's exosuit inventory."
TEXT_HAZARDPROT_RADIO = "Greatly reduces user peril during the exploration of irradiated worlds. Micro-vibrations increase electromagnetic wave reflection, thereby reducing absorption.&#xA;&#xA;This device grants increased resistance to radiation damage. Operates automatically once constructed within user's exosuit inventory."

-- changed label on the ship buy option to fit the screen
TEXT_BUY_STARSHIP = "Buy the lifeform's starship"

-- new verbiage for Multi-Tool damage potential stats
TEXT_LABEL_DAMAGESTAT = "Damage Per Second"

-- changes to AtlasPasses desctiptions
TEXT_ATLASPASS_V2 = "Security and permissions pass granted to specific travellers by many primary galactic species.&#xA; &#xA;Provides access to mid-tier restricted areas and outpost systems. Can be used to overwrite AtlasPass v1 credentials."
TEXT_ATLASPASS_V3 = "Security and permissions pass granted to specific travellers by many primary galactic species.&#xA; &#xA;Provides access to high level restricted areas and outpost systems. Can be used to overwrite both AtlasPass v1 and v2 credentials."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- localization file path
PATH_LANGUAGE = "LANGUAGE\\NMS_LOC1_ENGLISH.MBIN"

-- data array
DATA = 
{
    INTRCT_SAVE_NO_POS = TEXT_SAVE_MULTIPLAYER,
    INTRCT_SAVE_NO_POS_NEXUS = TEXT_SAVE_NEXUSMISSION,
    EXP_1_PORT_LANG_1 = TEXT_TRAVELLER_DIALOGUE,
    SUIT_ENERGY_REGEN = TEXT_LIFESUPPORT_SOLAR,
    HYPERFUEL1_DESCRIPTION = TEXT_WARPCELL_TYPO,
    PLANT_PEARL_DESC = TEXT_ALBUMEN_GROWTIME,
    HOT1_DESCRIPTION = TEXT_HAZARDPROT_HOT,
    COLD1_DESCRIPTION = TEXT_HAZARDPROT_COLD,
    TOX1_DESCRIPTION = TEXT_HAZARDPROT_TOXIC,
    RAD1_DESCRIPTION = TEXT_HAZARDPROT_RADIO,
    NPC_TRADER_BUY_SHIP = TEXT_BUY_STARSHIP,
    STATS_WEAPON_ATTACK = TEXT_LABEL_DAMAGESTAT,
    ACCESS2_DESCRIPTION = TEXT_ATLASPASS_V2,
    ACCESS3_DESCRIPTION = TEXT_ATLASPASS_V3,
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