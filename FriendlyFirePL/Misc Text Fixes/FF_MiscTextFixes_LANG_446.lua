----------------------------------------------------------------------------------------------------
-- mod description and credits
----------------------------------------------------------------------------------------------------
METADATA_MOD_NAME       = "MiscTextFixes"
METADATA_MOD_AUTHOR     = "FriendlyFirePL"
METADATA_LUA_AUTHOR     = "FriendlyFirePL"
METADATA_MOD_MODULE     = "LANG"
METADATA_NMS_VERSION    = "446"
METADATA_MOD_DESC       = "This mod aims to fix various text inconsistencies, misleading descriptions and typos found in the game."

--[[
CREDITS:
> bk201                                        pointing out typos, providing feedback on changes
> Devilin Pixy, members of NMS Discord         pointing out typos
> Gumsk, Lyravega, Alchemist                   optimizations of the LUA script
]]



----------------------------------------------------------------------------------------------------
-- fixed text elements
----------------------------------------------------------------------------------------------------

-- special text operators
NL = "&#xA;"                        -- new line
SL = "&lt;IMG&gt;SLASH&lt;&gt;"     -- double slash icon
HS = "&#xa0; "                      -- hard space + space

--------------------------------------------------
-- localization file 1
--------------------------------------------------

-- UI - new save message in multiplayer
TEXT_SAVE_MULTIPLAYER = SL.."Multiplayer"..SL.."Player position not saved."..NL..HS.."Mission progress and player inventory saved."

-- UI - new save message for Nexus mission
TEXT_SAVE_NEXUSMISSION = SL.." Nexus mission "..SL.." Player inventory saved."..NL..HS.."Mission progress and player position not saved."

-- DIALOGUE - fixed typo in word "travelers"
TEXT_TRAVELLER_DIALOGUE = "Have the travellers come? Are they here?"

-- UI - new verbiage for Solar Panel Power stat
TEXT_LIFESUPPORT_SOLAR = "Daytime Efficiency"

-- ITEM - fixed typo in word "guarenteed"
TEXT_WARPCELL_TYPO = "This &lt;FUEL&gt;antimatter-based fuel&lt;&gt; is one of the few power sources capable of meeting the incredible energy requirements of a &lt;TECHNOLOGY&gt;starship hyperdrive&lt;&gt;.&#xA;&#xA;Secured within a robust housing, the cell is guaranteed paradox-free during FTL travel."

-- OBJECT - fixed wrong growing time info for Albumen Pearl plant
TEXT_ALBUMEN_GROWTIME = "A medium-sized, farmable Crystal Orb that yields an occasional harvest of valuable Albumen Pearls.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;2 hours&lt;&gt;"

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_HOT = "Provides relief from intense atmospheric and solar heat through a threaded dermal distribution network of liquid frenium.&#xA;&#xA;This device grants user increased resistance to heat damage. Operates automatically once constructed within user's exosuit inventory."

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_COLD = "Heat capillaries threaded through a user's suit that evenly distributes liquid calidium to maintain a comfortable body temperature.&#xA;&#xA;This device grants increased resistance to cold damage. Operates automatically once constructed within user's exosuit inventory."

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_TOXIC = "Reactive compounds within the suppressor remove toxic liquids that fall on the user, thereby reducing peril and choking hazards.&#xA;&#xA;This device grants increased resistance to toxic damage. Operates automatically once constructed within user's exosuit inventory."

-- TECH - removed info about recharging with materials from hazard blueprints
TEXT_HAZARDPROT_RADIO = "Greatly reduces user peril during the exploration of irradiated worlds. Micro-vibrations increase electromagnetic wave reflection, thereby reducing absorption.&#xA;&#xA;This device grants increased resistance to radiation damage. Operates automatically once constructed within user's exosuit inventory."

-- DIALOGUE - new verbiage for "offer to buy lifeform's starship" option
TEXT_BUY_STARSHIP = "Buy the lifeform's starship"

-- UI - changed label for Multi-Tool's damage stat
TEXT_LABEL_DAMAGESTAT = "Damage Per Second"

-- ITEM - added info about using higher level Atlas Pass on lower level locks
TEXT_ATLASPASS_V2 = "Security and permissions pass granted to specific travellers by many primary galactic species.&#xA; &#xA;Provides access to mid-tier restricted areas and outpost systems. Can be used to overwrite AtlasPass v1 credentials."

