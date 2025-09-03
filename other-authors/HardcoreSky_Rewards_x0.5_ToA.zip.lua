local MULT = 0.5

local MOD_NAME     = "HardcoreSky_Rewards"
local TAG_SUFFIX   = "ToA"
local GAME_VERSION = "6.0.1"
local MULT_STR     = (string.format("%.3f", MULT):gsub("0+$",""):gsub("%.$",""))
local MOD_FILENAME = string.format("%s_x%s_%s.zip", MOD_NAME, MULT_STR, TAG_SUFFIX)

NMS_MOD_DEFINITION_CONTAINER =
{
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = "Halve global reward amounts and restrict tech drops to A/B/C (S->A, X removed). Includes 0->1 clamp to avoid zero-reward bug.",
  MODIFICATIONS   =
  {{
    MBIN_CHANGE_TABLE =
    {
      -- REWARDTABLE
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
          -- Escalado global
          {
            REPLACE_TYPE       = "ALL",
            INTEGER_TO_FLOAT   = "PRESERVE",
            MATH_OPERATION     = "*",
            VALUE_CHANGE_TABLE =
            {
              {"AmountMin", MULT},
              {"AmountMax", MULT}
            }
          },
          -- Clamp anti 0 (evita 1*0.5 -> 0 tras truncados)
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMin","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMax","1"} } },

          -- Downgrade de calidad ProcTech: 4/5 -> 3 (S/X -> A)
          { REPLACE_TYPE="ALL", VALUE_MATCH="4", VALUE_CHANGE_TABLE = { {"ProcTechQuality","3"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="5", VALUE_CHANGE_TABLE = { {"ProcTechQuality","3"} } },

          -- Forzar clases: S -> A, X -> A
          { REPLACE_TYPE="ALL", VALUE_MATCH="S", VALUE_CHANGE_TABLE = { {"InventoryClass","A"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="X", VALUE_CHANGE_TABLE = { {"InventoryClass","A"} } }
        }
      },

      -- MISSIONTABLE
      {
        MBIN_FILE_SOURCE  = "METADATA/SIMULATION/MISSIONS/TABLES/MISSIONTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
          -- Escalado global
          {
            REPLACE_TYPE       = "ALL",
            INTEGER_TO_FLOAT   = "PRESERVE",
            MATH_OPERATION     = "*",
            VALUE_CHANGE_TABLE =
            {
              {"AmountMin", MULT},
              {"AmountMax", MULT}
            }
          },
          -- Clamp anti 0
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMin","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMax","1"} } }
        }
      },

      -- SEASONALMISSIONTABLE
      {
        MBIN_FILE_SOURCE  = "METADATA/SIMULATION/MISSIONS/TABLES/SEASONALMISSIONTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
          -- Escalado global
          {
            REPLACE_TYPE       = "ALL",
            INTEGER_TO_FLOAT   = "PRESERVE",
            MATH_OPERATION     = "*",
            VALUE_CHANGE_TABLE =
            {
              {"AmountMin", MULT},
              {"AmountMax", MULT}
            }
          },
          -- Clamp anti 0
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMin","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMax","1"} } }
        }
      }
    }
  }}
}