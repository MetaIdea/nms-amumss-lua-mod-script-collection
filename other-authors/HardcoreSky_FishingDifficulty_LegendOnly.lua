local WAIT_MULT  = 2.0
local REACT_MULT = 0.5

local MOD_NAME     = "HardcoreSky_FishingDifficulty_LegendOnly"
local GAME_VERSION = "6.06"
local MOD_FILENAME = MOD_NAME .. ".zip"

NMS_MOD_DEFINITION_CONTAINER =
{
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = "Fishing overhaul: min/max wait x2.0, react window x0.5. Rewards only on Legendary releases. No line feedback.",
  MODIFICATIONS   =
  {{
    MBIN_CHANGE_TABLE =
    {
      {
        MBIN_FILE_SOURCE  = "GLOBALS/GCFISHINGGLOBALS.GLOBAL.MBIN",
        MXML_CHANGE_TABLE =
        {
          { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", VALUE_CHANGE_TABLE = { {"MinWaitTime", WAIT_MULT}, {"MaxWaitTime", WAIT_MULT} } },
          { INTEGER_TO_FLOAT="PRESERVE", MATH_OPERATION="*", VALUE_CHANGE_TABLE = { {"FishCatchAfterBiteTime", REACT_MULT} } },

          { PRECEDING_KEY_WORDS={"LineColourDefault"}, VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } },
          { PRECEDING_KEY_WORDS={"LineColourNibble"},  VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } },
          { PRECEDING_KEY_WORDS={"LineColourBite"},    VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } },
          { PRECEDING_KEY_WORDS={"LineColourChase"},   VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } },
          { PRECEDING_KEY_WORDS={"LineColourLand"},    VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } },
          { PRECEDING_KEY_WORDS={"LineColourFail"},    VALUE_CHANGE_TABLE={ {"R","0"},{"G","0"},{"B","0"},{"A","0"} } },
          { VALUE_CHANGE_TABLE = {
              {"LineColourChangeRate","0"},
              {"LineColourChangeRateNibble","0"},
              {"LineColourChangeRateBite","0"},
              {"LineBrightness","0"}
          } }
        }
      },
      {
        MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/REWARDTABLE.MBIN",
        MXML_CHANGE_TABLE =
        {
          { SPECIAL_KEY_WORDS={"Id","R_FISH_COMMON"}, PRECEDING_KEY_WORDS={"List","List"}, REPLACE_TYPE="ALL", VALUE_CHANGE_TABLE={{"PercentageChance","0"}} },
          { SPECIAL_KEY_WORDS={"Id","R_FISH_RARE"},   PRECEDING_KEY_WORDS={"List","List"}, REPLACE_TYPE="ALL", VALUE_CHANGE_TABLE={{"PercentageChance","0"}} },
          { SPECIAL_KEY_WORDS={"Id","R_FISH_EPIC"},   PRECEDING_KEY_WORDS={"List","List"}, REPLACE_TYPE="ALL", VALUE_CHANGE_TABLE={{"PercentageChance","0"}} }
        }
      }
    }
  }}
}