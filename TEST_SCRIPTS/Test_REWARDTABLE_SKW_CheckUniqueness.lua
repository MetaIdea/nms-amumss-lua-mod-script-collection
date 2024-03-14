NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME     = 'Test_REWARDTABLE_SKW_CheckUniqueness.lua.pak',
  MOD_AUTHOR      = 'Wbertro',
  NMS_VERSION      = 9.99,
  MODIFICATIONS     = {{
  MBIN_CHANGE_TABLE  = {
  {
    MBIN_FILE_SOURCE  = 'METADATA\REALITY\TABLES\REWARDTABLE.MBIN',
    EXML_CHANGE_TABLE  = {
      {
        COMMENT = [[1 replacement -> Only 'matching values' in the FIRST section is replaced by 'True']],
        SKW = {"RewardChoice","TryFirst_ThenSelectAlways",},
        -- REPLACE_TYPE = "ONCE", -- the default value
        VALUE_CHANGE_TABLE   = {
          {'UseInventoryChoiceOverride', 'True'},
        },
      },
      {
        COMMENT = [[9 replacement -> ALL 'matching values' in the sections are replaced by 'True']],
        SKW = {"RewardChoice","TryFirst_ThenSelectAlways",},
        REPLACE_TYPE = "ALL",
        VALUE_CHANGE_TABLE   = {
          {'UseInventoryChoiceOverride', 'True'},
        },
      },
      {
        COMMENT = [[MANY replacements -> ALL matching 'values' in the FIRST section are replaced]],
        SKW = {"RewardChoice","TryFirst_ThenSelectAlways",},
        REPLACE_TYPE = "ALLINSECTION",
        VALUE_CHANGE_TABLE   = {
          {'UseInventoryChoiceOverride', 'True'},
          {"AmountMin","10",},
        },
      },
      -- {
        -- COMMENT = [[MANY replacements -> Only 'matching values' in the 1st section and the REST of the file are replaced by 'True']],
        -- SKW = {"RewardChoice","TryFirst_ThenSelectAlways",},
        -- REPLACE_TYPE = "FOLLOWING", -- not implemented
        -- VALUE_CHANGE_TABLE   = {
          -- {'UseInventoryChoiceOverride', 'True'},
        -- },
      -- },
    },
  }, --22 global replacements
}}},
}--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