-- ITEM - added info about using higher level Atlas Pass on lower level locks
TEXT_ATLASPASS_V3 = "Security and permissions pass granted to specific travellers by many primary galactic species.&#xA; &#xA;Provides access to high level restricted areas and outpost systems. Can be used to overwrite both AtlasPass v1 and v2 credentials."

-- DIALOGUE - fixed wrong resource name on Vykeen monolith offering
TEXT_MONOLITH_FERRITE = "Surrender Magnetised Ferrite"

--------------------------------------------------
-- localization file 3
--------------------------------------------------

-- ITEM - removed double dot from Cactus Flesh description
TEXT_CACTUSFLESH_DESC = "Succulent, edible cactus flesh from the &lt;TRADEABLE&gt;Echinocactus plant&lt;&gt;. As well as being juicy on the tongue, the flesh has many industrial uses.&#xA;&#xA;The Echinocactus thrives only on &lt;STELLAR&gt;desert planets&lt;&gt;, but can be farmed in all environments with the aid of a &lt;TECHNOLOGY&gt;Hydroponics Tray&lt;&gt;."

-- OBJECT - fixed description of NipNip plant
TEXT_NIPNIP_GROWTIME = "This medicinal herb is known for its pungent buds, which are harvested to produce Gek Nip. NipNip thrives in dank environments, and often grows as a weed.&#xA;&#xA;Suitable for hydroponic indoor planting. Cannot be planted outdoors.&#xA;&#xA;Approximate growing time: &lt;TECHNOLOGY&gt;4 hours&lt;&gt;"

-- OBJECT - changed verbiage for "better ratios" in refiners descriptions
TEXT_BETTERRATIO_REFINER2 = "A vital piece of planetary equipment. The &lt;TECHNOLOGY&gt;Refiner&lt;&gt; allows gathered substances to be processed into more powerful and more advanced materials.&#xA;&#xA;The Medium Refiner features &lt;COMMODITY&gt;two&lt;&gt; input slots, allowing user to combine more substances and utilise new refining techniques.&#xA;&#xA;The Medium Refiner must be installed in a &lt;VAL_ON&gt;Habitable Base&lt;&gt;, but does not require additional power sources."

-- OBJECT - changed verbiage for "better ratios" in refiners descriptions
TEXT_BETTERRATIO_REFINER3 = "A vital piece of planetary equipment. The &lt;TECHNOLOGY&gt;Refiner&lt;&gt; allows gathered substances to be processed into more powerful and more advanced materials.&#xA;&#xA;The Large Refiner features &lt;COMMODITY&gt;three&lt;&gt; input slots, allowing user to combine more substances and utilise new refining techniques.&#xA;&#xA;The Large Refiner must be installed in a &lt;VAL_ON&gt;Habitable Base&lt;&gt;, but does not require additional power sources."

-- TECH - specified the exact distance range for Teleport Receiver
TEXT_TELEPORTER_RANGE = "A device that modulates standard starship communication signals to &lt;TECHNOLOGY&gt;enable the transport of matter&lt;&gt; as well as data.&#xA;&#xA;Starships fitted with such a device can send and receive products and substances to a user's exosuit over a distance of &lt;VAL_ON&gt;up to 150 units&lt;&gt;."

-- UI - added missing text entry for Sentinel Mech name for Analysis Visor
TEXT_SENTINEL_MECHNAME = "Sentinel Mech"

--------------------------------------------------
-- localization file 4
--------------------------------------------------

-- ITEM - added crafting tooltip for Warp Hypercore
TEXT_CRAFT_HYPERCORE = "Craft %ITEM% from &lt;FUEL&gt;Antimatter&lt;&gt; and &lt;RARE&gt;Storm Crystal&lt;&gt;. Use &lt;IMG&gt;PRODMENU&lt;&gt; to craft in empty &lt;TECHNOLOGY&gt;Inventory Slots&lt;&gt;."

-- OBJECT - removed "Nitride" from sodium crystals
TEXT_SODIUM_CRYSTALS = "Sodium Crystals"

-- TECH - fixed description for Osmosis Generator (reduced fuel usage)
TEXT_SUBMARINE_RECHARGE = "Installed into the drive system aboard the &lt;STELLAR&gt;Nautilon Submarine&lt;&gt;.&#xA;&#xA;Captures energy by exploiting the saline gradient in deep water environments, reducing the fuel consumption of &lt;TECHNOLOGY&gt;Humboldt Drive&lt;&gt; by a substantial amount."

-- UI - fixed typo in word "Nitrogren" in names of refining recipies
TEXT_NITROGEN_REFINING = "Requested Operation: Harness Organic Nitrogen"

