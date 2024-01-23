NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME       = 'Test_EXPERIENCESPAWNTABLE.pak',
  MOD_AUTHOR         = 'Wbertro',
  NMS_VERSION        = '',
  MODIFICATIONS      = {{
  MBIN_CHANGE_TABLE  = {
  {
    MBIN_FILE_SOURCE  = 'METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN',
    EXML_CHANGE_TABLE  = {
      {
        SPECIAL_KEY_WORDS   = {"Id","BOUNTY3",},
        PRECEDING_KEY_WORDS = "Count",
        SECTION_ACTIVE = "0",
        VALUE_CHANGE_TABLE  = {
          {"x", 3},
          {"y", 3},
        },
      },
      {
          ["PRECEDING_KEY_WORDS"] = {"PirateBountySpawns", "gcAIShipSpawnData.xml", "Count"},
          ["SECTION_ACTIVE"] = {11,},
          ["REPLACE_TYPE"]         = "ALL",
          ["VALUE_CHANGE_TABLE"]     = 
          {
              {"x", "8"},
              {"y", "20"},
          },
      },
      {
          ["PRECEDING_KEY_WORDS"] = {"PirateBountySpawns", "gcAIShipSpawnData.xml", "Count"},
          ["SECTION_ACTIVE"] = {1,},
          ["REPLACE_TYPE"]         = "ALL",
          ["VALUE_CHANGE_TABLE"]     = 
          {
              {"x", "8"},
              {"y", "20"},
          },
      },
    },
  },
},},},}	 --6 global replacements