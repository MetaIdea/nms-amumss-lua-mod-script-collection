-- Scales the cost of every inventory slot upgrade.
--   Unidades: DEFAULTREALITY (curvas del exotraje) + COSTTABLE (listas de nave,
--   multiherramienta, mascota y escuadron).
--   Tokens: sube la cantidad de token por slot (exotraje, nave, multiherramienta,
--   freighter y clase "Alien").
--
-- AVISO: los arrays de este mod (Costs/SuitUpgradePrices) los corrompe AMUMSS
-- (cambia las primeras entradas y marca el resto con _remove). El artefacto
-- soportado es el EXML; este .lua se incluye solo como referencia.
local MULT = 25

local MOD_NAME     = "HardcoreSky_SlotCosts"
local GAME_VERSION = "7.02"
local SUFFIX       = "x25"

local function MoneyList(id)
  return {
    SPECIAL_KEY_WORDS   = { "Id", id },
    SECTION_UP          = 2,
    REPLACE_TYPE        = "ALL",
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = { { "Costs", MULT } }
  }
end

local function TokenCost(id)
  return {
    SPECIAL_KEY_WORDS   = { "Id", id },
    SECTION_UP          = 2,
    REPLACE_TYPE        = "ALL",
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = { { "Amount", MULT } }
  }
end

local SUIT_ARRAYS = {
  "SuitUpgradePrices",
  "SuitCargoUpgradePrices",
  "SuitTechOnlyUpgradePrices",
}

local COST_MONEY = {
  "C_INV_SAL_CASH", "C_INV_SAL_CASHR",
  "C_INV_WEAP_C", "C_INV_WEAP_CR",
  "C_PET_SLOT", "C_PILOT_SLOT", "C_PILOT_UPGRADE",
}

local COST_TOKENS = {
  "C_SUIT_SLOT",
  "C_INV_SAL_PROD", "C_INV_SAL_PRODR",
  "C_INV_WEAP_P", "C_INV_WEAP_PR",
  "C_INV_FREIGHT", "C_INV_FREIGHTR",
  "C_INV_ALIEN",
}

local DEFAULT_CHANGES = {}
for _, field in ipairs(SUIT_ARRAYS) do
  DEFAULT_CHANGES[#DEFAULT_CHANGES + 1] = {
    PRECEDING_KEY_WORDS = { field },
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = { { field, MULT } }
  }
end

local COST_CHANGES = {}
for _, id in ipairs(COST_MONEY) do
  COST_CHANGES[#COST_CHANGES + 1] = MoneyList(id)
end
for _, id in ipairs(COST_TOKENS) do
  COST_CHANGES[#COST_CHANGES + 1] = TokenCost(id)
end

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_NAME .. "_" .. SUFFIX .. ".zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = string.format(
    "Multiplies the unit price of inventory slot upgrades and the tokens needed per slot by x%d",
    MULT
  ),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/DEFAULTREALITY.MBIN",
        MXML_CHANGE_TABLE = DEFAULT_CHANGES
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/COSTTABLE.MBIN",
        MXML_CHANGE_TABLE = COST_CHANGES
      }
    }
  }}
}
