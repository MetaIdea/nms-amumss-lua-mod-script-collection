local MOD_NAME     = "HardcoreSky_FishingDifficultyOverhaul"
local GAME_VERSION = "7.02"

local WAIT_MULT    = 1.5
local REACT_MULT   = 0.75
local CUE          = 1
local CHASE_MULT   = 1
local Q_JUNK       = 0
local Q_COMMON     = 57
local Q_RARE       = 25
local Q_EPIC       = 3
local Q_LEGEND     = 1
local HARVEST_MULT = 1
local REWARD       = 1

local ids_common = { {"Id","R_FISH_COMMON"} }
local ids_rare   = { {"Id","R_FISH_RARE"} }
local ids_epic   = { {"Id","R_FISH_EPIC"} }
local ids_legend = { {"Id","R_FISH_LEGEND"} }

local foreach_group = {}
if REWARD >= 2 then
  for _, p in ipairs(ids_common) do
    table.insert(foreach_group, p)
  end
end
if REWARD >= 3 then
  for _, p in ipairs(ids_rare) do
    table.insert(foreach_group, p)
  end
end
if REWARD >= 4 then
  for _, p in ipairs(ids_epic) do
    table.insert(foreach_group, p)
  end
end
if REWARD == 5 then
  for _, p in ipairs(ids_legend) do
    table.insert(foreach_group, p)
  end
end

local globals_changes = {
  { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", VALUE_CHANGE_TABLE = { {"MinWaitTime", WAIT_MULT}, {"MaxWaitTime", WAIT_MULT} } },
  { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", VALUE_CHANGE_TABLE = { {"FishCatchAfterBiteTime", REACT_MULT} } },
  { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", PRECEDING_KEY_WORDS={"ChaseTimes"}, VALUE_CHANGE_TABLE = {
    {"Small", CHASE_MULT}, {"Medium", CHASE_MULT}, {"Large", CHASE_MULT}, {"ExtraLarge", CHASE_MULT}
  } },
  { PRECEDING_KEY_WORDS={"QualityWeights"}, VALUE_CHANGE_TABLE = {
    {"Junk", Q_JUNK}, {"Common", Q_COMMON}, {"Rare", Q_RARE}, {"Epic", Q_EPIC}, {"Legendary", Q_LEGEND}
  } },
  { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", VALUE_CHANGE_TABLE = { {"SeaHarvesterAverageCatchTimeSeconds", HARVEST_MULT} } }
}

if HARVEST_MULT > 1 then
  table.insert(globals_changes, {
    INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="/", PRECEDING_KEY_WORDS={"MaxSeaHarvesterCaughtFish"}, VALUE_CHANGE_TABLE = {
      {"Junk", HARVEST_MULT}, {"Common", HARVEST_MULT}, {"Rare", HARVEST_MULT}, {"Epic", HARVEST_MULT}, {"Legendary", HARVEST_MULT}
    }
  })
end

if CUE == 1 then
  local DEFAULT_COLOUR = { {"R","0.480000"}, {"G","0.780000"}, {"B","0.980000"}, {"A","0.900000"} }
  local COLOUR_SECTIONS = { "LineColourDefault", "LineColourNibble", "LineColourBite", "LineColourChase", "LineColourLand", "LineColourFail" }
  for _, sec in ipairs(COLOUR_SECTIONS) do
    table.insert(globals_changes, { PRECEDING_KEY_WORDS={sec}, VALUE_CHANGE_TABLE = DEFAULT_COLOUR })
  end
  table.insert(globals_changes, { VALUE_CHANGE_TABLE = {
    {"LineColourChangeRate","0"},
    {"LineColourChangeRateNibble","0"},
    {"LineColourChangeRateBite","0"},
    {"LineNibbleSag","0.600000"},
    {"LineFlickSag","0.300000"},
    {"LineBiteSag","1.500000"}
  } })
end

if CUE == 2 then
  local ZERO = { {"R","0"}, {"G","0"}, {"B","0"}, {"A","0"} }
  local COLOUR_SECTIONS = { "LineColourDefault", "LineColourNibble", "LineColourBite", "LineColourChase", "LineColourLand", "LineColourFail" }
  for _, sec in ipairs(COLOUR_SECTIONS) do
    table.insert(globals_changes, { PRECEDING_KEY_WORDS={sec}, VALUE_CHANGE_TABLE = ZERO })
  end
  table.insert(globals_changes, { VALUE_CHANGE_TABLE = {
    {"LineColourChangeRate","0"},
    {"LineColourChangeRateNibble","0"},
    {"LineColourChangeRateBite","0"},
    {"LineBrightness","0"}
  } })
end

local reward_changes = {}
if #foreach_group > 0 then
  table.insert(reward_changes, {
    FOREACH_SKW_GROUP = foreach_group,
    PRECEDING_KEY_WORDS = {"List","List"},
    REPLACE_TYPE = "ALL",
    VALUE_CHANGE_TABLE = {{ "PercentageChance", "0" }}
  })
end

local mbin_changes = {
  { MBIN_FILE_SOURCE = "GLOBALS/GCFISHINGGLOBALS.GLOBAL.MBIN", MXML_CHANGE_TABLE = globals_changes }
}

if #reward_changes > 0 then
  table.insert(mbin_changes, { MBIN_FILE_SOURCE = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN", MXML_CHANGE_TABLE = reward_changes })
end

local MOD_FILENAME = MOD_NAME .. ".zip"
local MOD_DESCRIPTION = "Fishing: relaxed pace, tension-only cue, no junk catches."

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = MOD_DESCRIPTION,
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = mbin_changes
  }}
}