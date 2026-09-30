local MULT = 0.1

local MOD_NAME     = "HardcoreSky_HazardProtectionReduction"
local GAME_VERSION = "7.02"
local SUFFIX       = "x0.1"

local HAZARDS = { "ExtremeHeat", "ExtremeCold", "ToxicGas", "Radiation", "Spook" }

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

local TECH_CHANGES = {
  {
    SPECIAL_KEY_WORDS   = { "ChargeAmount", "80" },
    REPLACE_TYPE        = "ALL",
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = { { "ChargeAmount", MULT } }
  },
}

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_NAME .. "_" .. SUFFIX .. ".zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = string.format(
    "Reduces hazard protection by x%s: battery capacity, timing windows and ProtectionTime curve (heat/cold/toxic/radiation/spook)",
    SUFFIX
  ),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {
      {
        MBIN_FILE_SOURCE  = "METADATA/SIMULATION/ENVIRONMENT/HAZARDTABLE.MBIN",
        MXML_CHANGE_TABLE = CHANGES
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
        MXML_CHANGE_TABLE = TECH_CHANGES
      }
    }
  }}
}