-- UI - added portal glyph names from Starbirth quest and a "DATA CORRUPTED" label for missing names for the Catalogue and Guide
TEXT_PORTALGLYPH_01 = "THE STAR OVER WATER"
TEXT_PORTALGLYPH_02 = "THE HUNTER"
TEXT_PORTALGLYPH_03 = "THE REFLECTION"
TEXT_PORTALGLYPH_04 = "THE ANCIENT GIANT"
TEXT_PORTALGLYPH_05 = "THE OBSCURED COMPANION"
TEXT_PORTALGLYPH_06 = "THE ASCENDING ORB"
TEXT_PORTALGLYPH_07 = "THE SAILOR"
TEXT_PORTALGLYPH_08 = "THE LOWLY INSECT"
TEXT_PORTALGLYPH_09 = "// DATA CORRUPTED //"
TEXT_PORTALGLYPH_10 = "THE SPIRAL OF REALITY"
TEXT_PORTALGLYPH_11 = "THE ANOMALY"
TEXT_PORTALGLYPH_12 = "THE OCEAN KING"
TEXT_PORTALGLYPH_13 = "// DATA CORRUPTED //"
TEXT_PORTALGLYPH_14 = "THE VESSEL TO BEYOND"
TEXT_PORTALGLYPH_15 = "// DATA CORRUPTED //"
TEXT_PORTALGLYPH_16 = "// DATA CORRUPTED //"

--------------------------------------------------
-- localization file 5
--------------------------------------------------

-- DIALOGUE - fixed typo in word "practice" (verb, British spelling)
TEXT_DIALOGUE_PRACTISE = "Practise language skills"

-- UI - changed label for automatic recharge on starship tech
TEXT_LAUNCHER_RECHARGE = "Standby Recharging"

--------------------------------------------------
-- localization file 6
--------------------------------------------------

-- UI - new label for not boardable derelict freighters (red icon, broken in half, no visible landing pads)
TEXT_DESTROYED_FREIGHTER = "Destroyed Freighter"

-- QUEST - fixed tooltip for source of Living Water (not on space station)
TEXT_LIVING_WATER = "The Void Egg host requires a &lt;COMMODITY&gt;Shell&lt;&gt;&#xA;Gather %ITEM% to craft &lt;TECHNOLOGY&gt;Impossible Membrane&lt;&gt;: %CURRENT%/%AMOUNT%&#xA;Seek %ITEM% in deep space"

-- QUEST - fixed tooltips for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_1 = "Install the gifted &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;&#xA;The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather &lt;STELLAR&gt;Liquid Sun&lt;&gt; to craft Pulsating Core&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;"

-- QUEST - fixed tooltips for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_2 = "The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;"

-- QUEST - fixed tooltips for Solar Ray (converting materials other than metals)
TEXT_SOLARRAY_3 = "The Void Egg host requires a &lt;FUEL&gt;Heart&lt;&gt;&#xA;Gather %ITEM% to craft Pulsating Core: %CURRENT%/%AMOUNT%&#xA;The &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt; will convert deposit materials to &lt;STELLAR&gt;Liquid Sun&lt;&gt;&#xA;Press &lt;IMG&gt;CYCLEWEAPON&lt;&gt; to equip the &lt;TECHNOLOGY&gt;Solar Ray&lt;&gt;"

-- ITEM - changed description for Multitool Expansion Slot
TEXT_MULTITOOL_EXPANSION = "A flexible upgrade circuit, compatible with &lt;STELLAR&gt;all Multi-Tool types&lt;&gt;.&#xA;&#xA;This module can be wired into a Multi-Tool at a dedicated &lt;TECHNOLOGY&gt;Multi-Tool Upgrade Station&lt;&gt;, granting the user more space in the Multi-Tool's internal layout to add further upgrades or technology specialisations."

-- ITEM - changed description for Cargo Bulkhead
TEXT_CARGO_BULKHEAD = "A technology module harvested from the remains of an &lt;STELLAR&gt;abandoned freighter&lt;&gt; found floating in space. May also be acquired from &lt;STELLAR&gt;rescued capital freighters&lt;&gt; after defeating pirates.&#xA;&#xA;Pre-packed nano-expanders fill out this portable unit and graft it to an existing freighter, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. This module is compatible with both Technology and Cargo space. Apply at your freighter's &lt;TECHNOLOGY&gt;Upgrade Terminal&lt;&gt;."

