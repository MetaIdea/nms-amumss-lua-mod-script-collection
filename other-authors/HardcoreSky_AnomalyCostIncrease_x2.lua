local MULT = 2

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = "HardcoreSky_AnomalyCostIncrease_x2",
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = "5.58",
  MOD_DESCRIPTION = "Increases Anomaly blueprint (nanite) costs and Nexus nanite multiplier by x2",
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
        MXML_CHANGE_TABLE = {{
          REPLACE_TYPE       = "ALL",
          MATH_OPERATION     = "*",
          VALUE_CHANGE_TABLE = { { "FragmentCost", MULT } }
        }}
      },
      {
        MBIN_FILE_SOURCE  = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
        MXML_CHANGE_TABLE = {{
          REPLACE_TYPE       = "ALL",
          MATH_OPERATION     = "*",
          VALUE_CHANGE_TABLE = { { "NexusRecipeCostNaniteMultiplier", MULT } }
        }}
      }
    }
  }}
}