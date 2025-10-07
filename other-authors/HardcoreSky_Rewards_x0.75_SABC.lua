local MULT = 0.75

local MOD_NAME     = "HardcoreSky_Rewards"
local TAG_SUFFIX   = "SABC"
local GAME_VERSION = "6.06"
local MULT_STR     = (string.format("%.3f", MULT):gsub("0+$",""):gsub("%.$",""))
local MOD_FILENAME = string.format("%s_x%s_%s.zip", MOD_NAME, MULT_STR, TAG_SUFFIX)

local INV = tostring(1 / MULT)

NMS_MOD_DEFINITION_CONTAINER =
{
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = "Reduce reward amounts by 25% (x0.75), force Illegal & Sentinel modules to C-class, leave Quicksilver unaffected, and include 0->1 clamp to avoid zero-reward bug.",
  MODIFICATIONS   =
  {{
    MBIN_CHANGE_TABLE =
    {
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
          { SPECIAL_KEY_WORDS={"Quality","Illegal"},  REPLACE_TYPE="ALL", VALUE_CHANGE_TABLE={{"Quality","Normal"}} },
          { SPECIAL_KEY_WORDS={"Quality","Sentinel"}, REPLACE_TYPE="ALL", VALUE_CHANGE_TABLE={{"Quality","Normal"}} },
        }
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
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
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMin","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMax","1"} } },

          -- QS restore: buscar Currency="Specials", subir 1 nivel y deshacer el escalado
          {
            SPECIAL_KEY_WORDS  = {"Currency","Specials"},
            SECTION_UP         = 1,
            REPLACE_TYPE       = "ALL",
            INTEGER_TO_FLOAT   = "PRESERVE",
            MATH_OPERATION     = "*",
            VALUE_CHANGE_TABLE =
            {
              {"AmountMin", INV},
              {"AmountMax", INV},
            }
          },
        }
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/SIMULATION/MISSIONS/TABLES/MISSIONTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
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
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMin","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMax","1"} } }
        }
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/SIMULATION/MISSIONS/TABLES/SEASONALMISSIONTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
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
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMin","1"} } },
          { REPLACE_TYPE="ALL", VALUE_MATCH="0", VALUE_CHANGE_TABLE = { {"AmountMax","1"} } }
        }
      }
    }
  }}
}