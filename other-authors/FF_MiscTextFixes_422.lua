----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_NMS_VERSION    = "422"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."

-- credits:
-- bk201                pointing out typos, providing feedback on changes
-- Devilin Pixy         pointing out typos
-- Gumsk                idea for new LUA script



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

----------------- localization file 1

-- new save messsage for multiplayer and Nexus mission scenarios
TEXT_SAVE_MULTIPLAYER = "Multiplayer &lt;IMG&gt;SLASH&lt;&gt; Mission progress and inventory saved. Player position not saved."
TEXT_SAVE_NEXUSMISSION = "Nexus mission &lt;IMG&gt;SLASH&lt;&gt; Inventory saved. Mission progress and player position not saved."

-- fixed typo in author's name
TEXT_DEATH_AUTHOR = "- KURT VONNEGUT, A MAN WITHOUT A COUNTRY"

-- fixed typo in Traveller
TEXT_TRAVELLER_DIALOGUE = "Have the travellers come? Are they here?"

----------------- localization file 3

-- added symbols to force new line for mission descriptions
TEXT_SURVEY_FLORAL = "&lt;IMG&gt;DFLORA&lt;&gt; Floral Survey Location&#xA;"
TEXT_SURVEY_MINERAL = "&lt;IMG&gt;DMINERAL&lt;&gt; Mineral Survey Location&#xA;"
TEXT_SURVEY_CREATURES = "&lt;IMG&gt;DFAUNA&lt;&gt; Creature Survey Location&#xA;"

----------------- localization file 4

-- fixed typo in commercial
TEXT_COMMERCIAL_BUILD = "Commercial HoloTerminus"

-- renamed sodium crystals
TEXT_SODIUM_CRYSTALS = "Sodium Crystals"

-- new crafting tooltip for Warp Hypercore
PROPERTY_CRAFT_HYPERCORE =
[[<Property value="TkLocalisationEntry.xml">
<Property name="Id" value="UI_PIN_HYPERFUEL2_OBJ_TIP" />
<Property name="English" value="VariableSizeString.xml">
  <Property name="Value" value="Craft %ITEM% from &lt;FUEL&gt;Antimatter&lt;&gt; and &lt;RARE&gt;Storm Crystal&lt;&gt;. Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;." />
</Property>
<Property name="French" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Italian" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="German" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Spanish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Russian" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Polish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Dutch" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Portuguese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="LatinAmericanSpanish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="BrazilianPortuguese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="SimplifiedChinese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="TraditionalChinese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="TencentChinese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Korean" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="Japanese" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
<Property name="USEnglish" value="VariableSizeString.xml">
  <Property name="Value" value="" />
</Property>
</Property>]]

----------------- localization file 6

-- new label for destroyed derelict freighters (red icon, no landing pads)
TEXT_DESTROYED_FREIGHTER = "Destroyed Freighter"

-- fixed description for source of Living Water (not on space station)
TEXT_LIVING_WATER = "The Void Egg host requires a &lt;COMMODITY&gt;Shell&lt;&gt;&#xA;Gather %ITEM% to craft &lt;TECHNOLOGY&gt;Impossible Membrane&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Seek %ITEM% in deep space"

-- fixed description for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_1 = "Install the gifted &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;&#xA;The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather &lt;STELLAR&gt;Liquid Sun&lt;&gt; to craft Pulsating Core&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;"
TEXT_SOLARRAY_2 = "The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;"
TEXT_SOLARRAY_3 = "The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;&#xA;Press &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to equip the &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;"

----------------- localization file 7

-- fixed exomech AI description (removed the bit about mining activities)
TEXT_EXOMECH_AI_MODULE = "A semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt; for the Minotaur Heavy Exocraft Hybrid. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit.&#xA;&#xA;Piloting routines are highly localised. It is incapable of developing emotional bonds nor exercising independent control of the Minotaur."
TEXT_EXOMECH_HARDFRAME = "A collection of salvaged components from a Sentinel Hardframe, reconditioned to fit the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid.&#xA;&#xA;Will function as a semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt;. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit."

