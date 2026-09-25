-- Scales the suit's Life Support duration (the NoOxygen hazard row of HAZARDTABLE):
-- grace period before drain, wait before recharge, recharge duration and the ProtectionTime
-- curve endpoints (X/Y). Damage values/thresholds are untouched.
--
-- Companion of the "Reduced Hazard Protection Duration" mod, which scales the five environment
-- hazards (ExtremeHeat, ExtremeCold, ToxicGas, Radiation, Spook) and leaves this one alone.
local MULT = 0.75

local MOD_NAME     = "HardcoreSky_LifeSupportReduction"
local GAME_VERSION = "7.02"
local SUFFIX       = "x0.75"

local HAZARDS = { "NoOxygen" }

local CHANGES = {}
for _, H in ipairs(HAZARDS) do
  table.insert(CHANGES, {
    PRECEDING_KEY_WORDS = { "Table", H },
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = {
      { "ProtectionInitialTime", MULT },
      { "RechargeInitialTime",   MULT },
      { "RechargeTime",          MULT },
    }
  })

  table.insert(CHANGES, {
    PRECEDING_KEY_WORDS = { "Table", H, "ProtectionTime" },
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = {
      { "X", MULT },
      { "Y", MULT },
    }
  })
end

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_NAME .. "_" .. SUFFIX .. ".zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = string.format(
    "Reduces life support (no oxygen) duration windows and ProtectionTime curve to x%s; environment hazards untouched",
    SUFFIX
  ),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {{
      MBIN_FILE_SOURCE  = "METADATA/SIMULATION/ENVIRONMENT/HAZARDTABLE.MBIN",
      MXML_CHANGE_TABLE = CHANGES
    }}
  }}
}