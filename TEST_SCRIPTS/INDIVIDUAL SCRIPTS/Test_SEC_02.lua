------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME     = '___TEST 003 section copying.pak',
  MOD_AUTHOR      = 'lMonk+Wbertro',
  NMS_VERSION      = "4+",
  MODIFICATIONS     = {{
  MBIN_CHANGE_TABLE  = {
  {
    MBIN_FILE_SOURCE  = 'METADATA/SIMULATION/SCANNING/SCANEVENTTABLEVEHICLE.MBIN',
    EXML_CHANGE_TABLE  = {
      {
      -- Wbertro: corrected
        -- [WARNING] No action done! --> false warning: the copy is good
      
      -- Wbertro: YES, at the same time
        -- If I add something here in VALUE_CHANGE_TABLE, the changes will
        -- be executed in the selected section!! meaning I can do 2 actions
        -- here - copying and normal section editing.
        
        SPECIAL_KEY_WORDS  = {'Name', 'MONOLITH'},
        SEC_SAVE_TO    = 'GcScanEventData', -- created internally
        -- VALUE_CHANGE_TABLE   = {
          -- {'Name',      'MONOLITH'},
        -- }
      },
      
      {
        SEC_EDIT     = 'GcScanEventData', -- retrieved from internal
        VALUE_CHANGE_TABLE   = {
          {'Name',      'DRONE_HIVE'},
          {'OSDMessage',    'UI_DRONEHIVE_LOCATED_OSD'},
          {'MarkerLabel',    'UI_SENTINEL_HIVE_NAME'},
          {'TooltipMessage',  'UI_DRONEHIVE_LOCATED'},
          
          -- Wbertro: normal behavior
          -- BuildingClass is a sub-section so this doesn't work
          -- {'BuildingClass',  'DroneHive'}, 
        }
      },
      
      {
        SEC_EDIT     = 'GcScanEventData', -- retrieved from internal
        
        -- Wbertro: Normal, the 1st line of the section IS also 'BuildingClass'
          -- PRECEDING_KEY_WORDS = 'BuildingClass',
          -- -- doesn't work without VALUE_MATCH. This an old issue (not version 4), but still annoying.
          -- VALUE_MATCH      = 'Monolith',
                
        -- Wbertro: ???, depends onthe SKW words used
          -- If I use SPECIAL_KEY_WORDS instead of PRECEDING and no SECTION_ACTIVE=1,
          -- I get a warning of other matches... but this is editing of a separate
          -- section (isn't it??)

        -- Wbertro: alternate way
        SKW = {"BuildingClass","Monolith",}, -- returns only section 30-32 (31)
        
        VALUE_CHANGE_TABLE   = {
          {'BuildingClass',  'IGNORE'}, -- Wbertro: skips the 1st one
          {'BuildingClass',  'DroneHive'}, -- replaces the next one
        }
      },
      
      {
      -- paste function works
      
      -- Wbertro: now inserted in 1st place
        -- ... with a minor side issue.
        -- The added section is inserted after the first, even though
        -- PRECEDING_KEY_WORDS='Events' signifies an insert first in the list...
        -- Doesn't matter in practice, it just mislead me when I didn't find
        -- the new section where it was supposed to be
      
        PRECEDING_KEY_WORDS = 'Events',
        SECTION_ADD_NAMED   = 'GcScanEventData', -- retrieved from internal, never saved to disk
      },
      
    }
  }
}}}} -- 7 global replacements
