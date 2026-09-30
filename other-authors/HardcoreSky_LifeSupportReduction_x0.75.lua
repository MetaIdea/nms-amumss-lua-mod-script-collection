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
