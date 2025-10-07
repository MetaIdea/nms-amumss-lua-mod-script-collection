local MULT = 20

local MOD_NAME     = "HardcoreSky_SalvagedDataCostIncrease"
local GAME_VERSION = "6.06"
local MOD_FILENAME = string.format("%s_x%d.zip", MOD_NAME, MULT)

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = string.format("Increases Salvaged Data blueprint costs by x%d at the Construction Research Unit", MULT),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {{
      MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_BASEPARTPRODUCTS.MBIN",
      MXML_CHANGE_TABLE = {{
        REPLACE_TYPE       = "ALL",
        INTEGER_TO_FLOAT   = "PRESERVE",
        MATH_OPERATION     = "*",
        VALUE_CHANGE_TABLE = { {"RecipeCost", MULT} }
      }}
    }}
  }}
}