-- Scales the nanite cost of Anomaly blueprint research.
--   1) NMS_REALITY_GCTECHNOLOGYTABLE  -> FragmentCost (nanite price of each blueprint)
--   2) GCGAMEPLAYGLOBALS.GLOBAL       -> NexusRecipeCostNaniteMultiplier (Nexus Synthesis Lab)
local MULT = 2

local MOD_NAME     = "HardcoreSky_AnomalyCostIncrease"
local GAME_VERSION = "7.02"
local SUFFIX       = "x2"

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_NAME .. "_" .. SUFFIX .. ".zip",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = string.format(
    "Multiplies the nanite cost of Anomaly blueprint research and the Nexus Synthesis Lab multiplier by x%d",
    MULT
  ),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
        MXML_CHANGE_TABLE = {{
          REPLACE_TYPE       = "ALL",
          INTEGER_TO_FLOAT   = "PRESERVE",
          MATH_OPERATION     = "*",
          VALUE_CHANGE_TABLE = { { "FragmentCost", MULT } }
        }}
      },
      {
        MBIN_FILE_SOURCE  = "GLOBALS/GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
        MXML_CHANGE_TABLE = {{
          INTEGER_TO_FLOAT   = "PRESERVE",
          MATH_OPERATION     = "*",
          VALUE_CHANGE_TABLE = { { "NexusRecipeCostNaniteMultiplier", MULT } }
        }}
      }
    }
  }}
}