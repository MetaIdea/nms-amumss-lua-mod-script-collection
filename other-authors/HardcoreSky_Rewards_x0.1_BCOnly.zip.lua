local MULT = 0.1

local MOD_NAME     = "HardcoreSky_Rewards"
local TAG_SUFFIX   = "BCOnly"
local GAME_VERSION = "6.0.1"
local MULT_STR     = (string.format("%.3f", MULT):gsub("0+$",""):gsub("%.$",""))
local MOD_FILENAME = string.format("%s_x%s_%s.zip", MOD_NAME, MULT_STR, TAG_SUFFIX)

NMS_MOD_DEFINITION_CONTAINER =
{
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = "Reduce global rewards by 90% and restrict all module drops to class B or C only (no A/S). Includes 0->1 clamp to avoid zero-reward bug.",
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
          -- Clamp para evitar 1->0 tras el multiplicador
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMin","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMax","1"} } },

          -- Bajar calidad de ProcTech (2/3/4 -> 1)
          { REPLACE_TYPE="ALL", VALUE_MATCH="2", VALUE_CHANGE_TABLE = { {"ProcTechQuality","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="3", VALUE_CHANGE_TABLE = { {"ProcTechQuality","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="4", VALUE_CHANGE_TABLE = { {"ProcTechQuality","1"} } },

          -- Forzar clases de módulos a B (A/S -> B). C se mantiene.
          { REPLACE_TYPE="ALL", VALUE_MATCH="A", VALUE_CHANGE_TABLE = { {"InventoryClass","B"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="S", VALUE_CHANGE_TABLE = { {"InventoryClass","B"} } }
          -- Nota: si necesitas también bloquear X en tu versión, avísame y lo añadimos puntualmente
          -- sólo en las fuentes de drop que aún puedan generarlo para evitar avisos vacíos.
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