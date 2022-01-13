LANGUAGE_NAMES = {"English", "French", "Italian", "German", "Spanish", "Russian", "Polish",
  "Dutch", "Portuguese", "LatinAmericanSpanish", "BrazilianPortuguese", "SimplifiedChinese",
  "TraditionalChinese", "TencentChinese", "Korean", "Japanese", "USEnglish"}

-- Original Mod Author Information (Do not edit)
Author = "alchemist"
ModName = "GPS"
BaseDescription = [[Better scanning]]
GameVersion = "3-75"
ModVersion = "1-0-0"

--
-- BEGIN TRANSLATOR SECTION
--

TranslationAuthor = "alchemist"
LanguageName = "English"
LanguageFile = "NMS_LOC7_ENGLISH.MBIN"

-- Total keys: 181
LANGUAGE_TABLE = {
  --
  ["ALCH_BIOS_PORT_ERR_NEED_PASS"] = "Feature Unavailable <IMG>SLASH<> Technology Requirement Unfulfilled <IMG>SLASH<> Atlas Pass", --
  ["ALCH_BIOS_PORT_MENU_HOME_DESC"] = "<STELLAR>Signal Scanner<> <IMG>SLASH<> Enhanced Scanning Tasks ~ <TRADEABLE>AVAILABLE<> <IMG>SLASH<> Awaiting user task selection...", --
  ["ALCH_BIOS_SHIP_MENU_HOME_DESC"] = "<STELLAR>Ship Scanner<> <IMG>SLASH<> Enhanced Scanning Tasks ~ <TRADEABLE>AVAILABLE<> <IMG>SLASH<> Awaiting user task selection...", --
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
  ["ALCH_FLYBY_PORT_FLYBY_CHAT_START"] = "%NAME% has deployed a Frigate Recon Expedition to %PLANET%", --
  ["ALCH_FLYBY_PORT_FLYBY_DONE"] = "Frigate Recon Expedition Complete", --
  ["ALCH_FLYBY_PORT_FLYBY_OBJ"] = "Maintain Datalink", --
  ["ALCH_FLYBY_PORT_FLYBY_OBJ_TIP"] = "A frigate detachment has been deployed to your location.\nRemain in atmosphere on current planet to prevent datalink disruption.", --
  ["ALCH_FLYBY_PORT_FLYBY_R_OBJ"] = "Download Data Cache", --
  ["ALCH_FLYBY_PORT_FLYBY_R_OBJ_TIP"] = "Frigate detachment has has completed their expedition and returned to the fleet.\nCollect cache of signal fragments from <STELLAR>Signal Scanner<> or <STELLAR>Ship Comms<>.", --
  ["ALCH_FLYBY_PORT_FLYBY_START"] = "Frigate Recon Expedition Active <IMG>SLASH<> Detachment Inbound...", --
  ["ALCH_FLYBY_PORT_FLYBY_WAIT"] = "Competing frigate planetary operation in progress...\nFrigate detachment on hold according to <TECHNOLOGY>clear skies<> protocol.", --
  ["ALCH_FLYBY_PORT_SHIP_COMM"] = "Incoming Fleet Message", --
  ["ALCH_FLYBY_PORT_SUB_1"] = "Planetary Scanning Operation", --
  ["ALCH_FLYBY_PORT_TITLE_1"] = "Frigate Recon Expedition", --
  ["ALCH_PLANET_EXP_SUB_1"] = "Active Deep Space Scan", --
  ["ALCH_RECON_SHIP_RECON_OBJ"] = "Planetary Sweep", --
  ["ALCH_RECON_SHIP_RECON_OBJ_TIP"] = "Remain in atmospheric flight", --
  ["ALCH_SCAN_ERR_PS_ACTIVE"] = "Search Active", --
  ["ALCH_SCAN_ERR_PS_ACTIVE_OSD"] = "ERROR <IMG>SLASH<> SEARCH ACTIVE <IMG>SLASH<> Abandon mission from log", --
  ["ALCH_SCAN_FLYBY_COMM_DESC"] = "Request received Commander. What type of frequencies should we focus on?", --
  ["ALCH_SCAN_GPS_INTRO_OSD"] = "GALACTIC POSITIONING SYSTEM", --
  ["ALCH_SCAN_GRP_ANC_DESC"] = "Tuned for Ancient Sites", --
  ["ALCH_SCAN_GRP_ANC_FLYBY"] = "Confirmed. Focusing on relics of the past. Deploying friggate detachment.", --
  ["ALCH_SCAN_GRP_ANC_FLYBY_DONE"] = "Ancient Sites marked. Data cache available.", --
  ["ALCH_SCAN_GRP_ANC_MENU"] = "Ancient Sites...", --
  ["ALCH_SCAN_GRP_ANC_NAME"] = "Ancient Sites", --
  ["ALCH_SCAN_GRP_BLD_DESC"] = "Tuned for Buildings", --
  ["ALCH_SCAN_GRP_BLD_FLYBY"] = "Confirmed. Focusing on trade and public networks. Deploying friggate detachment.", --
  ["ALCH_SCAN_GRP_BLD_FLYBY_DONE"] = "Building locations marked. Data cache available.", --
  ["ALCH_SCAN_GRP_BLD_MENU"] = "Population Centres...", --
  ["ALCH_SCAN_GRP_BLD_NAME"] = "Population Centres", --
  ["ALCH_SCAN_GRP_SIG_DESC"] = "Tuned for public network signals", --
  ["ALCH_SCAN_GRP_SIG_FLYBY"] = "Confirmed. Focusing on assistance requests and public networks. Deploying friggate detachment.", --
  ["ALCH_SCAN_GRP_SIG_FLYBY_DONE"] = "Signal Sources marked. Data cache available.", --
  ["ALCH_SCAN_GRP_SIG_MENU"] = "Public Broadcasts...", --
  ["ALCH_SCAN_GRP_SIG_NAME"] = "Public Broadcasts", --
  ["ALCH_SCAN_GRP_SVG_DESC"] = "Tuned for Salvage Opportunities", --
  ["ALCH_SCAN_GRP_SVG_FLYBY"] = "Confirmed. Focusing on salvage opportunities and private networks. Deploying friggate detachment.", --
  ["ALCH_SCAN_GRP_SVG_FLYBY_DONE"] = "Salvage locations marked. Data cache available.", --
  ["ALCH_SCAN_GRP_SVG_MENU"] = "Salvage Opportunities...", --
  ["ALCH_SCAN_GRP_SVG_NAME"] = "Salvage Opportunities", --
  ["ALCH_SCAN_GRP_UW_DESC"] = "Tuned for underwater signals", --
  ["ALCH_SCAN_GRP_UW_FLYBY"] = "Confirmed. Focusing on signals with aquatic interference. Deploying friggate detachment.", --
  ["ALCH_SCAN_GRP_UW_FLYBY_DONE"] = "Underwater signals marked. Data cache available.", --
  ["ALCH_SCAN_GRP_UW_MENU"] = "Underwater...", --
  ["ALCH_SCAN_GRP_UW_NAME"] = "Underwater", --
  ["ALCH_SCAN_MENU_DEBUG"] = "Debug", --
  ["ALCH_SCAN_MENU_FLEET_RECON"] = "Frigate Reconnaissance...", --
  ["ALCH_SCAN_MENU_FLEET_RECON_ERR"] = "Fleet signal not present in current system or blocked by competing operation.", --
  ["ALCH_SCAN_MENU_OPT_BACK"] = "Back...", --
  ["ALCH_SCAN_MENU_OPT_CONFIG"] = "Settings...", --
  ["ALCH_SCAN_MENU_OPT_HOME"] = "Return...", --
  ["ALCH_SCAN_MENU_OPT_INIT"] = "Initialize...", --
  ["ALCH_SCAN_MENU_OPT_NEXT"] = "More Options...", --
  ["ALCH_SCAN_MENU_OPT_NO"] = "No", --
  ["ALCH_SCAN_MENU_OPT_YES"] = "Yes", --
  ["ALCH_SCAN_MENU_SCAN_EXACT"] = "Focused Scan...", --
  ["ALCH_SCAN_MENU_SCAN_RAND"] = "Quick Scan...", --
  ["ALCH_SCAN_MENU_SHIP_DESC"] = "<SPECIAL>Planetary Sweep<> <IMG>SLASH<> Select signal analysis focus...", --
  ["ALCH_SCAN_MENU_SHIP_RANGE"] = "Deep Space Scanning...", --
  ["ALCH_SCAN_MENU_SHIP_RANGE_DESC"] = "<SPECIAL>Planetary Sweep<> <IMG>SLASH<> Select signal analysis focus...", --
  ["ALCH_SCAN_MENU_SHIP_RANGE_ERR"] = "Deep Space Scanning <IMG>SLASH<> UNAVAILABLE <IMG>SLASH<> Interference detected", --
  ["ALCH_SCAN_MENU_SHIP_RECON"] = "Planetary Sweep...", --
  ["ALCH_SCAN_MENU_SHIP_RECON_ERR"] = "Planetary Sweep <IMG>SLASH<> UNAVAILABLE <IMG>SLASH<> Atmospheric flight required", --
  ["ALCH_SCAN_POI_TREA_MENU"] = "Treasure Ruins", --
  ["ALCH_SCAN_POI_UWAB"] = "Submerged Building", --
  ["ALCH_SCAN_POI_UWCF"] = "Submerged Freighter", --
  ["ALCH_SCAN_POI_UWDS"] = "Submerged Ship", --
  ["ALCH_SCAN_POI_UWTR"] = "Submerged Ruins", --
  ["ALCH_SCAN_PQ_ACTIVE_OBJ"] = "Query Active", --
  ["ALCH_SCAN_PQ_ACTIVE_OBJ_TIP"] = "Planetary Query subroutines are currently <TRADEABLE>ACTIVE<> and will be invoked during <STELLAR>space flight<>.\n\nIncrease search coverage through warp travel. Use <IMG>QUICK_MENU<> to open <COMMODITY>Galactic Map<>.", --
  ["ALCH_SCAN_PQ_DESC"] = "<TECHNOLOGY>Biome<> Pattern Query <IMG>SLASH<> Immediate results expected <IMG>SLASH<> Consult <STELLAR>Mission Log<> for details", --
  ["ALCH_SCAN_PQ_PLANET_OBJ"] = "Travel to Planet", --
  ["ALCH_SCAN_PQ_PLANET_OBJ_TIP"] = "A planet matching the given <SPECIAL>query parameters<> has been identified in the <TRADEABLE>current system<>. Enter the planet's atmosphere to complete the mission.\n\nHold <IMG>ROLLLEFT<> and <IMG>ROLLRIGHT<> together to engage Pulse Jump.", --
  ["ALCH_SCAN_PQ_PLANET_OBJ_WAIT"] = "<TITLE>Query result located in<> <TRADEABLE>current system<>\nEnter the planet's atmosphere to complete the mission", --
  ["ALCH_SCAN_PQ_QA_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Lush Biome", --
  ["ALCH_SCAN_PQ_QA_MENU"] = "Lush", --
  ["ALCH_SCAN_PQ_QA_TITLE"] = "Planet Query ~ Lush", --
  ["ALCH_SCAN_PQ_QB_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Toxic Biome", --
  ["ALCH_SCAN_PQ_QB_MENU"] = "Toxic", --
  ["ALCH_SCAN_PQ_QB_TITLE"] = "Planet Query ~ Toxic", --
  ["ALCH_SCAN_PQ_QC_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Scorched Biome", --
  ["ALCH_SCAN_PQ_QC_MENU"] = "Scorched", --
  ["ALCH_SCAN_PQ_QC_TITLE"] = "Planet Query ~ Scorched", --
  ["ALCH_SCAN_PQ_QD_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Radioactive Biome", --
  ["ALCH_SCAN_PQ_QD_MENU"] = "Radioactive", --
  ["ALCH_SCAN_PQ_QD_TITLE"] = "Planet Query ~ Radioactive", --
  ["ALCH_SCAN_PQ_QE_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Frozen Biome", --
  ["ALCH_SCAN_PQ_QE_MENU"] = "Frozen", --
  ["ALCH_SCAN_PQ_QE_TITLE"] = "Planet Query ~ Frozen", --
  ["ALCH_SCAN_PQ_QF_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Barren Biome", --
  ["ALCH_SCAN_PQ_QF_MENU"] = "Barren", --
  ["ALCH_SCAN_PQ_QF_TITLE"] = "Planet Query ~ Barren", --
  ["ALCH_SCAN_PQ_QG_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Red Biome", --
  ["ALCH_SCAN_PQ_QG_MENU"] = "Red", --
  ["ALCH_SCAN_PQ_QG_TITLE"] = "Planet Query ~ Red", --
  ["ALCH_SCAN_PQ_QH_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Green Biome", --
  ["ALCH_SCAN_PQ_QH_MENU"] = "Green", --
  ["ALCH_SCAN_PQ_QH_TITLE"] = "Planet Query ~ Green", --
  ["ALCH_SCAN_PQ_QI_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Blue Biome", --
  ["ALCH_SCAN_PQ_QI_MENU"] = "Blue", --
  ["ALCH_SCAN_PQ_QI_TITLE"] = "Planet Query ~ Blue", --
  ["ALCH_SCAN_PQ_QJ_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Swamp Biome", --
  ["ALCH_SCAN_PQ_QJ_MENU"] = "Swamp", --
  ["ALCH_SCAN_PQ_QJ_TITLE"] = "Planet Query ~ Swamp", --
  ["ALCH_SCAN_PQ_QK_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Lava Biome", --
  ["ALCH_SCAN_PQ_QK_MENU"] = "Lava", --
  ["ALCH_SCAN_PQ_QK_TITLE"] = "Planet Query ~ Lava", --
  ["ALCH_SCAN_PQ_QL_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Dead Biome", --
  ["ALCH_SCAN_PQ_QL_MENU"] = "Dead", --
  ["ALCH_SCAN_PQ_QL_TITLE"] = "Planet Query ~ Dead", --
  ["ALCH_SCAN_PQ_RA_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Ancient Bones", --
  ["ALCH_SCAN_PQ_RA_MENU"] = "Ancient Bones", --
  ["ALCH_SCAN_PQ_RA_TITLE"] = "Planet Query ~ Ancient Bones", --
  ["ALCH_SCAN_PQ_RB_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Salvageable Scrap", --
  ["ALCH_SCAN_PQ_RB_MENU"] = "Salvageable Scrap", --
  ["ALCH_SCAN_PQ_RB_TITLE"] = "Planet Query ~ Salvageable Scrap", --
  ["ALCH_SCAN_PQ_SEARCH_OBJ"] = "Search Registered with Navigation Computer", --
  ["ALCH_SCAN_PQ_SEARCH_OBJ_TIP"] = "This planetary query has been registered with the ship's navigation computer and will proceed during normal <SPECIAL>space flight<>.\n\n<STELLAR>ADVISORY<> ~ Portal travel and Nexus missions cause <FUEL>interdimension interference<>. All active queries will be paused for the duration of these activities.", --
  ["ALCH_SCAN_PQ_SYSTEM_OBJ"] = "Travel to System", --
  ["ALCH_SCAN_PQ_SYSTEM_OBJ_TIP"] = "A planet matching the given <SPECIAL>query parameters<> has been identified in a <TECHNOLOGY>remote system<>.\n\nUse <IMG>QUICK_MENU<> to open <STELLAR>Galactic Map<> and travel to the marked system.", --
  ["ALCH_SCAN_PQ_SYSTEM_OBJ_WAIT"] = "<TITLE>Query result located in<> <TECHNOLOGY>remote system<>\nUse <IMG>QUICK_MENU<> to open <STELLAR>Galactic Map<>", --
  ["ALCH_SCAN_PQ_ZA_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Lush Biome ~ Large Flora ~ Abundunt Fauna ~ Water ~ Low Sentinels", --
  ["ALCH_SCAN_PQ_ZA_MENU"] = "Debutante", --
  ["ALCH_SCAN_PQ_ZA_TITLE"] = "Planet Query ~ Debutante", --
  ["ALCH_SCAN_PQ_ZB_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> Volcanic Eruptions ~ Extreme Pyroclastic Storms ~ Abandoned ~ Ancient Bones", --
  ["ALCH_SCAN_PQ_ZB_MENU"] = "Reckoner", --
  ["ALCH_SCAN_PQ_ZB_TITLE"] = "Planet Query ~ Reckoner", --
  ["ALCH_SCAN_PQ_ZC_DESC"] = "<SPECIAL>QUERY PARAMETERS<> <IMG>SLASH<> ???kZ? ~ [ERR DIV ZERO]", --
  ["ALCH_SCAN_PQ_ZC_MENU"] = "Voices", --
  ["ALCH_SCAN_PQ_ZC_TITLE"] = "Planet Query ~ Voices", --
  ["ALCH_SCAN_PR_DESC"] = "<TECHNOLOGY>Resource<> Pattern Query <IMG>SLASH<> Immediate results expected <IMG>SLASH<> Consult <STELLAR>Mission Log<> for details", --
  ["ALCH_SCAN_PZ_DESC"] = "<SPECIAL>Complex<> Pattern Query <IMG>SLASH<> <FUEL>ADVISORY<> ~ Immediate results unlikely <IMG>SLASH<> Consult <STELLAR>Mission Log<> for details", --
  ["ALCH_SCAN_SCAN_EXACT_DESC"] = "Select category for further options.", --
  ["ALCH_SCAN_SCAN_RAND_DESC"] = "Scan by POI type.", --
  ["D_ALSCFP_SHIP_R_DESC"] = "Frigate Recon Expedition <IMG>SLASH<> <TRADEABLE>SUCCESS<> <IMG>SLASH<> <TECHNOLOGY>Navigation Data<> cache available", --
  ["D_ALSCFP_SHIP_R_OPT_A"] = "Download", --
  ["D_ALSCPB_BOOT_LANG"] = "Signal Scanner BIOS <IMG>SLASH<> Configuration Required <IMG>SLASH<> Starting configuration wizard...\n<STELLAR>IMMERSIVE MODE<> <IMG>SLASH<> Scans require Navigation Data <IMG>SLASH<> Exact target scan requires Atlas Pass <IMG>SLASH<> Enable immersive mode?", --
  ["D_ALSCPB_BOOT_RES_A"] = "Signal Scanner BIOS <IMG>SLASH<> Immersive mode ENABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCPB_BOOT_RES_B"] = "Signal Scanner BIOS <IMG>SLASH<> Immersive mode DISABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCPB_CONFIG_LANG"] = "Signal Scanner BIOS <IMG>SLASH<> Select configuration task...", --
  ["D_ALSCPB_CONFIG_OPT_A"] = "Enable Scan Costs", --
  ["D_ALSCPB_CONFIG_OPT_B"] = "Disable Scan Costs", --
  ["D_ALSCPB_CONFIG_OPT_C"] = "Enable Atlas Pass Requirement", --
  ["D_ALSCPB_CONFIG_OPT_D"] = "Disable Atlas Pass Requirement", --
  ["D_ALSCPB_CONFIG_OPT_E"] = "Play Title Card", --
  ["D_ALSCPB_CONFIG_RES_A"] = "Signal Scanner BIOS <IMG>SLASH<> Scan costs set to ENABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCPB_CONFIG_RES_B"] = "Signal Scanner BIOS <IMG>SLASH<> Scan costs set to DISABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCPB_CONFIG_RES_C"] = "Signal Scanner BIOS <IMG>SLASH<> <COMMODITY>Atlas Pass<> requirement set to ENABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCPB_CONFIG_RES_D"] = "Signal Scanner BIOS <IMG>SLASH<> <COMMODITY>Atlas Pass<> requirement set to DISABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCPB_UTIL_RES_A"] = "Connecting to Fleet...", --
  ["D_ALSCSB_BOOT_DESC"] = "Ship Scanner BIOS <IMG>SLASH<> Configuration Required <IMG>SLASH<> Starting configuration wizard...\n<STELLAR>IMMERSIVE MODE<> <IMG>SLASH<> Scans require resources <IMG>SLASH<> Exact target scan requires Ship Tech <IMG>SLASH<> Enable immersive mode?", --
  ["D_ALSCSB_BOOT_RES_A"] = "Ship Scanner BIOS <IMG>SLASH<> Immersive mode ENABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCSB_BOOT_RES_B"] = "Ship Scanner BIOS <IMG>SLASH<> Immersive mode DISABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCSB_CONFIG_LANG"] = "Ship Scanner BIOS <IMG>SLASH<> Select configuration task...", --
  ["D_ALSCSB_CONFIG_OPT_A"] = "Enable Scan Costs", --
  ["D_ALSCSB_CONFIG_OPT_B"] = "Disable Scan Costs", --
  ["D_ALSCSB_CONFIG_OPT_C"] = "Enable Tech Requirements", --
  ["D_ALSCSB_CONFIG_OPT_D"] = "Disable Tech Requirements", --
  ["D_ALSCSB_CONFIG_RES_A"] = "Ship Scanner BIOS <IMG>SLASH<> Scan costs set to ENABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCSB_CONFIG_RES_B"] = "Ship Scanner BIOS <IMG>SLASH<> Scan costs set to DISABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCSB_CONFIG_RES_C"] = "Ship Scanner BIOS <IMG>SLASH<> Tech Requirements set to ENABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCSB_CONFIG_RES_D"] = "Ship Scanner BIOS <IMG>SLASH<> Tech Requirements set to ENABLED <IMG>SLASH<> Rebooting...", --
  ["D_ALSCSB_PL_SCAN_DESC"] = "Deep Space Scanning <TRADEABLE>AVAILABLE<> <IMG>SLASH<> Select planetary query pattern...", --
  ["D_ALSCSB_PL_SCAN_OPT_A"] = "Biome Pattern Query...", --
  ["D_ALSCSB_PL_SCAN_OPT_B"] = "Resource Pattern Query...", --
  ["SIGNALSCANNER_OPT_G"] = "Frigate Recon Status...", --
  ["SIGNALSCANNER_OPT_H"] = "[ ! ] Download Frigate Data Cache", --
  ["SIGNALSCANNER_RES_G"] = "Frigate planetary sweep in progress <IMG>SLASH<> Relaying locations to suit <IMG>SLASH<> Awaiting finalized frigate data cache.", --
}

--
-- END TRANSLATOR SECTION // BEGIN AMUMSS
--

local function langEntry(language, value)
  return [[
      <Property name="]]..language..[[" value="VariableSizeString.xml">
        <Property name="Value" value="]]..value..[[" />
      </Property>
]]
end

-- this could likely be much better
-- so far, these are the only things that i have seen that interfere with xml
local function escapeLang(value)
  value = value:gsub("<", "&lt;")
  value = value:gsub(">", "&gt;")
  value = value:gsub("\n", "&#xA;")
  return value
end

local function TkLocalisationEntry(id, value)
  local entries = ""
  for i = 1, #LANGUAGE_NAMES do
    if LANGUAGE_NAMES[i] == LanguageName then
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

local langOutput = ""
for key, value in pairs(LANGUAGE_TABLE) do
  langOutput = langOutput..TkLocalisationEntry(key, value)
end

ModName = ModName.."_Lang_"..LanguageName
if Author ~= TranslationAuthor then
  ModName = ModName.."_"..TranslationAuthor
end

NMS_MOD_DEFINITION_CONTAINER = {

["MOD_FILENAME"]				= Author.."_"..ModName.."_"..GameVersion.."_"..ModVersion..".pak",
["MOD_DESCRIPTION"]			= BaseDescription,
["MOD_AUTHOR"]					= Author,
["NMS_VERSION"]					= GameVersion,

["MODIFICATIONS"]	= {
{["MBIN_CHANGE_TABLE"] = {

	{["MBIN_FILE_SOURCE"] = "LANGUAGE\\"..LanguageFile,
	["EXML_CHANGE_TABLE"] = {

    {["PRECEDING_KEY_WORDS"] = {"Table"},
    ["LINE_OFFSET"] = 0,
    ["ADD"] = langOutput},

	}},

}}}}