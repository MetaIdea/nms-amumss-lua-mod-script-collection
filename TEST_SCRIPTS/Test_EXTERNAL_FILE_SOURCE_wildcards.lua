--see also StandardSchemeExtended.lua

NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME     = '___TEST 08 file import.pak',
  MOD_AUTHOR      = 'lMonk',
  NMS_VERSION      = 3.99,
  MODIFICATIONS     = {{
  MBIN_CHANGE_TABLE  = {
  {
    MBIN_FILE_SOURCE  = 'MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTDARKTRAIL.MATERIAL.MBIN',
    EXML_CHANGE_TABLE  = {
      {
        COMMENT = [[1 action, SUCCESS]],
        VALUE_CHANGE_TABLE   = {
          {'Map', 'TEXTURES/EFFECTS/TRAILS/HOT/BLUEDARKER1.DDS'}
        }
      }
    }
  }
}}},
  ADD_FILES  = {
    {
      COMMENT = [[0 action: FAILURE if C:\broken_path is BAD path
            1 action: SUCCESS if ]C:\broken_path is GOOD path]],
      EXTERNAL_FILE_SOURCE= 'C:/broken_path/Textures/Effects/Trails/*.DDS',
      FILE_DESTINATION  = 'TEXTURES/EFFECTS/TRAILS/HOT/'
    }
  } --1 global replacement
}--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