-- fixed typo in cargo scan deflection message
TEXT_CARGOSCAN_SCRAMBLED = "Incoming Cargo Probe Scrambled!"

-- fixed typo in commercial
TEXT_COMMERCIAL_FREQ = "COMMERCIAL FREQUENCY"
TEXT_COMMERCIAL_QUEST = "Intercept and destroy the &lt;STELLAR&gt;%FREIGHTER%&lt;&gt;&#xA;Locate the mission's &lt;TECHNOLOGY&gt;expedition path&lt;&gt;&#xA;Searching commercial traffic signals: %SIGNAL%"
TEXT_COMMERCIAL_SETL = "commercial innovation"

-- added Boltcaster to description of Sentinel Weapons Shards
TEXT_WEAPON_SHARD = "An &lt;SPECIAL&gt;anomalous&lt;&gt; upgrade for the Multi-Tool's &lt;TECHNOLOGY&gt;Boltcaster weapon system&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;This eerie, glassy shard was extracted from &lt;SPECIAL&gt;Sentinel debris&lt;&gt;. Its exact effect upon the Multi-Tool will not be known until after installation is complete."



----------------------------------------------------------------------------------------------------
-- script data
----------------------------------------------------------------------------------------------------

-- game language files
PATH_LANGUAGE_LOC1 = "LANGUAGE\\NMS_LOC1_ENGLISH.MBIN"
PATH_LANGUAGE_LOC3 = "LANGUAGE\\NMS_UPDATE3_ENGLISH.MBIN"
PATH_LANGUAGE_LOC4 = "LANGUAGE\\NMS_LOC4_ENGLISH.MBIN"
PATH_LANGUAGE_LOC6 = "LANGUAGE\\NMS_LOC6_ENGLISH.MBIN"
PATH_LANGUAGE_LOC7 = "LANGUAGE\\NMS_LOC7_ENGLISH.MBIN"

-- other files
PATH_PLAYER_TITLES = "METADATA\\GAMESTATE\\PLAYERDATA\\PLAYERTITLEDATA.MBIN"
PATH_PRODUCT_TABLE = "METADATA\\REALITY\\TABLES\\NMS_REALITY_GCPRODUCTTABLE.MBIN"



-- data lists for localization file 1

LIST_ID_1 = 
{
    "INTRCT_SAVE_NO_POS",
    "INTRCT_SAVE_NO_POS_NEXUS",
    "DEATH_AUTHOR_12",
    "EXP_1_PORT_LANG_1"
}

LIST_TEXT_1 = 
{
    TEXT_SAVE_MULTIPLAYER,
    TEXT_SAVE_NEXUSMISSION,
    TEXT_DEATH_AUTHOR,
    TEXT_TRAVELLER_DIALOGUE,
}

-- data lists for localization file 3

LIST_ID_3 = 
{
    "UI_TREE_SCAN_TARGET_PLANET",
    "UI_MIN_SCAN_TARGET_PLANET",
    "UI_CRE_SCAN_TARGET_PLANET",
}

LIST_TEXT_3 = 
{
    TEXT_SURVEY_FLORAL,
    TEXT_SURVEY_MINERAL,
    TEXT_SURVEY_CREATURES,
}

-- data lists for localization file 4

LIST_ID_4 = 
{
    "UI_BASE_SHOP_SUB",
    "UI_YELLOW_CRYSTAL_NAME",
}

LIST_TEXT_4 = 
{
    TEXT_COMMERCIAL_BUILD,
    TEXT_SODIUM_CRYSTALS,
}

-- data lists for localization file 6

LIST_ID_6 = 
{
    "UI_DERELICT1_LABEL",
    "UI_BIO_SHIP_MISSION3_MSG2C",
    "UI_BIO_SHIP_MISSION2_MSG2A",
    "UI_BIO_SHIP_MISSION2_MSG2B",
    "UI_BIO_SHIP_MISSION2_MSG2B2",
}

LIST_TEXT_6 = 
{
    TEXT_DESTROYED_FREIGHTER,
    TEXT_LIVING_WATER,
    TEXT_SOLARRAY_1,
    TEXT_SOLARRAY_2,
    TEXT_SOLARRAY_3,
}

