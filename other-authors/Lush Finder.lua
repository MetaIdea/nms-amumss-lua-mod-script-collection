-- Lush Finder V3.3.6.45
-- Author: beihaixingchen
-- NMS version: 6.45
-- Mission, localisation, reward, emote, and animation text is generated here.

-- ============================================================================
-- USER-EDITABLE PLANET SEARCH CONFIGURATION
-- Keep CONFIG_TABLE and the three complete search profiles together.
-- Locked values and MXML rendering are handled below this section.
-- ============================================================================

-- {English, Simplified Chinese, Traditional Chinese, BIO, BST, Biome, BiomeSubType, icon}
local CONFIG_TABLE =
{
  {"Random Lush", "随机乐土", "隨機樂土", "LUS", "RDM", "Lush", "None", "TEXTURES/UI/FRONTEND/ICONS/UPDATE1/PRODUCT.LUSHPLANT.DDS"},
  {"Lush Giant (Maybe)", "随机乐土(高巨人率)", "隨機樂土(高巨星率)", "LUS", "GNT", "Lush", "Giant", "TEXTURES/PLANETS/BIOMES/COMMON/BUILDINGS/SHARED/BUILDABLEBUILDINGS/DECALS/PATCH.BLUESYSTEM.DDS"},
  {"Standard Lush", "标准乐土A", "標準樂土A", "LUS", "STD", "Lush", "Standard", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TREE01.DDS"},
  {"High Definition Lush", "标准乐土B", "標準樂土B", "LUS", "HQY", "Lush", "HighQuality", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TREE03.DDS"},
  {"Lushroom A", "稀疏蘑菇乐土", "稀疏蘑菇樂土", "LUS", "VRA", "Lush", "Variant_A", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/LUS.VRA.DDS"},
  {"Lushroom B", "繁茂蘑菇乐土", "繁茂蘑菇樂土", "LUS", "VRB", "Lush", "Variant_B", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/LUS.VRB.DDS"},
  {"Rocky Lush", "石头乐土", "石頭樂土", "LUS", "VRC", "Lush", "Variant_C", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/LUS.VRC.DDS"},
  {"Rocky Weird Lush", "故障石头乐土", "異常石頭樂土", "LUS", "VRD", "Lush", "Variant_D", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.STARJOINT.DDS"},
  {"Tentacled Lush", "海神花乐土", "海神花樂土", "LUS", "HTX", "Lush", "HugeToxic", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.HOUDINIPLANT02.DDS"},
  {"Bubble Lush", "泡泡乐土", "泡泡樂土", "LUS", "BBL", "Lush", "Bubble", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/BUILDABLE.BUBBLECLUSTER.DDS"},
  {"Infested Lush", "寄生乐土", "遭感染的樂土", "LUS", "INF", "Lush", "Infested", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.INFESTEDPLANT01.DDS"},
  {"Huge Tree Lush", "巨树乐土", "巨樹樂土", "LUS", "HGL", "Lush", "HugeLush", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TREE02.DDS"},
  {"Jungle Lush", "丛林乐土", "叢林樂土", "LUS", "WRL", "Lush", "Worlds", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/LUS.WRL.DDS"},
  {"Floating Flower Lush", "浮空花乐土", "浮空花樂土", "LUS", "HGP", "Lush", "HugePlant", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.BIOMEPROP.FLYINGFERN.DDS"},
  {"Floating Islands Lush", "浮空岛乐土", "浮空島樂土", "LUS", "HYD", "Lush", "HydroGarden", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/LUS.HYD.DDS"},
  {"Ruins Lush", "遗迹乐土", "遺跡樂土", "LUS", "STR", "Lush", "Structure", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/RUINS/BUILDABLE.RUINS.07.DDS"},
  {"Swamp-like Lush", "类沼泽乐土", "類沼澤樂土", "SWA", "SWA", "Swamp", "Swamp", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.SWAMPPLANT02.DDS"},
  {"Floating Islands Swamp", "浮空岛沼泽", "浮空島沼澤", "SWA", "RMB", "Swamp", "Remix_B", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/SWA.RMB.DDS"},
  {"Huge Tree Exotic", "巨树异象", "巨樹異常", "GRN", "HGL", "Green", "HugeLush", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.TREE02.DDS"},
  {"Subzero", "寒冷雪地丛林", "寒冷雪地叢林", "FRZ", "WRL", "Frozen", "Worlds", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.BIOMEPROP.SUBZPLANT8.DDS"},
  {"Remix Frozen", "寒冷冰地丛林", "寒冷冰地叢林", "FRZ", "RMA", "Frozen", "Remix_A", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.BIOMEPROP.SUBZPLANT7.DDS"},
  {"Floating Islands Frozen", "寒冷浮空岛", "寒冷浮空島", "FRZ", "RMB", "Frozen", "Remix_B", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/FRZ.RMB.DDS"},
  {"Ruins Frozen", "寒冷遗迹", "寒冷遺跡", "FRZ", "STR", "Frozen", "Structure", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/RUINS/BUILDABLE.RUINS.09.DDS"},
  {"Jungle Barren", "荒凉丛林", "荒凉叢林", "BAR", "WRL", "Barren", "Worlds", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/BAR.WRL.DDS"},
  {"Seabed Barren", "荒凉海床", "荒凉海床", "BAR", "BBL", "Barren", "Bubble", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/BAR.BBL.DDS"},
  {"Peacock Barren", "荒凉棕榈林", "荒凉棕櫚林", "BAR", "HYD", "Barren", "HydroGarden", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.BIOMEPROP.PEACOCK01.DDS"},
  {"Ruins Barren", "荒凉遗迹", "荒凉遺跡", "BAR", "STR", "Barren", "Structure", "TEXTURES/UI/FRONTEND/ICONS/BUILDABLE/RUINS/BUILDABLE.RUINS.06.DDS"},
  {"Seabed Scorched", "炎热海床", "炎熱海床", "SCR", "BBL", "Scorched", "Bubble", "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER/SCR.BBL.DDS"},
  {"Standard Water World", "标准水世界", "標準水世界", "WLD", "STD", "Waterworld", "Standard", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.WATERPLANT01.DDS"},
  {"Frozen Water World", "寒冷水世界", "寒冷水世界", "WLD", "WRL", "Waterworld", "Worlds", "TEXTURES/UI/FRONTEND/ICONS/SPECIALSHOP/SPECIAL.WATERPLANT02.DDS"},
  {"Gas Giant", "气态巨星", "氣態巨行星", "GAS", "STD", "GasGiant", "Standard", "TEXTURES/UI/FRONTEND/COMPONENTS/DISCOVERY/PLANETS.GASGIANT.1.DDS"},
}

-- Pull this field from the current CONFIG_TABLE entry.
local FROM_CONFIG = "FROM_CONFIG"

local SEARCH_CONFIG_STANDARD =
{
  UseStarType = false,
  StarType = {GalaxyStarType = "Yellow"},
  UseRace = {AlienRace = "None"},
  UseAnomaly = {GalaxyStarAnomaly = "None"},
  UseConflict = {ConflictLevel = "Default"},
  UseWealth = false,
  UseTrading = false,
  TradingData = {WealthClass = "Average", TradingClass = "Mining"},
  AllowUnsafeMatches = false,
  NeverAllowEmpty = false,
  NeverAllowAbandoned = false,
  AllowedToBePurpleWithoutAccess = false,
  RequireUndiscovered = true,
  AlwaysAvailableInPirateStations = false,
  NeedsWaterPlanet = true,
  NeedsDeepWaterPlanet = false,
  NeedsPrimePlanet = false,
  NeedsSentinels = false,
  NeedsCorruptSentinelPlanet = false,
  NeedsExtremeSentinelPlanet = false,
  NeverAllowExtremeSentinelPlanet = true,
  NeedsExtremeWeatherPlanet = false,
  NeedsExtremeHazardPlanet = false,
  NeverAllowExtremeWeatherPlanet = true,
  AnyBiomeNotWeirdOrDead = false,
  AnyRGBBiome = false,
  AnyInfestedBiome = false,
  NeedsBiome = true,
  NeedsBiomeType = {Biome = FROM_CONFIG},
  UseBiomeSubType = {BiomeSubType = FROM_CONFIG},
  NeedsEmptySystem = false,
  NeedsAbandonedSystem = false,
  NeedsResourceHint = "",
  SuitableForCreatureDiscovery = false,
  SuitableForWeirdCreatureDiscovery = false,
  SuitableForRobotCreatureDiscovery = false,
  SuitableForCreatureTaming = false,
  NeedsSpecificCreature = "",
  SamePlanetAsEvent = "",
  SamePlanetAsSeasonParty = 0,
  ExcludePlanetsWithEvents = {},
  PreferPlanetWhereStatIsZero = {},
  SystemNeedsResourceHint = "",
  SystemNeedsWater = false,
  SystemNeedsWeirdPlanet = false,
  SystemNeedsInfestedPlanet = false,
  SystemNeedsRelicPlanet = false,
  SystemNeedsCorruptSentinelPlanet = false,
  SystemNeedsExtremeStormPlanet = false,
  SystemNeedsGasGiant = false,
  SystemNeedsNonGasGiant = false,
  NeverAllowGasGiantSystem = false,
  MinPlanets = -1,
}

-- Giant worlds require this profile's locked values; editable fields remain here.
local SEARCH_CONFIG_NONGASGIANT =
{
  UseStarType = true,
  StarType = {GalaxyStarType = "Purple"},
  UseRace = {AlienRace = "None"},
  UseAnomaly = {GalaxyStarAnomaly = "None"},
  UseConflict = {ConflictLevel = "Default"},
  UseWealth = false,
  UseTrading = false,
  TradingData = {WealthClass = "Average", TradingClass = "Mining"},
  NeverAllowEmpty = false,
  NeverAllowAbandoned = false,
  AllowedToBePurpleWithoutAccess = false,
  RequireUndiscovered = true,
  AlwaysAvailableInPirateStations = false,
  NeedsWaterPlanet = true,
  NeedsDeepWaterPlanet = false,
  NeedsPrimePlanet = false,
  NeedsSentinels = false,
  NeedsCorruptSentinelPlanet = false,
  NeedsExtremeSentinelPlanet = false,
  NeverAllowExtremeSentinelPlanet = true,
  NeedsExtremeWeatherPlanet = false,
  NeedsExtremeHazardPlanet = false,
  NeverAllowExtremeWeatherPlanet = true,
  AnyBiomeNotWeirdOrDead = false,
  AnyRGBBiome = false,
  AnyInfestedBiome = false,
  NeedsBiome = true,
  NeedsBiomeType = {Biome = FROM_CONFIG},
  UseBiomeSubType = {BiomeSubType = "None"},
  NeedsEmptySystem = false,
  NeedsAbandonedSystem = false,
  NeedsResourceHint = "",
  SuitableForCreatureDiscovery = false,
  SuitableForWeirdCreatureDiscovery = false,
  SuitableForRobotCreatureDiscovery = false,
  SuitableForCreatureTaming = false,
  NeedsSpecificCreature = "",
  SamePlanetAsEvent = "",
  SamePlanetAsSeasonParty = 0,
  ExcludePlanetsWithEvents = {},
  PreferPlanetWhereStatIsZero = {},
  SystemNeedsResourceHint = "",
  SystemNeedsWater = false,
  SystemNeedsWeirdPlanet = false,
  SystemNeedsInfestedPlanet = false,
  SystemNeedsRelicPlanet = false,
  SystemNeedsCorruptSentinelPlanet = false,
  SystemNeedsExtremeStormPlanet = false,
  NeverAllowGasGiantSystem = false,
  MinPlanets = -1,
}

-- Gas giants require this profile's locked values; editable fields remain here.
local SEARCH_CONFIG_GASGIANT =
{
  UseStarType = false,
  StarType = {GalaxyStarType = "Purple"},
  UseRace = {AlienRace = "None"},
  UseAnomaly = {GalaxyStarAnomaly = "None"},
  UseConflict = {ConflictLevel = "Default"},
  UseWealth = false,
  UseTrading = false,
  TradingData = {WealthClass = "Average", TradingClass = "Mining"},
  AllowUnsafeMatches = false,
  NeverAllowEmpty = false,
  NeverAllowAbandoned = false,
  AllowedToBePurpleWithoutAccess = false,
  RequireUndiscovered = true,
  AlwaysAvailableInPirateStations = false,
  NeedsWaterPlanet = true,
  NeedsDeepWaterPlanet = false,
  NeedsPrimePlanet = false,
  NeedsSentinels = false,
  NeedsCorruptSentinelPlanet = false,
  NeedsExtremeSentinelPlanet = false,
  NeverAllowExtremeSentinelPlanet = true,
  NeedsExtremeWeatherPlanet = false,
  NeedsExtremeHazardPlanet = false,
  AnyBiomeNotWeirdOrDead = false,
  AnyRGBBiome = false,
  AnyInfestedBiome = false,
  NeedsBiome = true,
  NeedsBiomeType = {Biome = FROM_CONFIG},
  UseBiomeSubType = {BiomeSubType = FROM_CONFIG},
  NeedsEmptySystem = false,
  NeedsAbandonedSystem = false,
  NeedsResourceHint = "",
  SuitableForCreatureDiscovery = false,
  SuitableForWeirdCreatureDiscovery = false,
  SuitableForRobotCreatureDiscovery = false,
  SuitableForCreatureTaming = false,
  NeedsSpecificCreature = "",
  SamePlanetAsEvent = "",
  SamePlanetAsSeasonParty = 0,
  ExcludePlanetsWithEvents = {},
  PreferPlanetWhereStatIsZero = {},
  SystemNeedsResourceHint = "",
  SystemNeedsWater = false,
  SystemNeedsWeirdPlanet = false,
  SystemNeedsInfestedPlanet = false,
  SystemNeedsRelicPlanet = false,
  SystemNeedsCorruptSentinelPlanet = false,
  SystemNeedsExtremeStormPlanet = false,
  MinPlanets = -1,
}

-- ============================================================================
-- END USER-EDITABLE PLANET SEARCH CONFIGURATION
-- ============================================================================

local LOCKED_SEARCH_VALUES =
{
  NONGASGIANT =
  {
    AllowUnsafeMatches = true,
    SystemNeedsGasGiant = false,
    SystemNeedsNonGasGiant = true,
  },
  GASGIANT =
  {
    NeverAllowExtremeWeatherPlanet = false,
    SystemNeedsGasGiant = true,
    SystemNeedsNonGasGiant = false,
    NeverAllowGasGiantSystem = false,
  },
}

local SEARCH_LOOKUP_TEMPLATE = [=[
          <Property name="{AttributeName}" value="GcScanEventSolarSystemLookup">
            <Property name="UseStarType" value="{UseStarType}" />
            <Property name="StarType" value="GcGalaxyStarTypes">
              <Property name="GalaxyStarType" value="{GalaxyStarType}" />
            </Property>
            <Property name="UseRace" value="GcAlienRace">
              <Property name="AlienRace" value="{AlienRace}" />
            </Property>
            <Property name="UseAnomaly" value="GcGalaxyStarAnomaly">
              <Property name="GalaxyStarAnomaly" value="{GalaxyStarAnomaly}" />
            </Property>
            <Property name="UseConflict" value="GcPlayerConflictData">
              <Property name="ConflictLevel" value="{ConflictLevel}" />
            </Property>
            <Property name="UseWealth" value="{UseWealth}" />
            <Property name="UseTrading" value="{UseTrading}" />
            <Property name="TradingData" value="GcPlanetTradingData">
              <Property name="WealthClass" value="GcWealthClass">
                <Property name="WealthClass" value="{WealthClass}" />
              </Property>
              <Property name="TradingClass" value="GcTradingClass">
                <Property name="TradingClass" value="{TradingClass}" />
              </Property>
            </Property>
            <Property name="AllowUnsafeMatches" value="{AllowUnsafeMatches}" />
            <Property name="NeverAllowEmpty" value="{NeverAllowEmpty}" />
            <Property name="NeverAllowAbandoned" value="{NeverAllowAbandoned}" />
            <Property name="AllowedToBePurpleWithoutAccess" value="{AllowedToBePurpleWithoutAccess}" />
            <Property name="RequireUndiscovered" value="{RequireUndiscovered}" />
            <Property name="AlwaysAvailableInPirateStations" value="{AlwaysAvailableInPirateStations}" />
            <Property name="NeedsWaterPlanet" value="{NeedsWaterPlanet}" />
            <Property name="NeedsDeepWaterPlanet" value="{NeedsDeepWaterPlanet}" />
            <Property name="NeedsPrimePlanet" value="{NeedsPrimePlanet}" />
            <Property name="NeedsSentinels" value="{NeedsSentinels}" />
            <Property name="NeedsCorruptSentinelPlanet" value="{NeedsCorruptSentinelPlanet}" />
            <Property name="NeedsExtremeSentinelPlanet" value="{NeedsExtremeSentinelPlanet}" />
            <Property name="NeverAllowExtremeSentinelPlanet" value="{NeverAllowExtremeSentinelPlanet}" />
            <Property name="NeedsExtremeWeatherPlanet" value="{NeedsExtremeWeatherPlanet}" />
            <Property name="NeedsExtremeHazardPlanet" value="{NeedsExtremeHazardPlanet}" />
            <Property name="NeverAllowExtremeWeatherPlanet" value="{NeverAllowExtremeWeatherPlanet}" />
            <Property name="AnyBiomeNotWeirdOrDead" value="{AnyBiomeNotWeirdOrDead}" />
            <Property name="AnyRGBBiome" value="{AnyRGBBiome}" />
            <Property name="AnyInfestedBiome" value="{AnyInfestedBiome}" />
            <Property name="NeedsBiome" value="{NeedsBiome}" />
            <Property name="NeedsBiomeType" value="GcBiomeType">
              <Property name="Biome" value="{Biome}" />
            </Property>
            <Property name="UseBiomeSubType" value="GcBiomeSubType">
              <Property name="BiomeSubType" value="{BiomeSubType}" />
            </Property>
            <Property name="NeedsEmptySystem" value="{NeedsEmptySystem}" />
            <Property name="NeedsAbandonedSystem" value="{NeedsAbandonedSystem}" />
            <Property name="NeedsResourceHint" value="{NeedsResourceHint}" />
            <Property name="SuitableForCreatureDiscovery" value="{SuitableForCreatureDiscovery}" />
            <Property name="SuitableForWeirdCreatureDiscovery" value="{SuitableForWeirdCreatureDiscovery}" />
            <Property name="SuitableForRobotCreatureDiscovery" value="{SuitableForRobotCreatureDiscovery}" />
            <Property name="SuitableForCreatureTaming" value="{SuitableForCreatureTaming}" />
            <Property name="NeedsSpecificCreature" value="{NeedsSpecificCreature}" />
            <Property name="SamePlanetAsEvent" value="{SamePlanetAsEvent}" />
            <Property name="SamePlanetAsSeasonParty" value="{SamePlanetAsSeasonParty}" />
{ExcludePlanetsWithEvents}
{PreferPlanetWhereStatIsZero}
            <Property name="SystemNeedsResourceHint" value="{SystemNeedsResourceHint}" />
            <Property name="SystemNeedsWater" value="{SystemNeedsWater}" />
            <Property name="SystemNeedsWeirdPlanet" value="{SystemNeedsWeirdPlanet}" />
            <Property name="SystemNeedsInfestedPlanet" value="{SystemNeedsInfestedPlanet}" />
            <Property name="SystemNeedsRelicPlanet" value="{SystemNeedsRelicPlanet}" />
            <Property name="SystemNeedsCorruptSentinelPlanet" value="{SystemNeedsCorruptSentinelPlanet}" />
            <Property name="SystemNeedsExtremeStormPlanet" value="{SystemNeedsExtremeStormPlanet}" />
            <Property name="SystemNeedsGasGiant" value="{SystemNeedsGasGiant}" />
            <Property name="SystemNeedsNonGasGiant" value="{SystemNeedsNonGasGiant}" />
            <Property name="NeverAllowGasGiantSystem" value="{NeverAllowGasGiantSystem}" />
            <Property name="MinPlanets" value="{MinPlanets}" />
          </Property>
]=]

local ICON_SOURCE = [[.\LushFinderIcons\*.DDS]]
local SYSTEM_SCAN_PROP_MODEL = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/CUSTOM/LUSHFINDER/SYSTEMSCAN.SCENE.MBIN"

local mode_input = GUIF({
  "F",
  [[Please select mission mode (F/S/R, default F):
F - Full mission (complete when entering planet)
S - Short mission (complete when entering system)
R - Auto restart (complete when entering system)]]
}) or "F"
local mode = string.upper(tostring(mode_input):gsub("^%s+", ""):gsub("%s+$", ""))
if mode ~= "F" and mode ~= "S" and mode ~= "R" then
  mode = "F"
end

local mode_name = {
  F = "Full Mission",
  S = "Short Mission",
  R = "Auto Restart",
}
local mod_filename = "Lush Finder V3.3.6.45 (" .. mode_name[mode] .. ")"

local function xml_attr(value)
  return tostring(value)
    :gsub("&", "&amp;")
    :gsub("\"", "&quot;")
    :gsub("<", "&lt;")
    :gsub(">", "&gt;")
end

local function render_search_list(name, values)
  if type(values) ~= "table" then
    error("Search config field " .. name .. " must be a table")
  end
  if #values == 0 then
    return '            <Property name="' .. name .. '" />'
  end

  local lines = {'            <Property name="' .. name .. '">'}
  for index, value in ipairs(values) do
    lines[#lines + 1] = '              <Property name="' .. name .. '" value="' ..
      xml_attr(value) .. '" _index="' .. (index - 1) .. '" />'
  end
  lines[#lines + 1] = "            </Property>"
  return table.concat(lines, "\n")
end

local function render_search_lookup(attribute_name, profile_name, config, biome, biome_subtype)
  local values = {}
  for key, value in pairs(config) do
    values[key] = value
  end
  for key, value in pairs(LOCKED_SEARCH_VALUES[profile_name] or {}) do
    values[key] = value
  end

  local tokens = {AttributeName = xml_attr(attribute_name)}
  for key, value in pairs(values) do
    if type(value) ~= "table" then
      tokens[key] = xml_attr(value)
    end
  end

  tokens.GalaxyStarType = xml_attr(values.StarType.GalaxyStarType)
  tokens.AlienRace = xml_attr(values.UseRace.AlienRace)
  tokens.GalaxyStarAnomaly = xml_attr(values.UseAnomaly.GalaxyStarAnomaly)
  tokens.ConflictLevel = xml_attr(values.UseConflict.ConflictLevel)
  tokens.WealthClass = xml_attr(values.TradingData.WealthClass)
  tokens.TradingClass = xml_attr(values.TradingData.TradingClass)
  tokens.Biome = xml_attr(values.NeedsBiomeType.Biome == FROM_CONFIG and biome or values.NeedsBiomeType.Biome)
  tokens.BiomeSubType = xml_attr(values.UseBiomeSubType.BiomeSubType == FROM_CONFIG and biome_subtype or values.UseBiomeSubType.BiomeSubType)
  tokens.ExcludePlanetsWithEvents = render_search_list("ExcludePlanetsWithEvents", values.ExcludePlanetsWithEvents)
  tokens.PreferPlanetWhereStatIsZero = render_search_list("PreferPlanetWhereStatIsZero", values.PreferPlanetWhereStatIsZero)

  return (SEARCH_LOOKUP_TEMPLATE:gsub("{([%w_]+)}", function(key)
    if tokens[key] == nil then
      error("Missing search config field: " .. key)
    end
    return tokens[key]
  end))
end

local MISSION_HEADER = [=[
    <Property name="Missions" value="GcGenericMissionSequence" _id="{ID}_MID">
      <Property name="MissionID" value="{ID}_MID" />
      <Property name="MissionClass" value="Secondary" />
      <Property name="MissionIsCritical" value="false" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList">
        <Property name="Format" value="{ID}_TTL" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList">
        <Property name="Format" value="FINDER_SUB_%d" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList">
        <Property name="Format" value="{ID}_DSC" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
        <Property name="ApplicableSeasonNumbers" />
        <Property name="MissionTitle" value="" />
        <Property name="MissionSubtitle" value="" />
        <Property name="MissionDescription" value="" />
      </Property>
      <Property name="MissionDescSwitchOverride" value="" />
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="false" />
      <Property name="UseFirstPurpleSystemDetailsInLogInfo" value="false" />
      <Property name="MissionIcon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.ON.DDS" />
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.ON.DDS" />
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.OFF.DDS" />
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="false" />
      <Property name="MissionColourOverride">
        <Property name="R" value="1.000000" />
        <Property name="G" value="1.000000" />
        <Property name="B" value="1.000000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="WikiMissionBlockedBySeasons" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
        <Property name="AmountMin" value="0" />
        <Property name="AmountMax" value="0" />
        <Property name="AmountShouldBeRoundNumber" value="false" />
      </Property>
      <Property name="PrefixTitle" value="true" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions">
        <Property name="Type" value="GcMissionType">
          <Property name="MissionType" value="SpaceCombat" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="false" />
        <Property name="IsGuildShopMission" value="false" />
        <Property name="IsPlanetProcMission" value="false" />
        <Property name="IsMultiplayerEventMission" value="false" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="0" />
        <Property name="IgnoreCalculatedObjective" value="false" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="None" />
      <Property name="RestartOnCompletion" value="false" />
      <Property name="CancelSetsComplete" value="false" />
      <Property name="Dialog" value="GcAlienPuzzleTable">
        <Property name="Table" />
      </Property>
]=]

local SCAN_EVENT_PREFIX = [=[
      <Property name="ScanEvents">
        <Property name="ScanEvents" value="GcScanEventData" _index="0">
          <Property name="Name" value="{ID}_SCE" />
          <Property name="ForceInteraction" value="" />
          <Property name="UseSeasonDataAsInteraction" value="false" />
          <Property name="ForceInteractionType" value="GcInteractionType">
            <Property name="InteractionType" value="None" />
          </Property>
          <Property name="NPCReactsToPlayer" value="false" />
          <Property name="RequireInteractionRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="OverrideInteractionRace" value="GcAlienRace">
            <Property name="AlienRace" value="None" />
          </Property>
          <Property name="MustMatchStoryUtilityPuzzle" value="" />
          <Property name="ForceBroken" value="false" />
          <Property name="ForceFixed" value="false" />
          <Property name="ReplacementMaintData" value="" />
          <Property name="ForceReplaceStoryPortalSeed" value="false" />
          <Property name="ForceOverridesAll" value="true" />
          <Property name="ForceOverrideEncounter" value="" />
          <Property name="IsCommunityPortalOverride" value="false" />
          <Property name="ClearForcedInteractionOnCompletion" value="false" />
          <Property name="BuildingPreventionRadius" value="0.000000" />
          <Property name="UseMissionTradingDataOverride" value="false" />
          <Property name="AlwaysShow" value="true" />
          <Property name="NeverShow" value="false" />
          <Property name="ShowOnlyIfSequenceTarget" value="false" />
          <Property name="PlanetLabelText" value="" />
          <Property name="SurveyDistance" value="0.000000" />
          <Property name="SurveyDiscoveryOSDMessage" value="UI_MISSIONMARKER_DISC_OSD" />
          <Property name="SurveyHUDName" value="UI_MISSIONSURVEY_HUD_SUB" />
          <Property name="EventStartType" value="Special" />
          <Property name="EventEndType" value="None" />
          <Property name="EventPriority" value="Regular" />
          <Property name="CanEndFromOutsideMission" value="false" />
          <Property name="DisableMultiplayerSync" value="true" />
          <Property name="BlockStartedOnUseEvents" value="false" />
          <Property name="ReplaceEventIfAlreadyActive" value="false" />
          <Property name="BuildingLocation" value="PlanetSearch" />
          <Property name="SearchType" value="FindBuildingClass" />
          <Property name="SpecificBuildingClass" value="GcBuildingClassification">
            <Property name="BuildingClass" value="Portal" />
          </Property>
          <Property name="AllowFriendsBases" value="false" />
          <Property name="ForceWideRandom" value="false" />
          <Property name="MustFindSystem" value="true" />
          <Property name="AllowOverriddenBuildings" value="true" />
          <Property name="TargetMustMatchMissionSeed" value="false" />
          <Property name="UseBuildingFromRendezvousStage" value="false" />
          <Property name="SolarSystemLocation" value="Near" />
]=]

local SCAN_EVENT_SUFFIX = [=[
          <Property name="ForceRestartInteraction" value="true" />
          <Property name="ForceResetPortal" value="false" />
          <Property name="HasReward" value="" />
          <Property name="NextOption" value="" />
          <Property name="TriggerActions" value="GcScanEventTriggers">
            <Property name="Range" value="0.000000" />
            <Property name="Triggers" />
            <Property name="AllowRetrigger" value="false" />
          </Property>
          <Property name="UAsList" />
          <Property name="TechShopType" value="GcTechnologyCategory">
            <Property name="TechnologyCategory" value="All" />
          </Property>
          <Property name="OSDMessage" value="{ID}_TTL" />
          <Property name="InterstellarOSDMessage" value="SCANEVENT_ANOTHER_SYSTEM" />
          <Property name="MarkerLabel" value="{ID}_TTL" />
          <Property name="MarkerIcon" value="TkTextureResource">
            <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
            <Property name="ResHandle" value="GcResource">
              <Property name="ResourceID" value="0" />
            </Property>
          </Property>
          <Property name="MissionMarkerHighlightStyleOverride" value="GcScannerIconHighlightTypes">
            <Property name="ScannerIconHighlightType" value="Diamond" />
          </Property>
          <Property name="StartTime" value="0.000000" />
          <Property name="MessageTime" value="0.000000" />
          <Property name="MessageDisplayTime" value="4.000000" />
          <Property name="MessageAudio" value="GcAudioWwiseEvents">
            <Property name="AkEvent" value="VO_TUT_COORDSRECEIVED" />
          </Property>
          <Property name="IconTime" value="4.000000" />
          <Property name="TooltipTime" value="10.000000" />
          <Property name="TooltipRepeats" value="false" />
          <Property name="ShowEndTooltip" value="true" />
          <Property name="TooltipMessage" value="" />
          <Property name="MissionMessageOnInteract" value="" />
          <Property name="ResourceOverride" value="GcResourceElement">
            <Property name="Filename" value="" />
            <Property name="ResHandle" value="GcResource">
              <Property name="ResourceID" value="0" />
            </Property>
            <Property name="Seed" value="NONE" />
            <Property name="ProceduralTexture" value="TkProceduralTextureChosenOptionList">
              <Property name="Samplers" />
            </Property>
            <Property name="AltId" value="" />
          </Property>
        </Property>
      </Property>
      <Property name="Rewards" />
      <Property name="Costs" />
      <Property name="TradingDataOverride" value="GcTradeData">
        <Property name="AlwaysPresentProducts" />
        <Property name="AlwaysPresentSubstances" />
        <Property name="OptionalProducts" />
        <Property name="OptionalSubstances" />
        <Property name="AlwaysConsideredBarterProducts" />
        <Property name="BarterAcceptanceCurve" value="TkCurveType">
          <Property name="Curve" value="Linear" />
        </Property>
        <Property name="BarterPriceMultiplier" value="1.000000" />
        <Property name="BarterItemPreferenceFloor" value="0.500000" />
        <Property name="MinItemsForSale" value="5" />
        <Property name="MaxItemsForSale" value="15" />
        <Property name="PercentageOfItemsAreProducts" value="0.300000" />
        <Property name="BuyPriceIncreaseRedThreshold" value="20.000000" />
        <Property name="BuyPriceDecreaseGreenThreshold" value="-10.000000" />
        <Property name="SellPriceIncreaseGreenThreshold" value="10.000000" />
        <Property name="SellPriceDecreaseRedThreshold" value="-20.000000" />
        <Property name="ShowSeasonRewards" value="false" />
        <Property name="UseBarterForBuy" value="false" />
        <Property name="MinAmountOfProductAvailable">
          <Property name="Poor" value="10" />
          <Property name="Average" value="10" />
          <Property name="Wealthy" value="10" />
          <Property name="Pirate" value="10" />
        </Property>
        <Property name="MaxAmountOfProductAvailable">
          <Property name="Poor" value="100" />
          <Property name="Average" value="100" />
          <Property name="Wealthy" value="100" />
          <Property name="Pirate" value="100" />
        </Property>
        <Property name="MinAmountOfSubstanceAvailable">
          <Property name="Poor" value="100" />
          <Property name="Average" value="100" />
          <Property name="Wealthy" value="100" />
          <Property name="Pirate" value="100" />
        </Property>
        <Property name="MaxAmountOfSubstanceAvailable">
          <Property name="Poor" value="1000" />
          <Property name="Average" value="1000" />
          <Property name="Wealthy" value="1000" />
          <Property name="Pirate" value="1000" />
        </Property>
        <Property name="MinExtraSystemProducts">
          <Property name="Poor" value="2" />
          <Property name="Average" value="2" />
          <Property name="Wealthy" value="2" />
          <Property name="Pirate" value="2" />
        </Property>
        <Property name="MaxExtraSystemProducts">
          <Property name="Poor" value="4" />
          <Property name="Average" value="4" />
          <Property name="Wealthy" value="4" />
          <Property name="Pirate" value="4" />
        </Property>
        <Property name="TradeProductsPriceImprovements">
          <Property name="Poor" value="0" />
          <Property name="Average" value="0" />
          <Property name="Wealthy" value="0" />
          <Property name="Pirate" value="0" />
        </Property>
      </Property>
]=]

local PRE_WARP_FLOW = [=[
      <Property name="StartConditionTest" value="GcMissionConditionTest">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="false" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
            <Property name="GcMissionSequenceShowMissionUpdateMessage">
              <Property name="MissionUpdateMessage" value="Start" />
              <Property name="CustomMessageLocID" value="" />
              <Property name="CustomObjectiveLocID" value="" />
              <Property name="SetMissionSelected" value="true" />
              <Property name="WaitForMessageOver" value="false" />
              <Property name="ShowChangeMissionNotify" value="true" />
              <Property name="SuppressNotificationsNotFromThisMission" value="true" />
              <Property name="PlayMusicSting" value="Start" />
              <Property name="DebugText" value="" />
            </Property>
          </Property>
        </Property>
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceGroup">
            <Property name="GcMissionSequenceGroup">
              <Property name="Silent" value="false" />
              <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="FINDER_SEARCH_OBJ" />
              <Property name="ObjectiveTipID" value="FINDER_ACTIVE_OBJ_TIP" />
              <Property name="HasCategoryOverride" value="false" />
              <Property name="OverrideCategory" value="GcMissionCategory">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="false" />
              <Property name="ColourOverride">
                <Property name="R" value="1.000000" />
                <Property name="G" value="1.000000" />
                <Property name="B" value="1.000000" />
                <Property name="A" value="1.000000" />
              </Property>
              <Property name="PrefixTitle" value="false" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="false" />
              <Property name="AutoPinRepairs" value="false" />
              <Property name="BlockSpaceBattles" value="false" />
              <Property name="ConditionTest" value="GcMissionConditionTest">
                <Property name="ConditionTest" value="AllTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="false" />
              <Property name="DoConsequencesIfNeverActivated" value="true" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                <Property name="SurveyInactiveHint" value="" />
                <Property name="SurveySwapHint" value="" />
                <Property name="SurveyHint" value="" />
                <Property name="SurveyVehicleHint" value="" />
                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                <Property name="HasCustomNotifyTimer" value="false" />
                <Property name="NotifyDisplayTime" value="0.000000" />
                <Property name="NotifyPauseTime" value="0.000000" />
              </Property>
              <Property name="Conditions">
                <Property name="Conditions" value="GcMissionConditionMissionMessage">
                  <Property name="GcMissionConditionMissionMessage">
                    <Property name="Message" value="" />
                    <Property name="MessageToFormatSeasonalIDInto" value="" />
                  </Property>
                </Property>
              </Property>
              <Property name="Consequences" />
              <Property name="Stages">
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceStartScanEvent">
                    <Property name="GcMissionSequenceStartScanEvent">
                      <Property name="Table" value="GcScanEventTableType">
                        <Property name="ScanTable" value="Tutorial" />
                      </Property>
                      <Property name="Participant" value="GcPlayerMissionParticipantType">
                        <Property name="ParticipantType" value="None" />
                      </Property>
                      <Property name="Event" value="{ID}_SCE" />
                      <Property name="Time" value="1.000000" />
                      <Property name="DoAerialScan" value="false" />
                      <Property name="AllowOtherPlayersBase" value="false" />
                      <Property name="IgnoreIfAlreadyActive" value="false" />
                      <Property name="DebugText" value="" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceGroup">
            <Property name="GcMissionSequenceGroup">
              <Property name="Silent" value="false" />
              <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="FINDER_SYSTEM_OBJ" />
              <Property name="ObjectiveTipID" value="FINDER_SYSTEM_OBJ_TIP" />
              <Property name="HasCategoryOverride" value="false" />
              <Property name="OverrideCategory" value="GcMissionCategory">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="false" />
              <Property name="ColourOverride">
                <Property name="R" value="1.000000" />
                <Property name="G" value="1.000000" />
                <Property name="B" value="1.000000" />
                <Property name="A" value="1.000000" />
              </Property>
              <Property name="PrefixTitle" value="false" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="false" />
              <Property name="AutoPinRepairs" value="false" />
              <Property name="BlockSpaceBattles" value="false" />
              <Property name="ConditionTest" value="GcMissionConditionTest">
                <Property name="ConditionTest" value="AnyTrue" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="false" />
              <Property name="DoConsequencesIfNeverActivated" value="true" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                <Property name="SurveyInactiveHint" value="" />
                <Property name="SurveySwapHint" value="" />
                <Property name="SurveyHint" value="" />
                <Property name="SurveyVehicleHint" value="" />
                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                <Property name="HasCustomNotifyTimer" value="false" />
                <Property name="NotifyDisplayTime" value="0.000000" />
                <Property name="NotifyPauseTime" value="0.000000" />
              </Property>
              <Property name="Conditions">
                <Property name="Conditions" value="GcMissionConditionIsScanEventLocal">
                  <Property name="GcMissionConditionIsScanEventLocal">
                    <Property name="Event" value="{ID}_SCE" />
                    <Property name="RequiresFullFireteam" value="false" />
                  </Property>
                </Property>
              </Property>
              <Property name="Consequences" />
              <Property name="Stages">
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceWait">
                    <Property name="GcMissionSequenceWait">
                      <Property name="Time" value="1.000000" />
                      <Property name="DebugText" value="" />
                      <Property name="SuppressMessages" value="false" />
                      <Property name="MultiplyTimeBySeasonValue" value="false" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceQuickWarp">
                    <Property name="GcMissionSequenceQuickWarp">
                      <Property name="MessageWarping" value="UI_NOTIFY_QUICKWARPING" />
                      <Property name="MessageCannotWarp" value="FINDER_SYSTEM_OBJ_WAIT" />
                      <Property name="ScanEventToWarpTo" value="{ID}_SCE" />
                      <Property name="SequenceTime" value="1.000000" />
                      <Property name="EffectTime" value="1.000000" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
]=]

local FULL_POST_WARP_FLOW = [=[
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceGroup">
            <Property name="GcMissionSequenceGroup">
              <Property name="Silent" value="true" />
              <Property name="Icon" value="TkTextureResource">
                <Property name="Filename" value="" />
                <Property name="ResHandle" value="GcResource">
                  <Property name="ResourceID" value="0" />
                </Property>
              </Property>
              <Property name="PageHint" value="GcMissionPageHint">
                <Property name="MissionPageHint" value="None" />
              </Property>
              <Property name="PageDataLocID" value="" />
              <Property name="BuildMenuHint" value="" />
              <Property name="InventoryHint" value="" />
              <Property name="TerrainTarget" value="" />
              <Property name="DebugText" value="" />
              <Property name="ObjectiveID" value="FINDER_SYSTEM_OBJ" />
              <Property name="ObjectiveTipID" value="FINDER_SYSTEM_OBJ_TIP" />
              <Property name="HasCategoryOverride" value="false" />
              <Property name="OverrideCategory" value="GcMissionCategory">
                <Property name="MissionCategory" value="Mission" />
              </Property>
              <Property name="HasColourOverride" value="false" />
              <Property name="ColourOverride">
                <Property name="R" value="1.000000" />
                <Property name="G" value="1.000000" />
                <Property name="B" value="1.000000" />
                <Property name="A" value="1.000000" />
              </Property>
              <Property name="PrefixTitle" value="false" />
              <Property name="PrefixTitleText" value="" />
              <Property name="BlockPinning" value="false" />
              <Property name="AutoPinRepairs" value="false" />
              <Property name="BlockSpaceBattles" value="false" />
              <Property name="ConditionTest" value="GcMissionConditionTest">
                <Property name="ConditionTest" value="AnyFalse" />
              </Property>
              <Property name="HideFromLogIfConditionsMet" value="false" />
              <Property name="DoConsequencesIfNeverActivated" value="true" />
              <Property name="RepeatLogic" value="None" />
              <Property name="IconStyle" value="Default" />
              <Property name="GalMapPathOverride" value="None" />
              <Property name="SpecialButtonIcon" value="TkInputEnum">
                <Property name="InputButton" value="None" />
              </Property>
              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                <Property name="FormattableObjective" value="" />
                <Property name="FormattableObjectiveTip" value="" />
              </Property>
              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                <Property name="ApplicableSeasonNumbers" />
                <Property name="OverrideObjective" value="" />
                <Property name="OverrideObjectiveTip" value="" />
              </Property>
              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                <Property name="TargetMissionSurveyId" value="" />
                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                <Property name="SurveyInactiveHint" value="" />
                <Property name="SurveySwapHint" value="" />
                <Property name="SurveyHint" value="" />
                <Property name="SurveyVehicleHint" value="" />
                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
              </Property>
              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                <Property name="HasCustomNotifyTimer" value="false" />
                <Property name="NotifyDisplayTime" value="0.000000" />
                <Property name="NotifyPauseTime" value="0.000000" />
              </Property>
              <Property name="Conditions" />
              <Property name="Consequences" />
              <Property name="Stages">
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceGroup">
                    <Property name="GcMissionSequenceGroup">
                      <Property name="Silent" value="false" />
                      <Property name="Icon" value="TkTextureResource">
                        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PLANET.DDS" />
                        <Property name="ResHandle" value="GcResource">
                          <Property name="ResourceID" value="0" />
                        </Property>
                      </Property>
                      <Property name="PageHint" value="GcMissionPageHint">
                        <Property name="MissionPageHint" value="None" />
                      </Property>
                      <Property name="PageDataLocID" value="" />
                      <Property name="BuildMenuHint" value="" />
                      <Property name="InventoryHint" value="" />
                      <Property name="TerrainTarget" value="" />
                      <Property name="DebugText" value="" />
                      <Property name="ObjectiveID" value="FINDER_SYSTEM_OBJ1" />
                      <Property name="ObjectiveTipID" value="FINDER_SYSTEM_OBJ_TIP1" />
                      <Property name="HasCategoryOverride" value="false" />
                      <Property name="OverrideCategory" value="GcMissionCategory">
                        <Property name="MissionCategory" value="Mission" />
                      </Property>
                      <Property name="HasColourOverride" value="false" />
                      <Property name="ColourOverride">
                        <Property name="R" value="1.000000" />
                        <Property name="G" value="1.000000" />
                        <Property name="B" value="1.000000" />
                        <Property name="A" value="1.000000" />
                      </Property>
                      <Property name="PrefixTitle" value="false" />
                      <Property name="PrefixTitleText" value="" />
                      <Property name="BlockPinning" value="false" />
                      <Property name="AutoPinRepairs" value="false" />
                      <Property name="BlockSpaceBattles" value="false" />
                      <Property name="ConditionTest" value="GcMissionConditionTest">
                        <Property name="ConditionTest" value="AnyTrue" />
                      </Property>
                      <Property name="HideFromLogIfConditionsMet" value="false" />
                      <Property name="DoConsequencesIfNeverActivated" value="true" />
                      <Property name="RepeatLogic" value="None" />
                      <Property name="IconStyle" value="Default" />
                      <Property name="GalMapPathOverride" value="None" />
                      <Property name="SpecialButtonIcon" value="TkInputEnum">
                        <Property name="InputButton" value="None" />
                      </Property>
                      <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                        <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                        <Property name="FormattableObjective" value="" />
                        <Property name="FormattableObjectiveTip" value="" />
                      </Property>
                      <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                        <Property name="ApplicableSeasonNumbers" />
                        <Property name="OverrideObjective" value="" />
                        <Property name="OverrideObjectiveTip" value="" />
                      </Property>
                      <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                        <Property name="TargetMissionSurveyId" value="" />
                        <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                        <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                        <Property name="SurveyInactiveHint" value="" />
                        <Property name="SurveySwapHint" value="" />
                        <Property name="SurveyHint" value="" />
                        <Property name="SurveyVehicleHint" value="" />
                        <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
                      </Property>
                      <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                        <Property name="HasCustomNotifyTimer" value="false" />
                        <Property name="NotifyDisplayTime" value="0.000000" />
                        <Property name="NotifyPauseTime" value="0.000000" />
                      </Property>
                      <Property name="Conditions">
                        <Property name="Conditions" value="GcMissionConditionMissionMessage">
                          <Property name="GcMissionConditionMissionMessage">
                            <Property name="Message" value="M_01_01_ARVL" />
                            <Property name="MessageToFormatSeasonalIDInto" value="" />
                          </Property>
                        </Property>
                      </Property>
                      <Property name="Consequences" />
                      <Property name="Stages">
                        <Property name="Stages" value="GcGenericMissionStage">
                          <Property name="Versions" />
                          <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
                            <Property name="GcMissionSequenceShowMissionUpdateMessage">
                              <Property name="MissionUpdateMessage" value="Start" />
                              <Property name="CustomMessageLocID" value="" />
                              <Property name="CustomObjectiveLocID" value="" />
                              <Property name="SetMissionSelected" value="true" />
                              <Property name="WaitForMessageOver" value="false" />
                              <Property name="ShowChangeMissionNotify" value="false" />
                              <Property name="SuppressNotificationsNotFromThisMission" value="false" />
                              <Property name="PlayMusicSting" value="None" />
                              <Property name="DebugText" value="" />
                            </Property>
                          </Property>
                        </Property>
                        <Property name="Stages" value="GcGenericMissionStage">
                          <Property name="Versions" />
                          <Property name="Stage" value="GcMissionSequenceGroup">
                            <Property name="GcMissionSequenceGroup">
                              <Property name="Silent" value="true" />
                              <Property name="Icon" value="TkTextureResource">
                                <Property name="Filename" value="" />
                                <Property name="ResHandle" value="GcResource">
                                  <Property name="ResourceID" value="0" />
                                </Property>
                              </Property>
                              <Property name="PageHint" value="GcMissionPageHint">
                                <Property name="MissionPageHint" value="None" />
                              </Property>
                              <Property name="PageDataLocID" value="" />
                              <Property name="BuildMenuHint" value="" />
                              <Property name="InventoryHint" value="" />
                              <Property name="TerrainTarget" value="" />
                              <Property name="DebugText" value="" />
                              <Property name="ObjectiveID" value="" />
                              <Property name="ObjectiveTipID" value="" />
                              <Property name="HasCategoryOverride" value="false" />
                              <Property name="OverrideCategory" value="GcMissionCategory">
                                <Property name="MissionCategory" value="Mission" />
                              </Property>
                              <Property name="HasColourOverride" value="false" />
                              <Property name="ColourOverride">
                                <Property name="R" value="1.000000" />
                                <Property name="G" value="1.000000" />
                                <Property name="B" value="1.000000" />
                                <Property name="A" value="1.000000" />
                              </Property>
                              <Property name="PrefixTitle" value="false" />
                              <Property name="PrefixTitleText" value="" />
                              <Property name="BlockPinning" value="false" />
                              <Property name="AutoPinRepairs" value="false" />
                              <Property name="BlockSpaceBattles" value="false" />
                              <Property name="ConditionTest" value="GcMissionConditionTest">
                                <Property name="ConditionTest" value="AnyFalse" />
                              </Property>
                              <Property name="HideFromLogIfConditionsMet" value="false" />
                              <Property name="DoConsequencesIfNeverActivated" value="true" />
                              <Property name="RepeatLogic" value="Loop" />
                              <Property name="IconStyle" value="Default" />
                              <Property name="GalMapPathOverride" value="None" />
                              <Property name="SpecialButtonIcon" value="TkInputEnum">
                                <Property name="InputButton" value="None" />
                              </Property>
                              <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                                <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                                <Property name="FormattableObjective" value="" />
                                <Property name="FormattableObjectiveTip" value="" />
                              </Property>
                              <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                                <Property name="ApplicableSeasonNumbers" />
                                <Property name="OverrideObjective" value="" />
                                <Property name="OverrideObjectiveTip" value="" />
                              </Property>
                              <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                                <Property name="TargetMissionSurveyId" value="" />
                                <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                                <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                                <Property name="SurveyInactiveHint" value="" />
                                <Property name="SurveySwapHint" value="" />
                                <Property name="SurveyHint" value="" />
                                <Property name="SurveyVehicleHint" value="" />
                                <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
                              </Property>
                              <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                                <Property name="HasCustomNotifyTimer" value="false" />
                                <Property name="NotifyDisplayTime" value="0.000000" />
                                <Property name="NotifyPauseTime" value="0.000000" />
                              </Property>
                              <Property name="Conditions" />
                              <Property name="Consequences" />
                              <Property name="Stages">
                                <Property name="Stages" value="GcGenericMissionStage">
                                  <Property name="Versions" />
                                  <Property name="Stage" value="GcMissionSequenceWaitForConditions">
                                    <Property name="GcMissionSequenceWaitForConditions">
                                      <Property name="Message" value="FINDER_SYSTEM_OBJ_WAIT1" />
                                      <Property name="ConditionTest" value="GcMissionConditionTest">
                                        <Property name="ConditionTest" value="AnyTrue" />
                                      </Property>
                                      <Property name="Conditions">
                                        <Property name="Conditions" value="GcMissionConditionIsScanEventLocal">
                                          <Property name="GcMissionConditionIsScanEventLocal">
                                            <Property name="Event" value="{ID}_SCE" />
                                            <Property name="RequiresFullFireteam" value="false" />
                                          </Property>
                                        </Property>
                                      </Property>
                                      <Property name="AllowedToFormatObjectives" value="false" />
                                      <Property name="ForceAllowMissionRestart" value="false" />
                                      <Property name="ForceAllowMissionRestartEvent" value="" />
                                      <Property name="DebugText" value="" />
                                      <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
                                        <Property name="MissionMarkup" value="None" />
                                      </Property>
                                    </Property>
                                  </Property>
                                </Property>
                                <Property name="Stages" value="GcGenericMissionStage">
                                  <Property name="Versions" />
                                  <Property name="Stage" value="GcMissionSequenceGroup">
                                    <Property name="GcMissionSequenceGroup">
                                      <Property name="Silent" value="false" />
                                      <Property name="Icon" value="TkTextureResource">
                                        <Property name="Filename" value="TEXTURES/UI/HUD/ICONS/MISSIONS/MISSION.PORTAL.DDS" />
                                        <Property name="ResHandle" value="GcResource">
                                          <Property name="ResourceID" value="0" />
                                        </Property>
                                      </Property>
                                      <Property name="PageHint" value="GcMissionPageHint">
                                        <Property name="MissionPageHint" value="None" />
                                      </Property>
                                      <Property name="PageDataLocID" value="" />
                                      <Property name="BuildMenuHint" value="" />
                                      <Property name="InventoryHint" value="" />
                                      <Property name="TerrainTarget" value="" />
                                      <Property name="DebugText" value="" />
                                      <Property name="ObjectiveID" value="FINDER_PLANET_OBJ" />
                                      <Property name="ObjectiveTipID" value="FINDER_PLANET_OBJ_TIP" />
                                      <Property name="HasCategoryOverride" value="false" />
                                      <Property name="OverrideCategory" value="GcMissionCategory">
                                        <Property name="MissionCategory" value="Mission" />
                                      </Property>
                                      <Property name="HasColourOverride" value="false" />
                                      <Property name="ColourOverride">
                                        <Property name="R" value="1.000000" />
                                        <Property name="G" value="1.000000" />
                                        <Property name="B" value="1.000000" />
                                        <Property name="A" value="1.000000" />
                                      </Property>
                                      <Property name="PrefixTitle" value="false" />
                                      <Property name="PrefixTitleText" value="" />
                                      <Property name="BlockPinning" value="false" />
                                      <Property name="AutoPinRepairs" value="false" />
                                      <Property name="BlockSpaceBattles" value="false" />
                                      <Property name="ConditionTest" value="GcMissionConditionTest">
                                        <Property name="ConditionTest" value="AnyFalse" />
                                      </Property>
                                      <Property name="HideFromLogIfConditionsMet" value="false" />
                                      <Property name="DoConsequencesIfNeverActivated" value="true" />
                                      <Property name="RepeatLogic" value="None" />
                                      <Property name="IconStyle" value="Default" />
                                      <Property name="GalMapPathOverride" value="None" />
                                      <Property name="SpecialButtonIcon" value="TkInputEnum">
                                        <Property name="InputButton" value="None" />
                                      </Property>
                                      <Property name="ObjectiveFormatting" value="GcObjectiveTextFormatOptions">
                                        <Property name="ObjectivesCanBeFormattedBySequences" value="false" />
                                        <Property name="FormattableObjective" value="" />
                                        <Property name="FormattableObjectiveTip" value="" />
                                      </Property>
                                      <Property name="SeasonalObjectiveOverrides" value="GcSeasonalObjectiveOverrides">
                                        <Property name="ApplicableSeasonNumbers" />
                                        <Property name="OverrideObjective" value="" />
                                        <Property name="OverrideObjectiveTip" value="" />
                                      </Property>
                                      <Property name="SurveyTarget" value="GcTargetMissionSurveyOptions">
                                        <Property name="TargetMissionSurveyId" value="" />
                                        <Property name="TargetMissionSurveyDefinitelyExists" value="false" />
                                        <Property name="TargetMissionSurveyDefinitelyExistsWithResourceHint" value="false" />
                                        <Property name="SurveyInactiveHint" value="" />
                                        <Property name="SurveySwapHint" value="" />
                                        <Property name="SurveyHint" value="" />
                                        <Property name="SurveyVehicleHint" value="" />
                                        <Property name="ForceSurveyTextForAllSequencesInThisGroup" value="false" />
                                      </Property>
                                      <Property name="CustomNotifyTimers" value="GcCustomNotifyTimerOptions">
                                        <Property name="HasCustomNotifyTimer" value="false" />
                                        <Property name="NotifyDisplayTime" value="0.000000" />
                                        <Property name="NotifyPauseTime" value="0.000000" />
                                      </Property>
                                      <Property name="Conditions">
                                        <Property name="Conditions" value="GcMissionConditionIsScanEventLocal">
                                          <Property name="GcMissionConditionIsScanEventLocal">
                                            <Property name="Event" value="{ID}_SCE" />
                                            <Property name="RequiresFullFireteam" value="false" />
                                          </Property>
                                        </Property>
                                      </Property>
                                      <Property name="Consequences" />
                                      <Property name="Stages">
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
                                            <Property name="GcMissionSequenceShowMissionUpdateMessage">
                                              <Property name="MissionUpdateMessage" value="Start" />
                                              <Property name="CustomMessageLocID" value="" />
                                              <Property name="CustomObjectiveLocID" value="" />
                                              <Property name="SetMissionSelected" value="true" />
                                              <Property name="WaitForMessageOver" value="false" />
                                              <Property name="ShowChangeMissionNotify" value="false" />
                                              <Property name="SuppressNotificationsNotFromThisMission" value="false" />
                                              <Property name="PlayMusicSting" value="None" />
                                              <Property name="DebugText" value="" />
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceWaitForConditions">
                                            <Property name="GcMissionSequenceWaitForConditions">
                                              <Property name="Message" value="FINDER_PLANET_OBJ_WAIT" />
                                              <Property name="ConditionTest" value="GcMissionConditionTest">
                                                <Property name="ConditionTest" value="AnyTrue" />
                                              </Property>
                                              <Property name="Conditions">
                                                <Property name="Conditions" value="GcMissionConditionIsScanEventOnCurrentPlanet">
                                                  <Property name="GcMissionConditionIsScanEventOnCurrentPlanet">
                                                    <Property name="Event" value="{ID}_SCE" />
                                                    <Property name="AllowInShip" value="true" />
                                                  </Property>
                                                </Property>
                                              </Property>
                                              <Property name="AllowedToFormatObjectives" value="false" />
                                              <Property name="ForceAllowMissionRestart" value="false" />
                                              <Property name="ForceAllowMissionRestartEvent" value="" />
                                              <Property name="DebugText" value="" />
                                              <Property name="StatusMessageMissionMarkup" value="GcStatusMessageMissionMarkup">
                                                <Property name="MissionMarkup" value="None" />
                                              </Property>
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceBroadcastMessage">
                                            <Property name="GcMissionSequenceBroadcastMessage">
                                              <Property name="DebugText" value="" />
                                              <Property name="MessageID" value="M_01_01_ARVL" />
                                              <Property name="Seeded" value="true" />
                                              <Property name="SendToAllMatchingSeeds" value="false" />
                                              <Property name="Multiplayer" value="false" />
                                              <Property name="CanSendToInactive" value="false" />
                                              <Property name="BroadcastToActiveMultiplayerMission" value="false" />
                                            </Property>
                                          </Property>
                                        </Property>
                                        <Property name="Stages" value="GcGenericMissionStage">
                                          <Property name="Versions" />
                                          <Property name="Stage" value="GcMissionSequenceWait">
                                            <Property name="GcMissionSequenceWait">
                                              <Property name="Time" value="3.000000" />
                                              <Property name="DebugText" value="" />
                                              <Property name="SuppressMessages" value="false" />
                                              <Property name="MultiplyTimeBySeasonValue" value="false" />
                                            </Property>
                                          </Property>
                                        </Property>
                                      </Property>
                                    </Property>
                                  </Property>
                                </Property>
                              </Property>
                            </Property>
                          </Property>
                        </Property>
                      </Property>
                    </Property>
                  </Property>
                </Property>
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceEndScanEvent">
                    <Property name="GcMissionSequenceEndScanEvent">
                      <Property name="Event" value="{ID}_SCE" />
                      <Property name="DebugText" value="" />
                    </Property>
                  </Property>
                </Property>
                <Property name="Stages" value="GcGenericMissionStage">
                  <Property name="Versions" />
                  <Property name="Stage" value="GcMissionSequenceShowMissionUpdateMessage">
                    <Property name="GcMissionSequenceShowMissionUpdateMessage">
                      <Property name="MissionUpdateMessage" value="End" />
                      <Property name="CustomMessageLocID" value="" />
                      <Property name="CustomObjectiveLocID" value="" />
                      <Property name="SetMissionSelected" value="false" />
                      <Property name="WaitForMessageOver" value="false" />
                      <Property name="ShowChangeMissionNotify" value="false" />
                      <Property name="SuppressNotificationsNotFromThisMission" value="false" />
                      <Property name="PlayMusicSting" value="End" />
                      <Property name="DebugText" value="" />
                    </Property>
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
]=]

local MISSION_TAIL = [=[
      <Property name="ForcesPageHint" value="false" />
      <Property name="ForcesBuildMenuHint" value="false" />
      <Property name="IsLegacy" value="false" />
      <Property name="BlocksPinning" value="false" />
      <Property name="CanRenounce" value="false" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
      <Property name="TelemetryUpload" value="false" />
      <Property name="UseSeasonTitleOverride" value="false" />
    </Property>
]=]

local RESTART_MISSION_FLOW = [=[
    <Property name="Missions" value="GcGenericMissionSequence" _id="R_{ID}_MID">
      <Property name="MissionID" value="R_{ID}_MID" />
      <Property name="MissionClass" value="Secondary" />
      <Property name="MissionIsCritical" value="false" />
      <Property name="MissionObjective" value="" />
      <Property name="MissionTitles" value="GcNumberedTextList">
        <Property name="Format" value="AUTO_RESTART_TTL" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionSubtitles" value="GcNumberedTextList">
        <Property name="Format" value="FINDER_SUB_%d" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionDescriptions" value="GcNumberedTextList">
        <Property name="Format" value="{ID}_DSC" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="SeasonalLogTextOverrides" value="GcSeasonalLogOverrides">
        <Property name="ApplicableSeasonNumbers" />
        <Property name="MissionTitle" value="" />
        <Property name="MissionSubtitle" value="" />
        <Property name="MissionDescription" value="" />
      </Property>
      <Property name="MissionDescSwitchOverride" value="" />
      <Property name="MissionProcDescriptionHeader" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionA" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionB" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="MissionProcDescriptionC" value="GcNumberedTextList">
        <Property name="Format" value="" />
        <Property name="Count" value="1" />
      </Property>
      <Property name="UseScanEventDetailsInLogInfo" value="false" />
      <Property name="MissionIcon" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.ON.DDS" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconSelected" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.ON.DDS" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionIconNotSelected" value="TkTextureResource">
        <Property name="Filename" value="TEXTURES/UI/FRONTEND/ICONS/MISSIONS/MISSION.PIN.OFF.DDS" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="MissionPriority" value="0" />
      <Property name="MissionCategory" value="GcMissionCategory">
        <Property name="MissionCategory" value="Mission" />
      </Property>
      <Property name="MissionPageHint" value="GcMissionPageHint">
        <Property name="MissionPageHint" value="None" />
      </Property>
      <Property name="MissionPageLocID" value="" />
      <Property name="MissionBuildMenuHint" value="" />
      <Property name="MissionHasColourOverride" value="false" />
      <Property name="MissionColourOverride" value="Colour">
        <Property name="R" value="1.000000" />
        <Property name="G" value="1.000000" />
        <Property name="B" value="1.000000" />
        <Property name="A" value="1.000000" />
      </Property>
      <Property name="BeginCheckFrequency" value="1" />
      <Property name="WikiMissionBlockedBySeasons" />
      <Property name="DefaultItems" value="GcDefaultMissionItemsTable">
        <Property name="PrimarySubstances" />
        <Property name="SecondarySubstances" />
        <Property name="PrimaryProducts" />
        <Property name="SecondaryProducts" />
        <Property name="AmountMin" value="0" />
        <Property name="AmountMax" value="0" />
        <Property name="AmountShouldBeRoundNumber" value="false" />
      </Property>
      <Property name="PrefixTitle" value="true" />
      <Property name="NextMissionHint" value="" />
      <Property name="MessageComplete" value="Never" />
      <Property name="MessageStart" value="Never" />
      <Property name="MissionBoardOptions" value="GcMissionBoardOptions">
        <Property name="Type" value="GcMissionType">
          <Property name="MissionType" value="SpaceCombat" />
        </Property>
        <Property name="Difficulty" value="GcMissionDifficulty">
          <Property name="MissionDifficulty" value="Normal" />
        </Property>
        <Property name="MinRank" value="0" />
        <Property name="CloseMissionGiver" value="false" />
        <Property name="IsGuildShopMission" value="false" />
        <Property name="IsPlanetProcMission" value="false" />
        <Property name="IsMultiplayerEventMission" value="false" />
        <Property name="RewardPenaltyOnAbandon" value="" />
        <Property name="Faction" />
        <Property name="Weighting" value="0" />
        <Property name="IgnoreCalculatedObjective" value="false" />
        <Property name="MultiplayerMissionInitialWarpScanEvent" value="" />
        <Property name="DefaultItemInitialWarpScanEvents" />
        <Property name="DefaultItemTypeForInitialWarp" value="None" />
        <Property name="BasePartBlueprints" />
      </Property>
      <Property name="AutoStart" value="None" />
      <Property name="RestartOnCompletion" value="true" />
      <Property name="CancelSetsComplete" value="false" />
      <Property name="Dialog" value="GcAlienPuzzleTable">
        <Property name="Table" />
      </Property>
      <Property name="StartConditionTest" value="GcMissionConditionTest">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="CancelConditionTest" value="GcMissionConditionTest">
        <Property name="ConditionTest" value="AnyFalse" />
      </Property>
      <Property name="StartIsCancel" value="false" />
      <Property name="StartingConditions" />
      <Property name="CancelingConditions" />
      <Property name="FinalStageVersions" />
      <Property name="Stages">
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceStartMission">
            <Property name="GcMissionSequenceStartMission">
              <Property name="MissionID" value="{ID}_MID" />
              <Property name="Restart" value="true" />
            </Property>
          </Property>
        </Property>
        <Property name="Stages" value="GcGenericMissionStage">
          <Property name="Versions" />
          <Property name="Stage" value="GcMissionSequenceWait">
            <Property name="GcMissionSequenceWait">
              <Property name="Time" value="1.000000" />
              <Property name="DebugText" value="" />
              <Property name="SuppressMessages" value="false" />
              <Property name="MultiplyTimeBySeasonValue" value="false" />
            </Property>
          </Property>
        </Property>
      </Property>
      <Property name="ForcesPageHint" value="false" />
      <Property name="ForcesBuildMenuHint" value="false" />
      <Property name="IsProceduralAllowed" value="false" />
      <Property name="IsRecurring" value="false" />
      <Property name="IsLegacy" value="false" />
      <Property name="BlocksPinning" value="false" />
      <Property name="CanRenounce" value="false" />
      <Property name="UseCommunityMissionForLog" value="" />
      <Property name="TakeCommunityMissionIDFromSeasonData" value="false" />
      <Property name="TelemetryUpload" value="false" />
      <Property name="UseSeasonTitleOverride" value="false" />
    </Property>
]=]

local function render_mission_fragment(fragment, id)
  return (fragment:gsub("{ID}", id))
end

local function build_mission_table()
  local missions = {}

  for _, entry in ipairs(CONFIG_TABLE) do
    local profile_name
    local search_config
    if entry[6] == "GasGiant" then
      profile_name = "GASGIANT"
      search_config = SEARCH_CONFIG_GASGIANT
    elseif entry[7] == "Giant" then
      profile_name = "NONGASGIANT"
      search_config = SEARCH_CONFIG_NONGASGIANT
    else
      profile_name = "STANDARD"
      search_config = SEARCH_CONFIG_STANDARD
    end

    local id = entry[4] .. "_" .. entry[5]
    local search_lookup_xml =
      render_search_lookup("SolarSystemAttributes", profile_name, search_config, entry[6], entry[7]) ..
      render_search_lookup("SolarSystemAttributesFallback", profile_name, search_config, entry[6], entry[7])
    local stage_after_warp = mode == "F" and FULL_POST_WARP_FLOW or "      </Property>\n"
    local normal_mission = MISSION_HEADER
      .. SCAN_EVENT_PREFIX
      .. search_lookup_xml
      .. SCAN_EVENT_SUFFIX
      .. PRE_WARP_FLOW
      .. stage_after_warp
      .. MISSION_TAIL

    table.insert(missions, render_mission_fragment(normal_mission, id))
    table.insert(missions, render_mission_fragment(RESTART_MISSION_FLOW, id))
  end

  return [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cGcMissionTable">
  <Property name="Missions">]] .. table.concat(missions) .. [[  </Property>
</Data>
]]
end

local function mission_id(entry)
  return entry[4] .. "_" .. entry[5] .. "_MID"
end

local function reward_id(entry)
  return entry[4] .. "_" .. entry[5] .. "_RWD"
end

local function localisation(id, english, simplified, traditional)
  return [[
    <Property name="Table" value="TkLocalisationEntry">
      <Property name="Id" value="]] .. id .. [[" />
      <Property name="BrazilianPortuguese" value="]] .. english .. [[" />
      <Property name="Dutch" value="]] .. english .. [[" />
      <Property name="English" value="]] .. english .. [[" />
      <Property name="French" value="]] .. english .. [[" />
      <Property name="German" value="]] .. english .. [[" />
      <Property name="Italian" value="]] .. english .. [[" />
      <Property name="Japanese" value="]] .. english .. [[" />
      <Property name="Korean" value="]] .. english .. [[" />
      <Property name="LatinAmericanSpanish" value="]] .. english .. [[" />
      <Property name="Polish" value="]] .. english .. [[" />
      <Property name="Portuguese" value="]] .. english .. [[" />
      <Property name="Russian" value="]] .. english .. [[" />
      <Property name="SimplifiedChinese" value="]] .. simplified .. [[" />
      <Property name="Spanish" value="]] .. english .. [[" />
      <Property name="TencentChinese" value="]] .. english .. [[" />
      <Property name="TraditionalChinese" value="]] .. traditional .. [[" />
      <Property name="USEnglish" value="]] .. english .. [[" />
    </Property>
]]
end

local function build_loc_table()
  local entries = {}
  local function add(id, en, zh, tw)
    table.insert(entries, localisation(id, en, zh, tw))
  end


  add("FINDER_ACTIVE_OBJ_TIP", "Planetary Query subroutines are currently &lt;TRADEABLE&gt;ACTIVE&lt;&gt;.&#xA;Increase search coverage through warp travel. Use &lt;IMG&gt;QUICK_MENU&lt;&gt; to open &lt;COMMODITY&gt;Galactic Map&lt;&gt;.", "当前星球搜索程序&lt;TRADEABLE&gt;已注册&lt;&gt;。&#xA;当前目标未搜索到, 使用飞船或者货船的星图跃迁可以扩大搜索范围。", "當前星球搜索程式&lt;TRADEABLE&gt;已注册&lt;&gt;。&#xA;當前目標未搜索到, 使用飛船或者貨船的銀河系地圖跳躍可以擴大搜索範圍。")
  add("AUTO_RESTART_TTL", "Auto Restart Mission", "自动重启任务", "自動重啟任務")
  add("FINDER_ACTIVE_OBJ", "Query Active", "搜索已注册", "搜索已注册")
  add("FINDER_PLANET_OBJ", "Travel to Planet", "前往行星", "前往行星")
  add("FINDER_PLANET_OBJ_TIP", "A planet matching the given &lt;SPECIAL&gt;query parameters&lt;&gt; has been identified in the &lt;TRADEABLE&gt;current system&lt;&gt;. Enter the planet&apos;s atmosphere to complete the mission.&#xA;Hold &lt;IMG&gt;ROLLLEFT&lt;&gt; and &lt;IMG&gt;ROLLRIGHT&lt;&gt; together to engage Pulse Jump.", "&lt;TRADEABLE&gt;当前星系&lt;&gt;中已搜索到一颗与指定&lt;SPECIAL&gt;搜索参数&lt;&gt;匹配的行星。&#xA;进入该&lt;TECHNOLOGY&gt;行星大气&lt;&gt;以完成任务。", "&lt;TRADEABLE&gt;當前星系&lt;&gt;中已搜索到一顆與指定&lt;SPECIAL&gt;搜索參數&lt;&gt;匹配的行星。&#xA;進入該&lt;TECHNOLOGY&gt;行星大氣&lt;&gt;以完成任務。")
  add("FINDER_PLANET_OBJ_WAIT", "&lt;TITLE&gt;Query result located in&lt;&gt; &lt;TRADEABLE&gt;current system&lt;&gt;&#xA;Enter the planet&apos;s atmosphere to complete the mission", "搜索结果位于&lt;TRADEABLE&gt;当前星系&lt;&gt;&#xA;进入&lt;TECHNOLOGY&gt;行星大气&lt;&gt;以完成任务", "搜索結果位於&lt;TRADEABLE&gt;當前星系&lt;&gt;&#xA;進入&lt;TECHNOLOGY&gt;行星大氣&lt;&gt;以完成任務")
  add("FINDER_SEARCH_OBJ", "Search Registered with Navigation Computer", "已在导航计算机中启用搜索", "已在導航電腦中啟用搜索")
  add("FINDER_SYSTEM_OBJ", "Travel to Target System", "前往目标星系", "前往目標星系")
  add("FINDER_SYSTEM_OBJ1", "Arriving at the Target System", "到达目标星系", "到達目標星系")
  add("FINDER_SYSTEM_OBJ_TIP", "A planet matching the given query parameters has been detected in a &lt;TECHNOLOGY&gt;remote system&lt;&gt;.&#xA;Board your ship and enter space for &lt;SPECIAL&gt;automatic warping&lt;&gt; to the target system&#xA;or access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate travel to the marked coordinates.", "符合指定搜索条件的星球位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;登上飞船进入太空将&lt;SPECIAL&gt;自动跃迁&lt;&gt;到目标星系。&#xA;或者使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行。", "符合指定搜索條件的星球位於&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;登上飛船進入太空將&lt;SPECIAL&gt;自動跳躍&lt;&gt;到目標星系。&#xA;或者使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行。")
  add("FINDER_SYSTEM_OBJ_TIP1", "A planet matching the given query parameters has been detected in a &lt;TECHNOLOGY&gt;remote system&lt;&gt;.&#xA;Access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate travel to the marked coordinates.", "符合指定搜索条件的星球位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行。", "符合指定搜索條件的星球位於&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;。&#xA;使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行。")
  add("FINDER_SYSTEM_OBJ_WAIT", "&lt;TITLE&gt;Query result located in&lt;&gt; &lt;TECHNOLOGY&gt;remote system&lt;&gt;&#xA;Board your ship and enter space for &lt;SPECIAL&gt;automatic warping&lt;&gt; to the target system&#xA;or access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate warp travel", "搜索结果位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;登上飞船进入太空将&lt;SPECIAL&gt;自动跃迁&lt;&gt;到目标星系&#xA;或者使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行", "&lt;TITLE&gt;搜索結果位於&lt;&gt; &lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;登上飛船進入太空將&lt;SPECIAL&gt;自動跳躍&lt;&gt;到目標星系&#xA;或者使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行")
  add("FINDER_SYSTEM_OBJ_WAIT1", "&lt;TITLE&gt;Query result located in&lt;&gt; &lt;TECHNOLOGY&gt;remote system&lt;&gt;&#xA;Access the &lt;STELLAR&gt;Galactic Map&lt;&gt; to initiate warp travel", "搜索结果位于&lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;使用&lt;STELLAR&gt;星图&lt;&gt;启动曲速航行", "&lt;TITLE&gt;搜索結果位於&lt;&gt; &lt;TECHNOLOGY&gt;附近的星系&lt;&gt;&#xA;使用&lt;STELLAR&gt;銀河系地圖&lt;&gt;啟動曲速航行")
  add("FINDER_SUB_1", "Active Deep Space Scan", "主动深空扫描", "主動深空掃描")

  for _, entry in ipairs(CONFIG_TABLE) do
    local en, zh, tw, bio, bst, biome, subtype = entry[1], entry[2], entry[3], entry[4], entry[5], entry[6], entry[7]
    local id = bio .. "_" .. bst
    local description_en = "&lt;SPECIAL&gt;QUERY PARAMETERS&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; Unvisited ~ Ocean ~ No Extreme Weather ~ Passive Sentinels"
    local description_zh = "&lt;SPECIAL&gt;搜索参数&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未访问, 存在海洋, 无活性金属, 非好斗护卫"
    local description_tw = "&lt;SPECIAL&gt;搜索參數&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未訪問, 存在海洋, 無活性金屬, 無侵略性的巡警"
    if biome == "GasGiant" then
      description_en = "&lt;SPECIAL&gt;QUERY PARAMETERS&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; Unvisited ~ Ocean ~ Gas Giant ~ Passive Sentinels"
      description_zh = "&lt;SPECIAL&gt;搜索参数&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未访问, 存在海洋, 气态巨星, 非好斗护卫"
      description_tw = "&lt;SPECIAL&gt;搜索參數&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未訪問, 存在海洋, 氣態巨行星, 無侵略性的巡警"
    elseif subtype == "Giant" then
      description_en = "&lt;SPECIAL&gt;QUERY PARAMETERS&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; Unvisited ~ Ocean ~ No Extreme Weather ~ Passive Sentinels ~ in Non-Gas Giant System"
      description_zh = "&lt;SPECIAL&gt;搜索参数&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未访问, 存在海洋, 无活性金属, 非好斗护卫, 存在巨行星且非气态"
      description_tw = "&lt;SPECIAL&gt;搜索參數&lt;&gt; &lt;HIGHLIGHT&gt;//&lt;&gt; 未訪問, 存在海洋, 無活性金屬, 無侵略性的巡警, 存在巨行星且非氣態"
    end
    add(id .. "_DSC", description_en, description_zh, description_tw)
    add(id .. "_MNU", xml_attr(en), xml_attr(zh), xml_attr(tw))
    add(id .. "_TTL", "Planet Query ~ " .. xml_attr(en), "星球搜索：" .. xml_attr(zh), "星球搜索：" .. xml_attr(tw))
  end

  return [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkLocalisationTable">
  <Property name="Table">
]] .. table.concat(entries) .. [[  </Property>
</Data>
]]
end

local EMOTE_PROPDATA = [[      <Property name="PropData" value="GcPlayerEmotePropData" />
]]

local function emote_prop_data(model)
  if not model then
    return EMOTE_PROPDATA
  end
  return [[      <Property name="PropData" value="GcPlayerEmotePropData">
        <Property name="Model" value="]] .. model .. [[" />
        <Property name="Scale" value="1.000000" />
        <Property name="Hand" value="GcHand">
          <Property name="Hand" value="Right" />
        </Property>
        <Property name="IsHologram" value="false" />
        <Property name="ScanEffectNodeName" value="" />
        <Property name="ScanEffect" value="GcScanEffectData">
          <Property name="Id" value="" />
          <Property name="ScanEffectType" value="Building" />
          <Property name="Colour">
            <Property name="R" value="0.823000" />
            <Property name="G" value="0.475000" />
            <Property name="B" value="0.432000" />
            <Property name="A" value="1.000000" />
          </Property>
          <Property name="BasecolourIntensity" value="0.200000" />
          <Property name="ScanlinesSeparation" value="0.100000" />
          <Property name="FresnelIntensity" value="3.000000" />
          <Property name="GlowIntensity" value="0.000000" />
          <Property name="WaveOffset" value="0.000000" />
          <Property name="WaveActive" value="true" />
          <Property name="FixedUpAxis" value="false" />
          <Property name="Transparent" value="false" />
          <Property name="Additive" value="false" />
          <Property name="ModelFade" value="false" />
          <Property name="FadeInTime" value="0.200000" />
          <Property name="FadeOutTime" value="0.200000" />
          <Property name="UseBaseColourForAll" value="false" />
        </Property>
        <Property name="DelayTime" value="0.000000" />
      </Property>
]]
end

local function emote_entry(id, title, icon, close_menu, prefix, riding_animation, prop_model)
  if riding_animation == nil then
    riding_animation = id
  end
  return [[
    <Property name="Emotes" value="GcPlayerEmote" _id="]] .. id .. [[">
      <Property name="Title" value="]] .. title .. [[" />
      <Property name="ChatText" value="" />
      <Property name="ChatUsesPrefix" value="]] .. (prefix and "true" or "false") .. [[" />
      <Property name="EmoteID" value="]] .. id .. [[" />
      <Property name="AnimationName" value="]] .. id .. [[" />
]] .. emote_prop_data(prop_model) .. [[      <Property name="Icon" value="TkTextureResource">
        <Property name="Filename" value="]] .. icon .. [[" />
        <Property name="ResHandle" value="GcResource">
          <Property name="ResourceID" value="0" />
        </Property>
      </Property>
      <Property name="LinkedSpecialID" value="" />
      <Property name="NeverShowInMenu" value="false" />
      <Property name="LoopAnimUntilMove" value="" />
      <Property name="CloseMenuOnSelect" value="]] .. (close_menu and "true" or "false") .. [[" />
      <Property name="MoveToCancel" value="true" />
      <Property name="GekAnimationName" value="" />
      <Property name="GekLoopAnimUntilMove" value="" />
      <Property name="AvailableUnderwater" value="false" />
      <Property name="RidingAnimationName" value="]] .. riding_animation .. [[" />
      <Property name="IsPetCommand" value="false" />
      <Property name="PetCommandTitle" value="" />
    </Property>
]]
end

local function build_emotes()
  local entries = {
    emote_entry("MEGA_WARP", "UI_MEGAWARP_LABEL", "TEXTURES/UI/FRONTEND/ICONS/TECHNOLOGY/TECHNOLOGY.FREIGHTER.MEGAWARP.DDS", false, true),
    emote_entry("SYSTEM_SCAN", "UI_SCAN_ROOM_LABEL", "TEXTURES/UI/FRONTEND/ICONS/QUICKMENU/EMOTES/HOLOSYSTEM.DDS", false, false, "", SYSTEM_SCAN_PROP_MODEL),
  }
  for _, entry in ipairs(CONFIG_TABLE) do
    table.insert(entries, emote_entry(mission_id(entry), entry[4] .. "_" .. entry[5] .. "_MNU", entry[8], true, false))
  end
  return table.concat(entries)
end

local function build_rewards()
  local entries = {}
  for _, entry in ipairs(CONFIG_TABLE) do
    local id = mission_id(entry)
    local mission = mode == "R" and "R_" .. id or id
    table.insert(entries, [[
    <Property name="SpecialRewardTable" value="GcGenericRewardTableEntry" _id="]] .. reward_id(entry) .. [[">
      <Property name="Id" value="]] .. reward_id(entry) .. [[" />
      <Property name="List" value="GcRewardTableItemList">
        <Property name="RewardChoice" value="GiveAll" />
        <Property name="OverrideZeroSeed" value="false" />
        <Property name="UseInventoryChoiceOverride" value="false" />
        <Property name="IncrementStat" value="" />
        <Property name="List">
          <Property name="List" value="GcRewardTableItem">
            <Property name="PercentageChance" value="100" />
            <Property name="LabelID" value="" />
            <Property name="Reward" value="GcRewardMission">
              <Property name="GcRewardMission">
                <Property name="Mission" value="]] .. mission .. [[" />
                <Property name="SetAsSelected" value="true" />
                <Property name="Restart" value="false" />
                <Property name="FailRewardIfMissionActive" value="true" />
                <Property name="AlreadyActiveFailureMessage" value="" />
              </Property>
            </Property>
          </Property>
        </Property>
      </Property>
    </Property>
]])
  end
  return table.concat(entries)
end

local function animation_entry(id)
  return [[
      <Property name="Anims" value="TkAnimationData">
        <Property name="Anim" value="]] .. id .. [[" />
        <Property name="Filename" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/ANIMS/BINOCS/2H_BINOCS_UNSHEATHE.ANIM.MBIN" />
        <Property name="AnimType" value="OneShotBlendable" />
        <Property name="AnimGroupOverride" value="false" />
        <Property name="Priority" value="0" />
        <Property name="FrameStart" value="0" />
        <Property name="FrameEnd" value="0" />
        <Property name="FrameEndGame" value="0" />
        <Property name="StartNode" value="" />
        <Property name="ExtraStartNodes" />
        <Property name="AdditiveBaseAnim" value="" />
        <Property name="AdditiveBaseFrame" value="0.000000" />
        <Property name="Mask" value="" />
        <Property name="OffsetMin" value="0.000000" />
        <Property name="OffsetMax" value="0.000000" />
        <Property name="Delay" value="0.000000" />
        <Property name="Speed" value="1.000000" />
        <Property name="ActionStartFrame" value="0.000000" />
        <Property name="ActionFrame" value="-1.000000" />
        <Property name="Actions" />
        <Property name="CreatureSize" value="AllSizes" />
        <Property name="Notifies" />
        <Property name="Additive" value="false" />
        <Property name="Mirrored" value="false" />
        <Property name="Active" value="true" />
        <Property name="Has30HzFrames" value="false" />
        <Property name="GameData" value="TkAnimationGameData">
          <Property name="RootMotion" value="None" />
          <Property name="BlockPlayerMovement" value="false" />
          <Property name="BlockPlayerWeapon" value="Unblocked" />
        </Property>
      </Property>
]]
end

local function trigger_entry(anim, reward)
  return [[
      <Property name="Triggers" value="GcActionTrigger">
        <Property name="Event" value="GcAnimFrameEvent">
          <Property name="GcAnimFrameEvent">
            <Property name="Anim" value="]] .. anim .. [[" />
            <Property name="FrameStart" value="0" />
            <Property name="StartFromEnd" value="false" />
          </Property>
        </Property>
        <Property name="Action">
          <Property name="Action" value="GcRewardAction" _index="1">
            <Property name="GcRewardAction">
              <Property name="Reward" value="]] .. reward .. [[" />
            </Property>
          </Property>
        </Property>
      </Property>
]]
end

local SYSTEM_SCAN_ENTITY = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkAttachmentData">
  <Property name="AdditionalData" />
  <Property name="Components">
    <Property name="Components" value="GcSimpleInteractionComponentData">
      <Property name="GcSimpleInteractionComponentData">
        <Property name="SimpleInteractionType" value="SuperDoopaScanner" />
        <Property name="InteractDistance" value="0.000000" />
        <Property name="Use2dInteractDistance" value="false" />
        <Property name="InteractAngle" value="360.000000" />
        <Property name="Id" value="" />
        <Property name="Rarity" value="GcRarity">
          <Property name="Rarity" value="Common" />
        </Property>
        <Property name="Size" value="GcSizeIndicator">
          <Property name="SizeIndicator" value="Medium" />
        </Property>
        <Property name="TriggerAction" value="INACTIVE" />
        <Property name="TriggerActionOnPrepare" value="" />
        <Property name="TriggerActionToggle" value="" />
        <Property name="DeactivateSimilarInteractionsNearbyRadius" value="0.000000" />
        <Property name="BroadcastTriggerAction" value="false" />
        <Property name="Delay" value="0.000000" />
        <Property name="HideContents" value="true" />
        <Property name="InteractIsCrime" value="false" />
        <Property name="InteractFiendCrimeType" value="GcFiendCrime">
          <Property name="FiendCrime" value="None" />
        </Property>
        <Property name="InteractFiendCrimeChance" value="1.000000" />
        <Property name="InteractCrimeLevel" value="0" />
        <Property name="IncreaseCorruptSentinelWanted" value="0" />
        <Property name="NotifyEncounter" value="false" />
        <Property name="ActivationCost" value="GcInteractionActivationCost">
          <Property name="SubstanceId" value="" />
          <Property name="AltIds" />
          <Property name="Cost" value="0" />
          <Property name="Repeat" value="false" />
          <Property name="RequiredTech" value="" />
          <Property name="UseCostID" value="" />
          <Property name="StartMissionOnCantAfford" value="" />
          <Property name="OnlyChargeDuringSeasons" />
        </Property>
        <Property name="StatToTrack" value="GcStatsEnum">
          <Property name="StatEnum" value="None" />
        </Property>
        <Property name="StartsBuried" value="false" />
        <Property name="MustBeVisibleToInteract" value="false" />
        <Property name="NeedsStorm" value="false" />
        <Property name="Name" value="" />
        <Property name="ForceSubtitle" value="" />
        <Property name="VRInteractMessage" value="" />
        <Property name="TerminalHeading" value="" />
        <Property name="TerminalMessage" value="" />
        <Property name="ScanType" value="" />
        <Property name="ScanData" value="" />
        <Property name="ScanIcon" value="">
          <Property name="DiscoveryType" value="Unknown" />
        </Property>
        <Property name="ActivateLocatorsFromRarity" value="false" />
        <Property name="RarityLocators">
          <Property name="Common" value="" />
          <Property name="Uncommon" value="" />
          <Property name="Rare" value="" />
        </Property>
        <Property name="BaseBuildingTriggerActions" />
        <Property name="RewardOverrideTable" />
        <Property name="PersistencyBufferOverride" />
        <Property name="UsePersonalPersistentBuffer" value="false" />
        <Property name="ReseedOnRewardSuccess" value="false" />
        <Property name="CanCollectInMech" value="false" />
        <Property name="AnimateOnInteract" value="true" />
        <Property name="DisableAnimationUntilInteract" value="false" />
        <Property name="OnlyActiveDuringSeasons" />
      </Property>
    </Property>
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState" _id="BOOT">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
              <Property name="Triggers" value="GcActionTrigger">
                <Property name="Event" value="GcStateTimeEvent">
                  <Property name="GcStateTimeEvent">
                    <Property name="Seconds" value="0.100000" />
                    <Property name="RandomSeconds" value="0.000000" />
                    <Property name="UseMissionClock" value="false" />
                  </Property>
                </Property>
                <Property name="Action">
                  <Property name="Action" value="GcPlayAudioAction">
                    <Property name="GcPlayAudioAction">
                      <Property name="Sound" value="SignalScanner" />
                      <Property name="UseOcclusion" value="false" />
                      <Property name="OcclusionRadius" value="2.000000" />
                    </Property>
                  </Property>
                  <Property name="Action" value="GcFireSimpleInteractionAction">
                    <Property name="GcFireSimpleInteractionAction" />
                  </Property>
                </Property>
              </Property>
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
  </Property>
  <Property name="LodDistances">
    <Property value="0" />
    <Property value="50" />
    <Property value="80" />
    <Property value="150" />
    <Property value="500" />
  </Property>
</Data>
]]

local function trigger_component(triggers)
  return [[
    <Property name="Components" value="GcTriggerActionComponentData">
      <Property name="GcTriggerActionComponentData">
        <Property name="HideModel" value="false" />
        <Property name="StartInactive" value="false" />
        <Property name="States">
          <Property name="States" value="GcActionTriggerState" _id="BOOT">
            <Property name="StateID" value="BOOT" />
            <Property name="Triggers">
]] .. triggers .. [[
            </Property>
          </Property>
        </Property>
        <Property name="Persistent" value="false" />
        <Property name="PersistentState" value="" />
        <Property name="ResetShotTimeOnStateChange" value="false" />
        <Property name="LinkStateToBaseGrid" value="false" />
      </Property>
    </Property>
]]
end

local SYSTEM_SCAN_PROP_SCENE = [[<?xml version="1.0" encoding="utf-8"?>
<Data template="cTkSceneNodeData">
  <Property name="Name" value="LushFinderSystemScanProp" />
  <Property name="NameHash" value="4228619506" />
  <Property name="Type" value="MODEL" />
  <Property name="Transform" value="TkTransformData">
    <Property name="TransX" value="0.000000" />
    <Property name="TransY" value="0.000000" />
    <Property name="TransZ" value="0.000000" />
    <Property name="RotX" value="0.000000" />
    <Property name="RotY" value="0.000000" />
    <Property name="RotZ" value="0.000000" />
    <Property name="ScaleX" value="1.000000" />
    <Property name="ScaleY" value="1.000000" />
    <Property name="ScaleZ" value="1.000000" />
  </Property>
  <Property name="PlatformExclusion" value="0" />
  <Property name="Attributes" />
  <Property name="Children">
    <Property name="Children" value="TkSceneNodeData">
      <Property name="Name" value="REFLushFinderSystemScanData" />
      <Property name="NameHash" value="2946471374" />
      <Property name="Type" value="LOCATOR" />
      <Property name="Transform" value="TkTransformData">
        <Property name="TransX" value="0.000000" />
        <Property name="TransY" value="0.000000" />
        <Property name="TransZ" value="0.000000" />
        <Property name="RotX" value="0.000000" />
        <Property name="RotY" value="0.000000" />
        <Property name="RotZ" value="0.000000" />
        <Property name="ScaleX" value="1.000000" />
        <Property name="ScaleY" value="1.000000" />
        <Property name="ScaleZ" value="1.000000" />
      </Property>
      <Property name="PlatformExclusion" value="0" />
      <Property name="Attributes">
        <Property name="Attributes" value="TkSceneNodeAttributeData">
          <Property name="Name" value="ATTACHMENT" />
          <Property name="Value" value="MODELS/COMMON/PLAYER/PLAYERCHARACTER/CUSTOM/LUSHFINDER/ENTITIES/SYSTEMSCAN.ENTITY.MBIN" />
        </Property>
      </Property>
      <Property name="Children" />
    </Property>
  </Property>
</Data>
]]

local ANIMATION_ENTRIES = animation_entry("SYSTEM_SCAN") .. animation_entry("MEGA_WARP")
local TRIGGER_ENTRIES = trigger_entry("MEGA_WARP", "R_MEGAWARP")
for _, entry in ipairs(CONFIG_TABLE) do
  local id = mission_id(entry)
  ANIMATION_ENTRIES = ANIMATION_ENTRIES .. animation_entry(id)
  TRIGGER_ENTRIES = TRIGGER_ENTRIES .. trigger_entry(id, reward_id(entry))
end
local LUSH_TRIGGER_COMPONENT = trigger_component(TRIGGER_ENTRIES)

local LOC_TABLE = build_loc_table()
local EMOTE_ENTRIES = build_emotes()
local REWARD_ENTRIES = build_rewards()
local MISSION_TABLE = build_mission_table()

NMS_MOD_DEFINITION_CONTAINER =
{
  ["MOD_FILENAME"] = mod_filename,
  ["MOD_AUTHOR"] = "beihaixingchen",
  ["NMS_VERSION"] = "6.45",
  ["MOD_DESCRIPTION"] = "Your Ultimate Paradise Locator in the Vast Universe.",
  ["EXML_CREATE"] = "TRUE",
  ["ADD_FILES"] =
  {
    {
      ["COMMENT"] = "Generated mission table for the selected F/S/R mode.",
      ["FILE_DESTINATION"] = "METADATA/SIMULATION/MISSIONS/TABLES/NPCMISSIONTABLE.EXML",
      ["FILE_CONTENT"] = MISSION_TABLE,
    },
    {
      ["COMMENT"] = "Generated localisation entries for all Lush Finder missions.",
      ["FILE_DESTINATION"] = "LocTable.MXML",
      ["FILE_CONTENT"] = LOC_TABLE,
    },
    {
      ["COMMENT"] = "Prop Scene loaded dynamically by the SYSTEM_SCAN emote.",
      ["FILE_DESTINATION"] = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/CUSTOM/LUSHFINDER/SYSTEMSCAN.SCENE.MXML",
      ["FILE_CONTENT"] = SYSTEM_SCAN_PROP_SCENE,
    },
    {
      ["COMMENT"] = "Interaction entity attached to the SYSTEM_SCAN prop Scene.",
      ["FILE_DESTINATION"] = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/CUSTOM/LUSHFINDER/ENTITIES/SYSTEMSCAN.ENTITY.MXML",
      ["FILE_CONTENT"] = SYSTEM_SCAN_ENTITY,
    },
    {
      ["COMMENT"] = "Custom Lush Finder icons.",
      ["FILE_DESTINATION"] = "TEXTURES/UI/FRONTEND/ICONS/LUSHFINDER",
      ["EXTERNAL_FILE_SOURCE"] = ICON_SOURCE,
    },
  },
  ["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/UI/EMOTEMENU.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"Emotes"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] = EMOTE_ENTRIES,
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"SpecialRewardTable"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] = REWARD_ENTRIES,
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS/COMMON/PLAYER/PLAYERCHARACTER/PLAYERCHARACTER/ENTITIES/PLAYERCHARACTER.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkAnimationComponentData"},
              ["PRECEDING_KEY_WORDS"] = {"Anims"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] = ANIMATION_ENTRIES,
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Components"},
              ["ADD_OPTION"] = "ADDafterLINE",
              ["ADD"] = LUSH_TRIGGER_COMPONENT,
            },
          },
        },
      },
    },
  },
}
