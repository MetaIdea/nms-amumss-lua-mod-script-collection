NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME      = 'Test_Case-insensitive_2_SKW_pairs.pak',
  MOD_AUTHOR        = 'lMonk-Wbertro',
  NMS_VERSION       = 'all',
  MODIFICATIONS     = {{
  MBIN_CHANGE_TABLE = {
  {
    MBIN_FILE_SOURCE  = 'METADATA/REALITY/TABLES/REWARDTABLE.MBIN',
    EXML_CHANGE_TABLE = {
      {
        MATH_OPERATION     = '*',
        SPECIAL_KEY_WORDS  = {'Id', 'PLANT_SNOW', 'ID', 'PLANT_SNOW'},
        INTEGER_TO_FLOAT   = 'Preserve',
        VALUE_CHANGE_TABLE = {
          {'AmountMin',  0.9},
          {'AmountMax',  1.1}
        }
      }
    }
  },
  
  {
    MBIN_FILE_SOURCE  = 'GCVEHICLEGLOBALS.GLOBAL.MBIN',
    EXML_CHANGE_TABLE = {
      {
        SPECIAL_KEY_WORDS  = {'nAmE', 'bIKe'}, -- original = 'Name', 'BIKE'
        VALUE_CHANGE_TABLE = {
          {'NumWheels',  5},
        }
      }
    }
  }
}}} --3 global replacements
}