----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "423"
METADATA_LOCATIZATION   = "LOC1"
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

-- fixed typo in author's name (seriously HG, what the actual fuck)
TEXT_DEATH_AUTHOR = "- KURT VONNEGUT, A MAN WITHOUT A COUNTRY"

-- fixed typo in Traveller
TEXT_TRAVELLER_DIALOGUE = "Have the travellers come? Are they here?"

-- new verbiage for Solar Panel Power stat
TEXT_LIFESUPPORT_SOLAR = "Daytime Efficiency"

-- fixed typo in Warp Cell description
TEXT_WARPCELL_TYPO = "This &lt;FUEL&gt;antimatter-based fuel&lt;&gt; is one of the few power sources capable of meeting the incredible energy requirements of a &lt;TECHNOLOGY&gt;starship hyperdrive&lt;&gt;.&#xA;&#xA;Secured within a robust housing, the cell is guaranteed paradox-free during FTL travel."



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
    DEATH_AUTHOR_12 = TEXT_DEATH_AUTHOR,
    EXP_1_PORT_LANG_1 = TEXT_TRAVELLER_DIALOGUE,
    SUIT_ENERGY_REGEN = TEXT_LIFESUPPORT_SOLAR,
    HYPERFUEL1_DESCRIPTION = TEXT_WARPCELL_TYPO,
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