-- ITEM - changed description for Exosuit Expansion Slot
TEXT_EXOSUIT_EXPANSION = "An advanced survival technology module that allows expansion of a user's &lt;STELLAR&gt;Exosuit Storage&lt;&gt;.&#xA;&#xA;Pre-packed nano-expanders create stablised sub-warp voids within the Exosuit, increasing its &lt;STELLAR&gt;inventory capacity&lt;&gt;. Apply this augmentation at the &lt;TECHNOLOGY&gt;Exosuit upgrade terminal&lt;&gt; on board of a space station or at planetary drop pods."

--------------------------------------------------
-- localization file 7
--------------------------------------------------

-- TECH - removed info about "mining activities" from exomech technology modules
TEXT_EXOMECH_AI_MODULE = "A semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt; for the Minotaur Heavy Exocraft Hybrid. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit.&#xA;&#xA;Piloting routines are highly localised. It is incapable of developing emotional bonds nor exercising independent control of the Minotaur."

-- TECH - removed info about "mining activities" from exomech technology modules
TEXT_EXOMECH_HARDFRAME = "A collection of salvaged components from a Sentinel Hardframe, reconditioned to fit the &lt;TECHNOLOGY&gt;Minotaur&lt;&gt; Heavy Exocraft Hybrid.&#xA;&#xA;Will function as a semi-autonomous &lt;TECHNOLOGY&gt;artificial pilot plugin&lt;&gt;. Installation allows the Minotaur to &lt;STELLAR&gt;traverse planets itself&lt;&gt; and engage in &lt;STELLAR&gt;combat&lt;&gt; to support its primary operator.&#xA;&#xA;The AI pilot will always cede control to the primary operator when they enter the cockpit."

-- UI - fixed typo in word "scambled"
TEXT_CARGOSCAN_SCRAMBLED = "Incoming Cargo Probe Scrambled!"

-- ITEM - added Boltcaster to description of Sentinel Weapons Shards
TEXT_WEAPON_SHARD = "An &lt;SPECIAL&gt;anomalous&lt;&gt; upgrade for the Multi-Tool's &lt;TECHNOLOGY&gt;Boltcaster weapon system&lt;&gt;. Use &lt;VAL_ON&gt;&lt;IMG&gt;FE_ALT1&lt;&gt;&lt;&gt; to begin upgrade &lt;VAL_ON&gt;installation process&lt;&gt;.&#xA;&#xA;This eerie, glassy shard was extracted from &lt;SPECIAL&gt;Sentinel debris&lt;&gt;. Its exact effect upon the Multi-Tool will not be known until after installation is complete."

-- TECH - changed technology group name for Sentinel upgrades
TEXT_SENTGUN_NAME = "Boltcaster"

-- UI - new verbiage for "cannot change difficulty settings at this time"
TEXT_DIFFICULTY_MULTIPLAYER = "- Not available during Nexus mission or Multiplayer -"

-- UI - fixed typo in word "Nitrogren" in names of refining recipies
TEXT_NITROGEN_REFINING = "Harness Organic Nitrogen"

-- TECH - changed description of Vesper Sail module to stress the recharge functionality works only when ship is not in active use
TEXT_SAIL_RECHARGE = "A high-performance &lt;STELLAR&gt;solar sail&lt;&gt;, deployed automatically during flight. This advanced &lt;TECHNOLOGY&gt;propulsion device&lt;&gt; generates an electric field within the sails themselves, allowing the starship to build momentum from the solar wind.&#xA;&#xA;Offers substantial gains in &lt;STELLAR&gt;fuel efficiency&lt;&gt; and &lt;STELLAR&gt;boost&lt;&gt; performance over conventional engine systems. Additionally it enables photovoltaic &lt;STELLAR&gt;recharge&lt;&gt; of the starship's &lt;TECHNOLOGY&gt;launch systems&lt;&gt; while the craft is not in active use."

--------------------------------------------------
-- localization file 8
--------------------------------------------------

-- this functionality is currently bugged in game, I'm leaving the description in case HG comes around to fix it
--[[
-- TECH - changed description of Anti-Gravity Well to mention recharge functionality
TEXT_GRAVITYWELL_RECHARGE = "Gently detaches the starship from gravitational fields, lifting it toward the stars.&#xA; &#xA;The well hungers for &lt;SPECIAL&gt;pugneum&lt;&gt; or &lt;SPECIAL&gt;radiant shards&lt;&gt;, and must be sufficiently fueled before launch. When in slumber, it dreams of realm of &lt;SPECIAL&gt;g l a s s&lt;&gt;, harnessing the otherworldly energy to &lt;STELLAR&gt;recharge&lt;&gt; the starship's transcendental &lt;TECHNOLOGY&gt;launch systems&lt;&gt;.&#xA;&#xA;Hold &lt;IMG&gt;THRUST&lt;&gt; to take off from planet.&#xA;Hold &lt;IMG&gt;BOOST&lt;&gt; to initiate in-flight speed boost."
]]

