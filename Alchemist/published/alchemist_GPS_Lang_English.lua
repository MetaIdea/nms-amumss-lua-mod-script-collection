-- Original Mod Author Information (translators - do not edit)
Author = "alchemist"
ModName = "GPS"
BaseDescription = [[Overhaul to Freighter, Ship, and Signal Scanner capabilities. Find nearest 
building by type or planet by biome. Optional costs and tech requirements.

https://www.nexusmods.com/nomanssky/mods/2144]]
GameVersion = "4-03"
ModVersion = "2-2-0"

-- =========
-- CONSTANTS
-- =========

LANGUAGE_NAMES = {"English", "French", "Italian", "German", "Spanish", "Russian", "Polish",
  "Dutch", "Portuguese", "LatinAmericanSpanish", "BrazilianPortuguese", "SimplifiedChinese",
  "TraditionalChinese", "TencentChinese", "Korean", "Japanese", "USEnglish"}

-- ========================
-- BEGIN TRANSLATOR SECTION
-- ========================

-- Hello, my name is...
TranslationAuthor = "alchemist"

-- The language provided by this build. Used in the output file name and (possibly)
-- to select which file to inject language entries in to.
--
-- Select from LANGUAGE_NAMES array above.
LanguageName = "English"

-- When 'false', will inject language into existing files, using LanguageFilePrefix.
-- When 'true', will create seperate files for the mod in the LANGUAGE folder.
-- When 'true', adds entries to GCDEBUGOPTIONS.GLOBAL.MBIN to register the new files.
CreateSeperateLanguageFiles = true

-- Whether to create/inject the language entries into just the target language's 
-- file (false), or all language files (true). If true, players will see the 
-- provided strings no matter what language they play in. Should probably be true, 
-- unless you have a specific reason not to. Only used
-- when 'CreateSeperateLanguageFiles = false'.
ForceAllLanguageFiles = true

-- Which group of files from the "Language" directory of the extracted game files to
-- inject the new language entries into. Translators should not change. Only used
-- when 'CreateSeperateLanguageFiles = false'.
LanguageFilePrefix = "NMS_LOC7_"

--[[

# Adding Language Entries

The LANGUAGE_TABLE is a key-value table. When asked to display text, the game will
look up the the key in the player's preferred language file.

Mod Authors: Add key-value pairs. Keys must be unique across the entire game.
Translators: Make changes to the values, do NOT make changes to keys.

  ["KEY"] = "Value",

All entries should be single line strings. If the output should be a multi-line
string, use \n to denote line breaks.

  ["MULTILINE_KEY"] = "This is the first line.\nThis is the second line.",

Line-breaks are especially important in dialogs as it also indicates where to
wait for the player to hit a button to continue reading.

The link below is for a guide on NMS text formatting. This will allow you to change
the color of text or add icons. Format wrappers and icon tags must be in English.

  https://www.nexusmods.com/nomanssky/mods/2134

IMPORTANT: Translators, be sure this file is saved in UTF-8 encoding. Any other
encoding throw errors during the AMUMSS build cycle due to a mismatch with the game
files.

--]]

-- Total keys: 216
LANGUAGE_TABLE = {
  --
  ["ALCH_BIOS_FREI_QRY_CFG"] = "Configure Deep Space Scanning...", --
  ["ALCH_BIOS_FREI_QRY_OFF"] = "Deep Space Scanning Blocked", --
  ["ALCH_BIOS_FREI_QRY_ON"] = "View Scanning Opportunities...", --
  ["ALCH_BIOS_FREI_SCAN_INTRO"] = "What do you think we will find out there?", --
  ["ALCH_BIOS_FREI_TECH_ERR"] = "Feature Unavailable <HIGHLIGHT>//<> Technology Requirement Unfulfilled <HIGHLIGHT>//<> Interstellar Scanner", --
  ["ALCH_BIOS_PORT_ERR_NEED_PASS"] = "Feature Unavailable <HIGHLIGHT>//<> Technology Requirement Unfulfilled <HIGHLIGHT>//<> Atlas Pass", --
  ["ALCH_BIOS_PORT_MENU_HOME_DESC"] = "<STELLAR>Signal Scanner<> <HIGHLIGHT>//<> Enhanced Scanning Tasks ~ <TRADEABLE>AVAILABLE<> <HIGHLIGHT>//<> Awaiting user task selection...", --
  ["ALCH_BIOS_SHIP_MENU_HOME_DESC"] = "<STELLAR>Ship Scanner<> <HIGHLIGHT>//<> Enhanced Scanning Tasks ~ <TRADEABLE>AVAILABLE<> <HIGHLIGHT>//<> Awaiting user task selection...", --
  ["ALCH_BIOS_SHIP_MISSION_DESC"] = "While selected in the <STELLAR>Mission Log<> during <TRADEABLE>flight<>, use scan (<IMG>SCAN<>) to initiate complex <TECHNOLOGY>signal analysis<>.\n\n<TRADEABLE>Atmospheric flight<> may reveal closer sources and enables <TECHNOLOGY>signal sweep mode<> to reveal all targets of a given <SPECIAL>frequency type<>.\n\n<TRADEABLE>Space flight<> enables <TECHNOLOGY>deep space scanning<> allowing the user to locate planets in remote systems that match the given <SPECIAL>query parameters<>.", --
  ["ALCH_BIOS_SHIP_SCAN_OBJ"] = "Initiate Scan", --
  ["ALCH_BIOS_SHIP_SCAN_OBJ_MSG"] = "Complex <TECHNOLOGY>signal analysis<> available\nUse scan (<IMG>SCAN<>) to initiate interface", --
  ["ALCH_BIOS_SHIP_SCAN_OBJ_TIP"] = "Use scan (<IMG>SCAN<>) to initiate complex <TECHNOLOGY>signal analysis<>.", --
  ["ALCH_BIOS_SHIP_SHIP_OBJ"] = "Interface With Ship in Flight", --
  ["ALCH_BIOS_SHIP_SHIP_OBJ_TIP"] = "Ship sensors require <TRADEABLE>space or atmospheric flight<> for complex <TECHNOLOGY>signal analysis<>.", --
  ["ALCH_BIOS_SHIP_SHIP_OBJ_WAIT"] = "Complex <TECHNOLOGY>signal analysis<> <FUEL>unavailable<> <IMG>DANGER<> \n<TRADEABLE>Space or atmospheric flight<> required", --
  ["ALCH_BIOS_SHIP_SPACE_OBJ"] = "Optimal Scanning Conditions", --
  ["ALCH_BIOS_SHIP_SPACE_OBJ_TIP"] = "<IMG>DANGER<> <FUEL>INTERFERENCE DETECTED<>\n<TECHNOLOGY>Signal analysis<> is currently blocked by pulse travel, combatants, or a competing scanning operation.", --
  ["ALCH_BIOS_SHIP_SPACE_OBJ_WAIT"] = "Complex <TECHNOLOGY>signal analysis<> <FUEL>unavailable<> <IMG>DANGER<>", --
  ["ALCH_BIOS_SHIP_SUB_1"] = "Enhanced Scanning Options", --
  ["ALCH_BIOS_SHIP_TITLE_1"] = "Ship Scanning Interface", --
  ["ALCH_FLYBY_PORT_CHAT_END_1"] = "<VISOR>[ Frigate Recon ]<>: -{{ All scans complete. Returning to fleet. }}-", --
  ["ALCH_FLYBY_PORT_CHAT_START_1"] = "<VISOR>[ Frigate Recon ]<>: -{{ Planetary approach complete. Starting scan sequence. }}-", --
  ["ALCH_FLYBY_PORT_FLYBY_DONE"] = "Frigate Recon Expedition Complete", --
  ["ALCH_FLYBY_PORT_FLYBY_OBJ"] = "Maintain Datalink", --
  ["ALCH_FLYBY_PORT_FLYBY_OBJ_TIP"] = "A frigate detachment has been deployed to your location.\nRemain in atmosphere on current planet to prevent datalink disruption.", --
  ["ALCH_FLYBY_PORT_FLYBY_R_OBJ"] = "Download Data Cache", --
  ["ALCH_FLYBY_PORT_FLYBY_R_OBJ_TIP"] = "Frigate detachment has has completed their expedition and returned to the fleet.\nCollect cache of signal fragments from <STELLAR>Signal Scanner<> or <STELLAR>Ship Comms<>.", --
  ["ALCH_FLYBY_PORT_FLYBY_START"] = "Frigate Recon Expedition Active <HIGHLIGHT>//<> Detachment Inbound...", --
  ["ALCH_FLYBY_PORT_FLYBY_WAIT"] = "Competing frigate planetary operation in progress...\nFrigate detachment on hold according to <TECHNOLOGY>clear skies<> protocol.", --
  ["ALCH_FLYBY_PORT_SHIP_COMM"] = "Incoming Fleet Message", --
  ["ALCH_FLYBY_PORT_SUB_1"] = "Planetary Scanning Operation", --
  ["ALCH_FLYBY_PORT_TITLE_1"] = "Frigate Recon Expedition", --
  ["ALCH_PLANET_EXP_SUB_1"] = "Active Deep Space Scan", --
  ["ALCH_RECON_SHIP_RECON_OBJ"] = "Planetary Sweep", --
  ["ALCH_RECON_SHIP_RECON_OBJ_TIP"] = "Remain in atmospheric flight", --
  ["ALCH_SCAN_ERR_PS_ACTIVE"] = "Search Active", --
  ["ALCH_SCAN_ERR_PS_ACTIVE_OSD"] = "ERROR <HIGHLIGHT>//<> SEARCH ACTIVE <HIGHLIGHT>//<> Abandon mission from log", --
  ["ALCH_SCAN_FLYBY_COMM_DESC"] = "Request received Commander. What type of frequencies should we focus on?", --
  ["ALCH_SCAN_GPS_INTRO_OSD"] = "GALACTIC POSITIONING SYSTEM <HIGHLIGHT>//<> <TRADE>ONLINE<>", --
  ["ALCH_SCAN_GRP_ANC_DESC"] = "Tuned for Ancient Sites", --
  ["ALCH_SCAN_GRP_ANC_FLYBY"] = "Confirmed. Focusing on relics of the past. Deploying frigate detachment.", --
  ["ALCH_SCAN_GRP_ANC_FLYBY_DONE"] = "<VISOR>[ Frigate Recon ]<>: -{{ Ancient Sites marked. Data cache available. }}-", --
  ["ALCH_SCAN_GRP_ANC_MENU"] = "Ancient Sites...", --
  ["ALCH_SCAN_GRP_ANC_NAME"] = "Ancient Sites", --
  ["ALCH_SCAN_GRP_BLD_DESC"] = "Tuned for Buildings", --
  ["ALCH_SCAN_GRP_BLD_FLYBY"] = "Confirmed. Focusing on trade and public networks. Deploying frigate detachment.", --
  ["ALCH_SCAN_GRP_BLD_FLYBY_DONE"] = "<VISOR>[ Frigate Recon ]<>: -{{ Building locations marked. Data cache available. }}-", --
  ["ALCH_SCAN_GRP_BLD_MENU"] = "Population Centres...", --
  ["ALCH_SCAN_GRP_BLD_NAME"] = "Population Centres", --
  ["ALCH_SCAN_GRP_SIG_DESC"] = "Tuned for public network signals", --
  ["ALCH_SCAN_GRP_SIG_FLYBY"] = "Confirmed. Focusing on assistance requests and public networks. Deploying frigate detachment.", --
  ["ALCH_SCAN_GRP_SIG_FLYBY_DONE"] = "<VISOR>[ Frigate Recon ]<>: -{{ Signal Sources marked. Data cache available. }}-", --
  ["ALCH_SCAN_GRP_SIG_MENU"] = "Public Broadcasts...", --
  ["ALCH_SCAN_GRP_SIG_NAME"] = "Public Broadcasts", --
  ["ALCH_SCAN_GRP_SVG_DESC"] = "Tuned for Salvage Opportunities", --
  ["ALCH_SCAN_GRP_SVG_FLYBY"] = "Confirmed. Focusing on salvage opportunities and private networks. Deploying friggate detachment.", --
  ["ALCH_SCAN_GRP_SVG_FLYBY_DONE"] = "<VISOR>[ Frigate Recon ]<>: -{{ Salvage locations marked. Data cache available. }}-", --
  ["ALCH_SCAN_GRP_SVG_MENU"] = "Salvage Opportunities...", --
  ["ALCH_SCAN_GRP_SVG_NAME"] = "Salvage Opportunities", --
  ["ALCH_SCAN_GRP_UW_DESC"] = "Tuned for underwater signals", --
  ["ALCH_SCAN_GRP_UW_FLYBY"] = "Confirmed. Focusing on signals with aquatic interference. Deploying frigate detachment.", --
  ["ALCH_SCAN_GRP_UW_FLYBY_DONE"] = "<VISOR>[ Frigate Recon ]<>: -{{ Underwater signals marked. Data cache available. }}-", --
  ["ALCH_SCAN_GRP_UW_MENU"] = "Underwater...", --
  ["ALCH_SCAN_GRP_UW_NAME"] = "Underwater", --
  ["ALCH_SCAN_MENU_CONFIG_CHAT_D"] = "Disable Chat Notifications", --
  ["ALCH_SCAN_MENU_CONFIG_CHAT_E"] = "Enable Chat Notifications", --
  ["ALCH_SCAN_MENU_CONFIG_COST_D"] = "Disable Scan Costs", --
  ["ALCH_SCAN_MENU_CONFIG_COST_E"] = "Enable Scan Costs", --
  ["ALCH_SCAN_MENU_CONFIG_TECH_D"] = "Disable Tech Requirements", --
  ["ALCH_SCAN_MENU_CONFIG_TECH_E"] = "Enable Tech Requirements", --
  ["ALCH_SCAN_MENU_FLEET_RECON"] = "Frigate Reconnaissance...", --
  ["ALCH_SCAN_MENU_FLEET_RECON_ERR"] = "Fleet signal not present in current system or blocked by competing operation.", --
  ["ALCH_SCAN_MENU_OPT_BACK"] = "Back...", --
  ["ALCH_SCAN_MENU_OPT_CONFIG"] = "Settings...", --
  ["ALCH_SCAN_MENU_OPT_HOME"] = "Return...", --
  ["ALCH_SCAN_MENU_OPT_INIT"] = "Initialize...", --
  ["ALCH_SCAN_MENU_OPT_NEXT"] = "More Options...", --
  ["ALCH_SCAN_MENU_OPT_NO"] = "No", --
  ["ALCH_SCAN_MENU_OPT_YES"] = "Yes", --
  ["ALCH_SCAN_MENU_PQ_DESC"] = "Deep Space Scanning <TRADEABLE>AVAILABLE<> ~ Select query archetype...", --
  ["ALCH_SCAN_MENU_PQ_DESC_P"] = "Planetary Deep Space Scanning <TRADEABLE>AVAILABLE<> ~ Select query pattern...", --
  ["ALCH_SCAN_MENU_PQ_DESC_S"] = "System Deep Space Scanning <TRADEABLE>AVAILABLE<> ~ Select query pattern...", --
  ["ALCH_SCAN_MENU_PQ_NAME"] = "Deep Space Scanning...", --
  ["ALCH_SCAN_MENU_PQ_NAME_P"] = "Planet Query...", --
  ["ALCH_SCAN_MENU_PQ_NAME_PB"] = "Biome Pattern Query...", --
  ["ALCH_SCAN_MENU_PQ_NAME_PO"] = "Outlier Pattern Query...", --
  ["ALCH_SCAN_MENU_PQ_NAME_PR"] = "Resource Pattern Query...", --
  ["ALCH_SCAN_MENU_PQ_NAME_S"] = "System Query...", --
  ["ALCH_SCAN_MENU_SCAN_EXACT"] = "Focused Scan...", --
  ["ALCH_SCAN_MENU_SCAN_FAST"] = "Quick Scan...", --
  ["ALCH_SCAN_MENU_SHIP_RANGE_ERR"] = "Deep Space Scanning <HIGHLIGHT>//<> UNAVAILABLE <HIGHLIGHT>//<> Interference detected", --
  ["ALCH_SCAN_MENU_SHIP_RECON"] = "Planetary Sweep...", --
  ["ALCH_SCAN_MENU_SHIP_RECON_DESC"] = "<SPECIAL>Planetary Sweep<> <HIGHLIGHT>//<> Select signal analysis focus...", --
  ["ALCH_SCAN_MENU_SHIP_RECON_ERR"] = "Planetary Sweep <HIGHLIGHT>//<> UNAVAILABLE <HIGHLIGHT>//<> Atmospheric flight required", --
  ["ALCH_SCAN_PIO_GRAVE_TIP"] = "<TITLE>Fallen traveler exosuit signal detected<>\nEcho may have knowledge required for Portal travel", --
  ["ALCH_SCAN_POI_TREA_MENU"] = "Treasure Ruins", --
  ["ALCH_SCAN_POI_UWAB"] = "Submerged Building", --
  ["ALCH_SCAN_POI_UWCF"] = "Submerged Freighter", --
  ["ALCH_SCAN_POI_UWDS"] = "Submerged Ship", --
  ["ALCH_SCAN_POI_UWTR"] = "Submerged Ruins", --
  ["ALCH_SCAN_PO_DESC"] = "<SPECIAL>Outlier<> Pattern Query <HIGHLIGHT>//<> <FUEL>ADVISORY<> ~ Immediate results unlikely <HIGHLIGHT>//<> Consult <STELLAR>Mission Log<> for details", --
  ["ALCH_SCAN_PQ_ACTIVE_OBJ"] = "Query Active", --
  ["ALCH_SCAN_PQ_ACTIVE_OBJ_TIP"] = "Planetary Query subroutines are currently <TRADEABLE>ACTIVE<> and will be invoked during <STELLAR>space flight<>.\nIncrease search coverage through warp travel. Use <IMG>QUICK_MENU<> to open <COMMODITY>Galactic Map<>.", --
  ["ALCH_SCAN_PQ_DESC"] = "<TECHNOLOGY>Biome<> Pattern Query <HIGHLIGHT>//<> Immediate results expected <HIGHLIGHT>//<> Consult <STELLAR>Mission Log<> for details", --
  ["ALCH_SCAN_PQ_GA_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Pirate Controlled System ~ Black Market Economy ~ Undiscovered Planets", --
  ["ALCH_SCAN_PQ_GA_MENU"] = "Black Market", --
  ["ALCH_SCAN_PQ_GA_TITLE"] = "System Query ~ Black Market", --
  ["ALCH_SCAN_PQ_GB_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Populated Wealthy System ~ Undiscovered Planets", --
  ["ALCH_SCAN_PQ_GB_MENU"] = "Wealthy Economy", --
  ["ALCH_SCAN_PQ_GB_TITLE"] = "System Query ~ Wealthy Economy", --
  ["ALCH_SCAN_PQ_OA_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Lush Biome ~ Prime Variant ~ Overgrown Flora ~ Abundant Fauna ~ Passive Sentinels", --
  ["ALCH_SCAN_PQ_OA_MENU"] = "Prime Lush", --
  ["ALCH_SCAN_PQ_OA_TITLE"] = "Planet Query ~ Prime Lush", --
  ["ALCH_SCAN_PQ_OB_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Volcanic Biome ~ Prime Variant ~ Extreme Weather Patterns", --
  ["ALCH_SCAN_PQ_OB_MENU"] = "Prime Volcanic", --
  ["ALCH_SCAN_PQ_OB_TITLE"] = "Planet Query ~ Prime Volcanic", --
  ["ALCH_SCAN_PQ_OC_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Any Infested Biome ~ Prime Variant", --
  ["ALCH_SCAN_PQ_OC_MENU"] = "Prime Infestation", --
  ["ALCH_SCAN_PQ_OC_TITLE"] = "Planet Query ~ Prime Infestation", --
  ["ALCH_SCAN_PQ_PLANET_OBJ"] = "Travel to Planet", --
  ["ALCH_SCAN_PQ_PLANET_OBJ_TIP"] = "A planet matching the given <SPECIAL>query parameters<> has been identified in the <TRADEABLE>current system<>. Enter the planet's atmosphere to complete the mission.\nHold <IMG>ROLLLEFT<> and <IMG>ROLLRIGHT<> together to engage Pulse Jump.", --
  ["ALCH_SCAN_PQ_PLANET_OBJ_WAIT"] = "<TITLE>Query result located in<> <TRADEABLE>current system<>\nEnter the planet's atmosphere to complete the mission", --
  ["ALCH_SCAN_PQ_QA_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Lush Biome", --
  ["ALCH_SCAN_PQ_QA_MENU"] = "Lush", --
  ["ALCH_SCAN_PQ_QA_TITLE"] = "Planet Query ~ Lush", --
  ["ALCH_SCAN_PQ_QB_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Toxic Biome", --
  ["ALCH_SCAN_PQ_QB_MENU"] = "Toxic", --
  ["ALCH_SCAN_PQ_QB_TITLE"] = "Planet Query ~ Toxic", --
  ["ALCH_SCAN_PQ_QC_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Scorched Biome", --
  ["ALCH_SCAN_PQ_QC_MENU"] = "Scorched", --
  ["ALCH_SCAN_PQ_QC_TITLE"] = "Planet Query ~ Scorched", --
  ["ALCH_SCAN_PQ_QD_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Radioactive Biome", --
  ["ALCH_SCAN_PQ_QD_MENU"] = "Radioactive", --
  ["ALCH_SCAN_PQ_QD_TITLE"] = "Planet Query ~ Radioactive", --
  ["ALCH_SCAN_PQ_QE_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Frozen Biome", --
  ["ALCH_SCAN_PQ_QE_MENU"] = "Frozen", --
  ["ALCH_SCAN_PQ_QE_TITLE"] = "Planet Query ~ Frozen", --
  ["ALCH_SCAN_PQ_QF_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Barren Biome", --
  ["ALCH_SCAN_PQ_QF_MENU"] = "Barren", --
  ["ALCH_SCAN_PQ_QF_TITLE"] = "Planet Query ~ Barren", --
  ["ALCH_SCAN_PQ_QG_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Red Biome", --
  ["ALCH_SCAN_PQ_QG_MENU"] = "Red", --
  ["ALCH_SCAN_PQ_QG_TITLE"] = "Planet Query ~ Red", --
  ["ALCH_SCAN_PQ_QH_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Green Biome", --
  ["ALCH_SCAN_PQ_QH_MENU"] = "Green", --
  ["ALCH_SCAN_PQ_QH_TITLE"] = "Planet Query ~ Green", --
  ["ALCH_SCAN_PQ_QI_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Blue Biome", --
  ["ALCH_SCAN_PQ_QI_MENU"] = "Blue", --
  ["ALCH_SCAN_PQ_QI_TITLE"] = "Planet Query ~ Blue", --
  ["ALCH_SCAN_PQ_QJ_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Swamp Biome", --
  ["ALCH_SCAN_PQ_QJ_MENU"] = "Swamp", --
  ["ALCH_SCAN_PQ_QJ_TITLE"] = "Planet Query ~ Swamp", --
  ["ALCH_SCAN_PQ_QK_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Lava Biome", --
  ["ALCH_SCAN_PQ_QK_MENU"] = "Lava", --
  ["ALCH_SCAN_PQ_QK_TITLE"] = "Planet Query ~ Lava", --
  ["ALCH_SCAN_PQ_QL_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Dead Biome", --
  ["ALCH_SCAN_PQ_QL_MENU"] = "Dead", --
  ["ALCH_SCAN_PQ_QL_TITLE"] = "Planet Query ~ Dead", --
  ["ALCH_SCAN_PQ_RA_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Ancient Bones", --
  ["ALCH_SCAN_PQ_RA_MENU"] = "Ancient Bones", --
  ["ALCH_SCAN_PQ_RA_TITLE"] = "Planet Query ~ Ancient Bones", --
  ["ALCH_SCAN_PQ_RB_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Salvageable Scrap", --
  ["ALCH_SCAN_PQ_RB_MENU"] = "Salvageable Scrap", --
  ["ALCH_SCAN_PQ_RB_TITLE"] = "Planet Query ~ Salvageable Scrap", --
  ["ALCH_SCAN_PQ_RC_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Any Biome Not Wierd or Dead ~ Abundant Fauna ~ Low Sentinels", --
  ["ALCH_SCAN_PQ_RC_MENU"] = "Abundant Fauna", --
  ["ALCH_SCAN_PQ_RC_TITLE"] = "Planet Query ~ Abundant Fauna", --
  ["ALCH_SCAN_PQ_RD_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <HIGHLIGHT>//<> Storm Crystals", --
  ["ALCH_SCAN_PQ_RD_MENU"] = "Storm Crystals", --
  ["ALCH_SCAN_PQ_RD_TITLE"] = "Planet Query ~ Storm Crystals", --
  ["ALCH_SCAN_PQ_SEARCH_OBJ"] = "Search Registered with Navigation Computer", --
  ["ALCH_SCAN_PQ_SEARCH_OBJ_TIP"] = "This planetary query has been registered with the ship's navigation computer and will proceed during normal <SPECIAL>space flight<>.\n<STELLAR>ADVISORY<> ~ Portal travel and Nexus missions cause <FUEL>interdimension interference<>. All active queries will be paused for the duration of these activities.", --
  ["ALCH_SCAN_PQ_SYSTEM_OBJ"] = "Travel to System", --
  ["ALCH_SCAN_PQ_SYSTEM_OBJ_TIP"] = "A planet matching the given <SPECIAL>query parameters<> has been identified in a <TECHNOLOGY>remote system<>.\nUse ship or freighter's <STELLAR>Galactic Map<> and travel to the marked system.", --
  ["ALCH_SCAN_PQ_SYSTEM_OBJ_WAIT"] = "<TITLE>Query result located in<> <TECHNOLOGY>remote system<>\nUse ship or freighter's <STELLAR>Galactic Map<> to initiate warp travel", --
  ["ALCH_SCAN_PR_DESC"] = "<TECHNOLOGY>Resource<> Pattern Query <HIGHLIGHT>//<> Immediate results expected <HIGHLIGHT>//<> Consult <STELLAR>Mission Log<> for details", --
  ["ALCH_SCAN_SCAN_EXACT_DESC"] = "Select category for further options.", --
  ["ALCH_SCAN_SCAN_FAST_DESC"] = "Tuned to common signals...", --
  ["ALCH_SCAN_TASK_NOTIF"] = "<TECHNOLOGY>[ System Notification ]<>: <SPECIAL>Deep Space Query<> <HIGHLIGHT>//<> <TITLE>Nearby systems scanned, some queries still<> {{ PENDING MATCH }} <HIGHLIGHT>//<> <TITLE>Hibernating...<>", --
  ["D_ALSCFB_BOOT_LANG"] = "Commander, this freighter's <TECHNOLOGY>DEEP SPACE SCANNING<> system is now available but it requires configuration.\nIf <STELLAR>IMMERSIVE MODE<> is enabled then an <TECHNOLOGY>Interstellar Scanner<> must be installed in this freighter and all scans will require <FUEL>Anomaly Detectors<>. Enable <STELLAR>IMMERSIVE MODE<>?", --
  ["D_ALSCFB_BOOT_RES_A"] = "Confirmed, immersive mode <TRADE>ENABLED<> for freighter <TECHNOLOGY>DEEP SPACE SCANNING<> system. The enhanced scanning interface is now <TRADE>ONLINE<>.", --
  ["D_ALSCFB_BOOT_RES_B"] = "Confirmed, immersive mode <FUEL>DISABLED<> for freighter <TECHNOLOGY>DEEP SPACE SCANNING<> system. The enhanced scanning interface is now <TRADE>ONLINE<>.", --
  ["D_ALSCFB_CONFIG_LANG"] = "Commander, this freighter's <TECHNOLOGY>DEEP SPACE SCANNING<> system can now be reconfigured. What should be changed?", --
  ["D_ALSCFB_CONFIG_RES_A"] = "Confirmed, scan costs set to ENABLED. Anything else, Commander?", --
  ["D_ALSCFB_CONFIG_RES_B"] = "Confirmed, scan costs set to DISABLED. Anything else, Commander?", --
  ["D_ALSCFB_CONFIG_RES_C"] = "Confirmed, technology requirements set to ENABLED. Anything else, Commander?", --
  ["D_ALSCFB_CONFIG_RES_D"] = "Confirmed, technology requirements set to DISABLED. Anything else, Commander?", --
  ["D_ALSCFB_CONFIG_RES_E"] = "Confirmed, chat notifications set to ENABLED. Anything else, Commander?", --
  ["D_ALSCFB_CONFIG_RES_F"] = "Confirmed, chat notifications set to DISABLED. Anything else, Commander?", --
  ["D_ALSCFP_SHIP_R_DESC"] = "Frigate Recon Expedition <HIGHLIGHT>//<> <TRADEABLE>SUCCESS<> <HIGHLIGHT>//<> <TECHNOLOGY>Navigation Data<> cache available", --
  ["D_ALSCFP_SHIP_R_OPT_A"] = "Download", --
  ["D_ALSCPB_BOOT_LANG"] = "Signal Scanner BIOS <HIGHLIGHT>//<> Configuration Required <HIGHLIGHT>//<> Starting configuration wizard...\n<STELLAR>IMMERSIVE MODE<> <HIGHLIGHT>//<> Scans require Navigation Data <HIGHLIGHT>//<> Exact target scan requires Atlas Pass <HIGHLIGHT>//<> Enable immersive mode?", --
  ["D_ALSCPB_BOOT_OPT_A"] = "Enable Immersive Mode", --
  ["D_ALSCPB_BOOT_OPT_B"] = "Disable Immersive Mode", --
  ["D_ALSCPB_BOOT_RES_A"] = "Signal Scanner BIOS <HIGHLIGHT>//<> Immersive mode ENABLED <HIGHLIGHT>//<> Rebooting...", --
  ["D_ALSCPB_BOOT_RES_B"] = "Signal Scanner BIOS <HIGHLIGHT>//<> Immersive mode DISABLED <HIGHLIGHT>//<> Rebooting...", --
  ["D_ALSCPB_CONFIG_LANG"] = "Signal Scanner BIOS <HIGHLIGHT>//<> Select configuration task...", --
  ["D_ALSCPB_CONFIG_OPT_E"] = "Play Title Card", --
  ["D_ALSCPB_CONFIG_RES_A"] = "Signal Scanner BIOS <HIGHLIGHT>//<> Scan costs set to ENABLED <HIGHLIGHT>//<> Rebooting...", --
  ["D_ALSCPB_CONFIG_RES_B"] = "Signal Scanner BIOS <HIGHLIGHT>//<> Scan costs set to DISABLED <HIGHLIGHT>//<> Rebooting...", --
  ["D_ALSCPB_CONFIG_RES_C"] = "Signal Scanner BIOS <HIGHLIGHT>//<> <COMMODITY>Atlas Pass<> requirement set to ENABLED <HIGHLIGHT>//<> Rebooting...", --
  ["D_ALSCPB_CONFIG_RES_D"] = "Signal Scanner BIOS <HIGHLIGHT>//<> <COMMODITY>Atlas Pass<> requirement set to DISABLED <HIGHLIGHT>//<> Rebooting...", --
  ["D_ALSCPB_HOME_OPT_G"] = "Frigate Recon Status...", --
  ["D_ALSCPB_HOME_OPT_H"] = "[ ! ] Download Frigate Data Cache", --
  ["D_ALSCPB_HOME_RES_G"] = "Frigate planetary sweep in progress <HIGHLIGHT>//<> Relaying locations to suit <HIGHLIGHT>//<> Awaiting finalized frigate data cache.", --
  ["D_ALSCPB_UTIL_RES_A"] = "Connecting to Fleet...", --
  ["D_ALSCSB_BOOT_DESC"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Configuration Required <HIGHLIGHT>//<> Starting configuration wizard...\n<STELLAR>IMMERSIVE MODE<> <HIGHLIGHT>//<> Scans require resources <HIGHLIGHT>//<> Exact target scan requires Ship Tech <HIGHLIGHT>//<> Enable immersive mode?", --
  ["D_ALSCSB_BOOT_RES_A"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Immersive mode ENABLED <HIGHLIGHT>//<> Enhanced scanning interface... <TRADE>ONLINE<>", --
  ["D_ALSCSB_BOOT_RES_B"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Immersive mode DISABLED <HIGHLIGHT>//<> Enhanced scanning interface... <TRADE>ONLINE<>", --
  ["D_ALSCSB_CONFIG_LANG"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Select configuration task...", --
  ["D_ALSCSB_CONFIG_RES_A"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Scan costs set to ENABLED", --
  ["D_ALSCSB_CONFIG_RES_B"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Scan costs set to DISABLED", --
  ["D_ALSCSB_CONFIG_RES_C"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Tech Requirements set to ENABLED", --
  ["D_ALSCSB_CONFIG_RES_D"] = "Ship Scanner BIOS <HIGHLIGHT>//<> Tech Requirements set to DISABLED", --
  ["D_ALSCSB_CONFIG_RES_E"] = "Deep Space Scanning <HIGHLIGHT>//<> Chat notifications set to ENABLED", --
  ["D_ALSCSB_CONFIG_RES_F"] = "Deep Space Scanning <HIGHLIGHT>//<> Chat notifications set to DISABLED", --
}

-- ======================================
-- END TRANSLATOR SECTION // BEGIN AMUMSS
-- ======================================

-- this could likely be much better
local function escapeLang(value)
  value = value:gsub("<", "&lt;")
  value = value:gsub(">", "&gt;")
  value = value:gsub("\n", "&#xA;")
  return value
end

local function langEntry(language, value)
  return [[
      <Property name="]]..language..[[" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
      </Property>
]]
end

local function TkLocalisationEntry(lang, id, value)
  local entries = ""
  for i = 1, #LANGUAGE_NAMES do
    if LANGUAGE_NAMES[i] == lang then
      entries = entries..langEntry(LANGUAGE_NAMES[i], escapeLang(value))
    else
      entries = entries..langEntry(LANGUAGE_NAMES[i], "")
    end
  end

  return [[
    <Property value="TkLocalisationEntry.xml">
      <Property name="Id" value="]]..id..[[" />
]]..entries..[[
    </Property>
]]
end

-- build xml with LANGUAGE_TABLE associated with given language
local function buildForLanguage(lang)
  local langOutput = ""
  for key, value in pairs(LANGUAGE_TABLE) do
    langOutput = langOutput..TkLocalisationEntry(lang, key, value)
  end
  return langOutput;
end

-- build pak name
local pakName = ModName.."_Lang_"..LanguageName
if Author ~= TranslationAuthor then
  pakName = ModName.."_"..TranslationAuthor
end

-- actual AMUMSS instructions
NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..pakName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,
["MODIFICATIONS"] = {{ ["MBIN_CHANGE_TABLE"] = {} }}

}

local Ref
if CreateSeperateLanguageFiles == true then
  NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"] = {}
  Ref = NMS_MOD_DEFINITION_CONTAINER["ADD_FILES"]

  local modRef = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
  modRef[#modRef + 1] = {
    ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
    ["EXML_CHANGE_TABLE"] = {
        {
          ["PRECEDING_KEY_WORDS"] = {"LocTableList"},
          ["LINE_OFFSET"] = "+18",
          ["ADD"] = [[
    <Property value="NMSString0x20.xml">
      <Property name="Value" value="]]..Author.."_"..ModName..[[" />
    </Property>]]
        }
    }
  }
else
  Ref = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]
end

-- for if the filename spelling of a language is different than just string.upper()
LANGUAGE_FILENAME_TABLE = {
  ["LatinAmericanSpanish"] = "LATINAMERAICANSPANISH"
}

local function langFilenameSuffix(lang)
  local langFilename
  if LANGUAGE_FILENAME_TABLE[lang] ~= nil then
    langFilename = LANGUAGE_FILENAME_TABLE[lang]
  else
    langFilename = string.upper(lang)
  end
  return langFilename
end

local function addChangeTable(lang)
  local langFilename = langFilenameSuffix(lang)
  Ref[#Ref + 1] = {
    ["MBIN_FILE_SOURCE"] = "LANGUAGE\\"..LanguageFilePrefix..langFilename..".MBIN",
	  ["EXML_CHANGE_TABLE"] = {
      {
        ["PRECEDING_KEY_WORDS"] = {"Table"},
        ["LINE_OFFSET"] = 0,
        ["ADD"] = buildForLanguage(lang)
      },
	  }
  }
end

local function createLanguageFile(lang)
  local langFilename = langFilenameSuffix(lang)
  Ref[#Ref + 1] = {
    ["FILE_DESTINATION"] = "LANGUAGE\\"..Author:upper().."_"..ModName:upper().."_"..langFilename..".EXML",
    ["FILE_CONTENT"] = [[<Data template="TkLocalisationTable">
  <Property name="Table">
]]..buildForLanguage(lang)..[[
  </Property>
</Data>]]
  }
end

if CreateSeperateLanguageFiles == true then
  for i = 1, #LANGUAGE_NAMES do
    createLanguageFile(LANGUAGE_NAMES[i])
  end
else
  if ForceAllLanguageFiles == true then
    for i = 1, #LANGUAGE_NAMES do
      addChangeTable(LANGUAGE_NAMES[i])
    end
  else
    addChangeTable(LanguageName)
  end
end