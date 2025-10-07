local MULT   = 2
local REVERT = 1 / MULT

local MOD_NAME     = "HardcoreSky_TechCost"
local GAME_VERSION = "6.06"
local MOD_FILENAME = string.format("%s_x%d.zip", MOD_NAME, MULT)

local EARLY_IDS = { "JET1", "PROTECT", "ENERGY", "SCAN1", "TERRAINEDITOR" }

local CHANGES = {
  {
    PRECEDING_KEY_WORDS = { "Requirements" },
    REPLACE_TYPE        = "ALL",
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = { { "Amount", MULT } }
  },
}
for _, id in ipairs(EARLY_IDS) do
  table.insert(CHANGES, {
    SPECIAL_KEY_WORDS   = { "ID", id },
    SECTION_UP          = 1,
    PRECEDING_KEY_WORDS = { "Requirements" },
    REPLACE_TYPE        = "ALL",
    INTEGER_TO_FLOAT    = "PRESERVE",
    MATH_OPERATION      = "*",
    VALUE_CHANGE_TABLE  = { { "Amount", REVERT } }
  })
end

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME    = MOD_FILENAME,
  MOD_AUTHOR      = "Azunain",
  LUA_AUTHOR      = "Azunain",
  NMS_VERSION     = GAME_VERSION,
  MOD_DESCRIPTION = string.format(
    "Increases technology install material costs by x%d; excludes core early-game tech from scaling",
    MULT
  ),
  MODIFICATIONS   = {{
    MBIN_CHANGE_TABLE = {{
      MBIN_FILE_SOURCE  = "METADATA/REALITY/TABLES/NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
      MXML_CHANGE_TABLE = CHANGES
    }}
  }}
}