-- data lists for localization file 7

LIST_ID_7 =
{
    "UI_MECH_AUTOPILOT_DESC",
    "UI_MECH_SENT_HEAD_DESC",
    "UI_SCAN_BLOCKER_SUCCESS",
    "UI_UNOWNED_FLEET_HUD",
    "UI_FREIGHTER_ATTACK_MSG3",
    "UI_JUDGEMENT_POLICY5_NAME4",
    "UP_SENTGUN_DESC",
}

LIST_TEXT_7 = 
{
    TEXT_EXOMECH_AI_MODULE,
    TEXT_EXOMECH_HARDFRAME,
    TEXT_CARGOSCAN_SCRAMBLED,
    TEXT_COMMERCIAL_FREQ,
    TEXT_COMMERCIAL_QUEST,
    TEXT_COMMERCIAL_SETL,
    TEXT_WEAPON_SHARD,
}



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,
    
    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                ----------------------------------------------------------------------------------------------------
                -- localization files
                ----------------------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC1,
                    ["EXML_CHANGE_TABLE"] = {{},},
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC3,
                    ["EXML_CHANGE_TABLE"] = {{},},
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC4,
                    ["EXML_CHANGE_TABLE"] =
                    {
                        {
                            ["SKW"] = {"Id","UI_PIN_HYPERFUEL1_OBJ_TIP",},
                            ["ADD_OPTION"] = "ADDafterSECTION",
                            ["ADD"] = PROPERTY_CRAFT_HYPERCORE,
                        },
                    },
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC6,
                    ["EXML_CHANGE_TABLE"] = {{},},
                },

                {
                    ["MBIN_FILE_SOURCE"] = PATH_LANGUAGE_LOC7,
                    ["EXML_CHANGE_TABLE"] = {{},},
                },

                ----------------------------------------------------------------------------------------------------
                -- other files
                ----------------------------------------------------------------------------------------------------

                {
                    ["MBIN_FILE_SOURCE"] = PATH_PLAYER_TITLES,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["SKW"] = {"ID","T_ABANDLORE3"},
                            ["VCT"] = {{"Title","UI_PLAYER_TITLE_ABANDLORE3"},},
                        },

                        {
                            ["SKW"] = {"ID","T_ABANDLORE4"},
                            ["VCT"] = {{"Title","UI_PLAYER_TITLE_ABANDLORE4"},},
                        },
                    },
                },

                {
                  ["MBIN_FILE_SOURCE"] = PATH_PRODUCT_TABLE,
                  ["EXML_CHANGE_TABLE"] = 
                  {
                      {
                          ["SKW"] = {"ID","HYPERFUEL2"},
                          ["VCT"] = {{"PinObjectiveTip","UI_PIN_HYPERFUEL2_OBJ_TIP"},},
                      },
                  },
                }
            }
        }
    }
}



----------------------------------------------------------------------------------------------------
-- mod functions
----------------------------------------------------------------------------------------------------

-- EXML Change Tables for each file
local EXML_1 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["EXML_CHANGE_TABLE"]
local EXML_3 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["EXML_CHANGE_TABLE"]
local EXML_4 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][3]["EXML_CHANGE_TABLE"]
local EXML_6 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][4]["EXML_CHANGE_TABLE"]
local EXML_7 = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][5]["EXML_CHANGE_TABLE"]

-- function to modify loc files according to property ID lists
function MODIFY(I,T,E)
    if I~=nil and T~=nil and E~=nil and #I==#T then
        for i=1,#I do
            local M = {["SKW"] = {"Id",I[i],},["VCT"] = {{"Value",T[i]},},}
            E[#E+1] = M
        end
    end
end

-- modify each localization file
MODIFY(LIST_ID_1,LIST_TEXT_1,EXML_1)
MODIFY(LIST_ID_3,LIST_TEXT_3,EXML_3)
MODIFY(LIST_ID_4,LIST_TEXT_4,EXML_4)
MODIFY(LIST_ID_6,LIST_TEXT_6,EXML_6)
MODIFY(LIST_ID_7,LIST_TEXT_7,EXML_7)



----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------