-- UI - added portal glyph names from Starbirth quest and a "DATA CORRUPTED" label for missing names for the Harmonic Camp glyph dialogue
-- the definitions are already provided in section for localization file 4



----------------------------------------------------------------------------------------------------
-- list used to create a new localization file
----------------------------------------------------------------------------------------------------

LIST_FIXES =
{
    -- localization file 1
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
    WAR_MON_OPT_C_10 = TEXT_MONOLITH_FERRITE,

    -- localization file 3
    UI_PLANTSUB_BARREN_DESC = TEXT_CACTUSFLESH_DESC,
    UI_PLANT_11_DESC = TEXT_NIPNIP_GROWTIME,
    REFINER2_DESC = TEXT_BETTERRATIO_REFINER2,
    REFINER3_DESC = TEXT_BETTERRATIO_REFINER3,
    SHIP_TELEPORT_DESC = TEXT_TELEPORTER_RANGE,
    SENTINEL_MECH_NAME = TEXT_SENTINEL_MECHNAME,

    -- localization file 4
    UI_PIN_HYPERFUEL2_OBJ_TIP = TEXT_CRAFT_HYPERCORE,
    UI_YELLOW_CRYSTAL_NAME = TEXT_SODIUM_CRYSTALS,
    UI_SUB_RECHARGE_DESC = TEXT_SUBMARINE_RECHARGE,
    RECIPE_PLANT_CAVE_CATALYST1 = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_WATER_CATALYST1 = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_CAVE_CATALYST2 = TEXT_NITROGEN_REFINING,
    RECIPE_PLANT_WATER_CATALYST2 = TEXT_NITROGEN_REFINING,
    UI_GUIDE_PORTAL_01_NAME = TEXT_PORTALGLYPH_01,
    UI_GUIDE_PORTAL_02_NAME = TEXT_PORTALGLYPH_02,
    UI_GUIDE_PORTAL_03_NAME = TEXT_PORTALGLYPH_03,
    UI_GUIDE_PORTAL_04_NAME = TEXT_PORTALGLYPH_04,
    UI_GUIDE_PORTAL_05_NAME = TEXT_PORTALGLYPH_05,
    UI_GUIDE_PORTAL_06_NAME = TEXT_PORTALGLYPH_06,
    UI_GUIDE_PORTAL_07_NAME = TEXT_PORTALGLYPH_07,
    UI_GUIDE_PORTAL_08_NAME = TEXT_PORTALGLYPH_08,
    UI_GUIDE_PORTAL_09_NAME = TEXT_PORTALGLYPH_09,
    UI_GUIDE_PORTAL_10_NAME = TEXT_PORTALGLYPH_10,
    UI_GUIDE_PORTAL_11_NAME = TEXT_PORTALGLYPH_11,
    UI_GUIDE_PORTAL_12_NAME = TEXT_PORTALGLYPH_12,
    UI_GUIDE_PORTAL_13_NAME = TEXT_PORTALGLYPH_13,
    UI_GUIDE_PORTAL_14_NAME = TEXT_PORTALGLYPH_14,
    UI_GUIDE_PORTAL_15_NAME = TEXT_PORTALGLYPH_15,
    UI_GUIDE_PORTAL_16_NAME = TEXT_PORTALGLYPH_16,

    -- localization file 5
    ALL_REQUEST_WORD_SAY = TEXT_DIALOGUE_PRACTISE,
    SHIP_LAUNCHER_AUTOCHARGE = TEXT_LAUNCHER_RECHARGE,

    -- localization file 6
    UI_DERELICT1_LABEL = TEXT_DESTROYED_FREIGHTER,
    UI_BIO_SHIP_MISSION3_MSG2C = TEXT_LIVING_WATER,
    UI_BIO_SHIP_MISSION2_MSG2A = TEXT_SOLARRAY_1,
    UI_BIO_SHIP_MISSION2_MSG2B = TEXT_SOLARRAY_2,
    UI_BIO_SHIP_MISSION2_MSG2B2 = TEXT_SOLARRAY_3,
    UI_WEAPON_INV_TOKEN_DESC = TEXT_MULTITOOL_EXPANSION,
    UI_FREIGHT_INV_TOKEN_DESC = TEXT_CARGO_BULKHEAD,
    UI_SUIT_INV_TOKEN_DESC = TEXT_EXOSUIT_EXPANSION,

    -- localization file 7
    UI_MECH_AUTOPILOT_DESC = TEXT_EXOMECH_AI_MODULE,
    UI_MECH_SENT_HEAD_DESC = TEXT_EXOMECH_HARDFRAME,
    UI_SCAN_BLOCKER_SUCCESS = TEXT_CARGOSCAN_SCRAMBLED,
    UP_SENTGUN_DESC = TEXT_WEAPON_SHARD,
    SENTINEL_GUN_NAME_L = TEXT_SENTGUN_NAME,
    UI_OPTIONS_DIFFICULTY_BAN = TEXT_DIFFICULTY_MULTIPLAYER,
    R_NAME_PLANT_CAVE_CATALYST1 = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_WATER_CATALYST1 = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_CAVE_CATALYST2 = TEXT_NITROGEN_REFINING,
    R_NAME_PLANT_WATER_CATALYST2 = TEXT_NITROGEN_REFINING,
    UI_SOLAR_SAIL_DESC = TEXT_SAIL_RECHARGE,

    -- localization file 8
    --UI_LAUNCHER_ROBO_DESC = TEXT_GRAVITYWELL_RECHARGE,
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
-- script data and functions
----------------------------------------------------------------------------------------------------

PREFIX = "FF_MTF"
SUFFIX = "ENGLISH"

--------------------------------------------------
-- data for AMUMMS
--------------------------------------------------

-- path to file
FILE_GLOBAL_DEBUGOPTIONS = "GCDEBUGOPTIONS.GLOBAL.MBIN"

-- link to new localization file
PROPERTY_DEBUG_LOCFILE =
[[
<Property value="NMSString0x20.xml">
    <Property name="Value" value="]]..PREFIX..[[" />
</Property>
]]

-- path to new localization file
FILE_LANG_MISCTEXTFIXES = "LANGUAGE\\" .. PREFIX .. "_" .. SUFFIX .. ".EXML"

--------------------------------------------------
-- function to build the text entries
--------------------------------------------------

function BuildTextProperty(id,value) return
[[
<Property value="TkLocalisationEntry.xml">
    <Property name="Id" value="]]..id..[[" />
    <Property name="English" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
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
</Property>
]]
end

--------------------------------------------------
-- function to build the localization file
--------------------------------------------------

function BuildLocFile(_data)
    local FileStart = [[<Data template="TkLocalisationTable"><Property name="Table">]]
    local FileEnd = [[</Property></Data>]]
    local FileTable = [[]]
    for id,value in next,_data do
        local TextEntry = BuildTextProperty(id,value)
        FileTable = FileTable .. TextEntry
    end
    return FileStart .. FileTable .. FileEnd
end



----------------------------------------------------------------------------------------------------
-- mod container
----------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
    ["MOD_FILENAME"] 	    = "FF_"..METADATA_MOD_NAME.."_"..METADATA_MOD_MODULE.."_"..METADATA_NMS_VERSION..".pak",
    ["MOD_AUTHOR"]		    = METADATA_MOD_AUTHOR,
    ["LUA_AUTHOR"]		    = METADATA_LUA_AUTHOR,
    ["NMS_VERSION"]		    = METADATA_NMS_VERSION,
    ["MOD_DESCRIPTION"]     = METADATA_MOD_DESC,

    ["ADD_FILES"] = 
	{
		{
			["FILE_DESTINATION"] = FILE_LANG_MISCTEXTFIXES,
			["FILE_CONTENT"] = BuildLocFile(LIST_FIXES),
		},		
	},

    ["MODIFICATIONS"] =
    {
        {
            ["MBIN_CHANGE_TABLE"] =
            {
                {
                    ["MBIN_FILE_SOURCE"] = FILE_GLOBAL_DEBUGOPTIONS,
                    ["EXML_CHANGE_TABLE"] = 
                    {
                        {
                            ["PKW"] = "LocTableList",
                            ["ADD"] = PROPERTY_DEBUG_LOCFILE,
                        },
                    },
                },
            }
        }
    },
}

----------------------------------------------------------------------------------------------------
-- end of file
----------------------------------------------------------------------------------------------------