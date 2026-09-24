-- Escala el coste en Salvaged Data (RecipeCost) de los blueprints de construccion.
-- Solo afecta a lo que se desbloquea con Salvaged Data: las piezas cuyo desbloqueo usa otra
-- moneda (nanites / Salvaged Frigate Modules / units) se revierten a su valor vanilla.
local MULT = 2

local MOD_NAME     = "HardcoreSky_SalvagedDataCostIncrease"
local GAME_VERSION = "7.02"

-- >>> EXEMPT (generado por extras/gen_salvaged.py) >>>
local EXEMPT = {
  { 23, "1" },
  { 27, "1" },
  { 31, "1" },
  { 32, "1" },
  { 33, "1" },
  { 34, "1" },
  { 35, "1" },
  { 36, "1" },
  { 37, "1" },
  { 38, "1" },
  { 39, "1" },
  { 40, "1" },
  { 41, "1" },
  { 45, "1" },
  { 46, "1" },
  { 47, "1" },
  { 48, "1" },
  { 50, "1" },
  { 51, "1" },
  { 52, "1" },
  { 56, "1" },
  { 66, "1" },
  { 68, "1" },
  { 69, "1" },
  { 70, "1" },
  { 72, "1" },
  { 73, "20" },
  { 74, "20" },
  { 75, "1" },
  { 76, "25" },
  { 77, "20" },
  { 78, "20" },
  { 79, "40" },
  { 80, "30" },
  { 81, "25" },
  { 82, "25" },
  { 83, "25" },
  { 84, "25" },
  { 85, "25" },
  { 86, "25" },
  { 87, "25" },
  { 88, "25" },
  { 89, "25" },
  { 90, "25" },
  { 91, "30" },
  { 92, "30" },
  { 93, "30" },
  { 94, "30" },
  { 95, "30" },
  { 96, "30" },
  { 97, "20" },
  { 98, "20" },
  { 99, "30" },
  { 101, "50" },
  { 104, "15" },
  { 105, "15" },
  { 106, "15" },
  { 110, "30" },
  { 111, "40" },
  { 121, "30" },
  { 122, "30" },
  { 123, "30" },
  { 124, "40" },
  { 125, "40" },
  { 126, "30" },
  { 127, "30" },
  { 128, "20" },
  { 129, "20" },
  { 130, "20" },
  { 131, "30" },
  { 132, "30" },
  { 133, "30" },
  { 134, "30" },
  { 135, "30" },
  { 136, "30" },
  { 137, "40" },
  { 138, "30" },
  { 139, "35" },
  { 140, "30" },
  { 141, "30" },
  { 142, "30" },
  { 143, "50" },
  { 144, "50" },
  { 145, "50" },
  { 146, "50" },
  { 147, "50" },
  { 148, "40" },
  { 149, "30" },
  { 150, "20" },
  { 151, "20" },
  { 152, "20" },
  { 153, "20" },
  { 154, "20" },
  { 155, "20" },
  { 156, "20" },
  { 157, "20" },
  { 158, "20" },
  { 159, "20" },
  { 160, "20" },
  { 161, "20" },
  { 162, "20" },
  { 163, "20" },
  { 164, "20" },
  { 165, "20" },
  { 166, "20" },
  { 167, "20" },
  { 168, "20" },
  { 169, "20" },
  { 170, "20" },
}
-- <<< EXEMPT (generado por extras/gen_salvaged.py) <<<

local CHANGES = {
  {
    REPLACE_TYPE       = "ALL",
    INTEGER_TO_FLOAT   = "PRESERVE",
    MATH_OPERATION     = "*",
    VALUE_CHANGE_TABLE = { { "RecipeCost", MULT } }
  },
}

for _, e in ipairs(EXEMPT) do
  CHANGES[#CHANGES + 1] = {
    SPECIAL_KEY_WORDS  = { "Table", "GcProductData" },
    SECTION_ACTIVE     = e[1],
    VALUE_CHANGE_TABLE = { { "RecipeCost", e[2] } }
  }
end

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_NAME .. "_x2.zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = string.format(
    "Multiplies the Salvaged Data cost of Construction Research Unit blueprints by x%d",
    MULT
  ),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {{
      MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
      MXML_CHANGE_TABLE = CHANGES
    }}
  }}
}