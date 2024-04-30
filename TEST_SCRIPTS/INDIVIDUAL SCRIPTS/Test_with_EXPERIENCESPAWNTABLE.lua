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
        COMMENT = [[EMPTY and current value 
        ]],
        SPECIAL_KEY_WORDS   = {"Id","BOUNTY3",},
        PRECEDING_KEY_WORDS = "Count",
        SECTION_ACTIVE = "0",
        VALUE_CHANGE_TABLE  = {
          {"x", 3, ""}, -- 3rd string empty, ok
          {"y", 3, "bounty3CountY"}, -- current value saved
        },
      },

      {
        COMMENT = [[malformed not saved, overwrite previous save
        ]],
        SPECIAL_KEY_WORDS   = {"Id","BOUNTY3",},
        PRECEDING_KEY_WORDS = "Count",
        SECTION_ACTIVE = "0",
        VALUE_CHANGE_TABLE  = {
          {"x", 6, "2_chance"}, -- saved
          {"y", 6, "bounty3CountY"}, -- current value saved over last save
        },
      },

      {
          COMMENT = [[NOTICE: SECTION_ACTIVE not used, OUT OF RANGE
          ]],
          ["PRECEDING_KEY_WORDS"] = {"PirateBountySpawns", "gcAIShipSpawnData.xml", "Count"},
          ["SECTION_ACTIVE"] = {11,},
          ["REPLACE_TYPE"]         = "ALL",
          ["VALUE_CHANGE_TABLE"]     = 
          {
              {"x", "8", ",test"}, -- will save to NamedValue ',test'
              {"y", "20", "{::}bounty3CountY"}, -- will save to NamedValue '{::}bounty3CountY'
          },
      },

      {
          COMMENT = [[works
          ]],
          ["PRECEDING_KEY_WORDS"] = {"PirateBountySpawns", "gcAIShipSpawnData.xml", "Count"},
          ["SECTION_ACTIVE"] = {1,},
          ["REPLACE_TYPE"]         = "ALL",
          ["VALUE_CHANGE_TABLE"]     = 
          {
              {"x", "8", "{:}bounty3CountY"}, -- previously saved value of 'bounty3CountY' used
              {"y", "40", "{:}{::}bounty3CountY"}, -- previously saved value of '{::}bounty3CountY' used
          },
      },

      {
          COMMENT = [[works
          ]],
          ["PRECEDING_KEY_WORDS"] = {"PirateBountySpawns", "gcAIShipSpawnData.xml", "Count"},
          ["SECTION_ACTIVE"] = {1,},
          ["REPLACE_TYPE"]         = "ALL",
          ["VALUE_CHANGE_TABLE"]     = 
          {
              {"x", "8", "{:}ThisWasNotSaved"}, -- no previously saved value of 'ThisWasNotSaved'
              {"y", "40", "{:},test"}, -- previously saved value of ',test' used
          },
      },

    },
  },
},},},}	 --10 global replacements