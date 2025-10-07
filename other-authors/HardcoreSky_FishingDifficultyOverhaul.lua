local GAME_VERSION = "6.06"
local MOD_NAME = "HardcoreSky_FishingDifficultyOverhaul"

local function trim_all_spaces(s)
  if not s then return "" end
  s = s:gsub("^%s+", "")
  s = s:gsub("%s+$", "")
  s = s:gsub("%s+", " ")
  return s
end

local function read_env_choice(key, minv, maxv)
  local v = os.getenv and os.getenv(key) or nil
  if not v then return nil end
  v = trim_all_spaces(v)
  if not v:match("^%d+$") then return nil end
  local n = tonumber(v)
  if not n or n < minv or n > maxv then return nil end
  return math.floor(n)
end

local function rule()
  print("----------------------------------------------------------------")
end

local function header()
  print("")
  rule()
  print(" HardcoreSky - Fishing Difficulty Overhaul")
  rule()
  print(" Create your own fishing difficulty in three steps:")
  print("  1) Pace preset")
  print("  2) Reward strictness")
  print("  3) Line feedback visibility")
  rule()
  print("")
end

local function block(lines)
  print("")
  rule()
  for _, ln in ipairs(lines) do
    print(" " .. ln)
  end
  rule()
  print("")
end

local function ask_choice(lines, prompt, minv, maxv, defaultv)
  if not (io and io.read) then
    return defaultv
  end
  block(lines)
  print(" " .. prompt .. " [" .. minv .. "-" .. maxv .. "] (default " .. defaultv .. "):")
  print("")
  for _ = 1, 3 do
    local line = io.read("*l") or ""
    local norm = trim_all_spaces(line)
    if norm == "" then
      print("")
      print(" Using default: " .. defaultv)
      print("")
      return defaultv
    end
    if norm:match("^%d+$") then
      local n = tonumber(norm)
      if n and n >= minv and n <= maxv then
        print("")
        print(" Selected: " .. n)
        print("")
        return math.floor(n)
      end
    end
    print("")
    print(" Please enter a whole number between " .. minv .. " and " .. maxv .. ".")
    print("")
  end
  print("")
  print(" Too many tries. Using default: " .. defaultv)
  print("")
  return defaultv
end

header()

local mode = read_env_choice("HCS_MODE", 1, 2) or ask_choice({
  "Pace presets",
  "  1) Medium   - slower bites; fair reaction window",
  "     Wait *2.0  |  React *0.50",
  "",
  "  2) Hardcore - much slower bites; tight reaction",
  "     Wait *3.0  |  React *0.35"
}, "Choose", 1, 2, 1)

local reward = read_env_choice("HCS_REWARD", 1, 5) or ask_choice({
  "Reward strictness (who gets nanites on release)",
  "  1) All tiers            (Common, Rare, Epic, Legendary)",
  "  2) No Common            (Rare, Epic, Legendary)",
  "  3) No Common or Rare    (Epic, Legendary)",
  "  4) Legendary only",
  "  5) None"
}, "Choose", 1, 5, 2)

local feedback = read_env_choice("HCS_FEEDBACK", 1, 2) or ask_choice({
  "Line feedback visibility",
  "  1) Enabled  (line color and brightness visible)",
  "  2) Disabled (no visual feedback cues)"
}, "Choose", 1, 2, 2)

local WAIT_MULT
local REACT_MULT
if mode == 2 then
  WAIT_MULT = 3.0
  REACT_MULT = 0.35
else
  WAIT_MULT = 2.0
  REACT_MULT = 0.5
end

local ids_common = { {"Id","R_FISH_COMMON"} }
local ids_rare   = { {"Id","R_FISH_RARE"} }
local ids_epic   = { {"Id","R_FISH_EPIC"} }
local ids_legend = { {"Id","R_FISH_LEGEND"} }

local foreach_group = {}
if reward >= 2 then
  for _, p in ipairs(ids_common) do
    table.insert(foreach_group, p)
  end
end
if reward >= 3 then
  for _, p in ipairs(ids_rare) do
    table.insert(foreach_group, p)
  end
end
if reward >= 4 then
  for _, p in ipairs(ids_epic) do
    table.insert(foreach_group, p)
  end
end
if reward == 5 then
  for _, p in ipairs(ids_legend) do
    table.insert(foreach_group, p)
  end
end

local globals_changes = {
  { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", VALUE_CHANGE_TABLE = { {"MinWaitTime", WAIT_MULT}, {"MaxWaitTime", WAIT_MULT} } },
  { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", VALUE_CHANGE_TABLE = { {"FishCatchAfterBiteTime", REACT_MULT} } }
}

if feedback == 2 then
  table.insert(globals_changes, { PRECEDING_KEY_WORDS={"LineColourDefault"}, VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } })
  table.insert(globals_changes, { PRECEDING_KEY_WORDS={"LineColourNibble"},  VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } })
  table.insert(globals_changes, { PRECEDING_KEY_WORDS={"LineColourBite"},    VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } })
  table.insert(globals_changes, { PRECEDING_KEY_WORDS={"LineColourChase"},   VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } })
  table.insert(globals_changes, { PRECEDING_KEY_WORDS={"LineColourLand"},    VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } })
  table.insert(globals_changes, { PRECEDING_KEY_WORDS={"LineColourFail"},    VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } })
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
local desc_mode = (mode == 2) and "Hardcore" or "Medium"
local desc_reward = ({ "All tiers", "No Common", "No Common or Rare", "Legendary only", "None" })[reward]
local desc_feedback = (feedback == 2) and "No line feedback" or "Line feedback enabled"
local MOD_DESCRIPTION = "Fishing: " .. desc_mode .. " pace; rewards: " .. desc_reward .. "; " .. desc_feedback .. "."

block({
  "Summary",
  "  Pace: " .. desc_mode,
  "  Rewards: " .. desc_reward,
  "  Line feedback: " .. ((feedback == 2) and "Disabled" or "Enabled")
})
print(" Building your variant...")

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
