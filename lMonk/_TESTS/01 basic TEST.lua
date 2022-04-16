--[[-----------------------------------------
Hey @bwbertro First, thank you for the update :)
- Now, the following script makes changes to sections 1 & 5, but still gives notice of "KEY_WORDS located more than one section and REPLACE_TYPE is missing!" - exactly what SECTION_ACTIVE is all about.
- Also, what do SECTION_ACTIVE=0 do? Your expalantion is "keep all selected sections"; to me, that reads like REPLACE_TYPE= ALL', except that it doesn't do that.
-------------------------------------------]]

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME      = '__TEST 09 PROC TECH.pak',
  MOD_AUTHOR        = 'lMonk',
  NMS_VERSION       = '3.74',
  MODIFICATIONS     = {{
  MBIN_CHANGE_TABLE = {
  {
    MBIN_FILE_SOURCE  = 'METADATA/REALITY/TABLES/NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN',
    EXML_CHANGE_TABLE = {
      {
        MATH_OPERATION     = '*',
        INTEGER_TO_FLOAT   = 'FORCE',
        SPECIAL_KEY_WORDS  = {'Name', 'UP_JETBOOST', 'StatsType', 'Suit_Jetpack_Tank'},
        SECTION_ACTIVE     = {1, 5},
        SECTION_UP         = 1,
        VALUE_CHANGE_TABLE = {
          {'ValueMin', 5},
          {'ValueMax', 5}
        }
      }
    }
  }
}}}}
