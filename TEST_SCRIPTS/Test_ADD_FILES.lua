NMS_MOD_DEFINITION_CONTAINER = {
  MOD_FILENAME  = '__TEST add file.pak',
  MOD_AUTHOR    = 'Wbertro',
  MODIFICATIONS = {},
  ADD_FILES     = {
    { 
      COMMENT = "--1) FAIL: missing DESTINATION",
      FILE_CONTENT = [[This is a file content]],
      --FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newContent.txt]], --missing destination
    },
    { 
      COMMENT = "--2) FAIL: missing DESTINATION",
      EXTERNAL_FILE_SOURCE = lfs.currentdir()..[[\TEST\AMBER.DDS]],
      FILE_DESTINATION   = [[]],
    },
    
    { 
      COMMENT = "--3) FAIL: too many, OK: with filename",
      EXTERNAL_FILE_SOURCE = lfs.currentdir()..[[\TEST\AMBER.DDS]],
      FILE_CONTENT = [[This is a file content]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newAMBER.DDS]], --OK: with filename
    },
    { 
      COMMENT = "--4) FAIL: too many, OK: with filename",
      ["INTERNAL_FILE_SOURCE"] 	= "TEXTURES\\PLANETS\\CREATURES/FISH/CLAM_01.DDS",
      EXTERNAL_FILE_SOURCE = lfs.currentdir()..[[\TEST\AMBER.DDS]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newAMBER.DDS]], --OK: with filename
    },
    { 
      COMMENT = "--5) FAIL: too many, OK: with filename",
      ["INTERNAL_FILE_SOURCE"] 	= "TEXTURES\\PLANETS\\CREATURES/FISH/CLAM_01.DDS",
      FILE_CONTENT = [[This is a file content]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newAMBER.DDS]], --OK: with filename
    },
    
    { 
      COMMENT = "--6) FAIL: all missing, OK: with filename",
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newAMBER.DDS]], --OK: with filename
    },

    { 
      COMMENT = "--7) FAIL: cannot find file, OK: creates folder, no filename",
      EXTERNAL_FILE_SOURCE = lfs.currentdir()..[[\TEST\AMBER.DDS]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/]], --OK: no filename
    },
    { 
      COMMENT = "--7a) SUCCESS: creates file in new folder",
      ["INTERNAL_FILE_SOURCE"] 	= "TEXTURES\\PLANETS\\CREATURES/FISH/CLAM_01.DDS",
      FILE_DESTINATION   = [[TEST\AMBER.DDS]], --OK: with filename
    },
    { 
      COMMENT = "--8) SUCCESS: no filename",
      EXTERNAL_FILE_SOURCE = lfs.currentdir()..[[\MOD\TEST\AMBER.DDS]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS]],  --OK: no filename
    },
    { 
      COMMENT = "--9) SUCCESS: with filename",
      EXTERNAL_FILE_SOURCE = lfs.currentdir()..[[\MOD\TEST\AMBER.DDS]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newAMBER.DDS]], --OK: with filename
    },
    { 
      COMMENT = "--10) SUCCESS: path relative to ModScript folder, OK: with filename",
      EXTERNAL_FILE_SOURCE = [[AMBER.DDS]], --path relative to ModScript folder/sub-folder
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newAMBER.DDS]], --OK: with filename
    },

    { 
      COMMENT = "--11) SUCCESS: with filename",
      FILE_CONTENT = [[
This is a file content
Second line]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS/newContent.txt]], --OK: with filename
    },
    { 
      COMMENT = "--12) FAIL: missing filename destination",
      FILE_CONTENT = [[This is a file content]],
      FILE_DESTINATION   = [[TEXTURES/COMMON/ROBOTS]],
    },

    { 
      COMMENT = "--13) FAIL: not found in PAK",
      ["INTERNAL_FILE_SOURCE"] 	= "TEXTURES\\PLANETS\\CREATURES/FISH/ERRORCLAM_01.DDS",
      FILE_DESTINATION   = [[TEST/COMMON/ROBOTS/]],
    },
    { 
      COMMENT = "--14) SUCCESS: no filename, relative to MODBUILDER\MOD",
      ["INTERNAL_FILE_SOURCE"] 	= "TEXTURES\\PLANETS\\CREATURES/FISH/CLAM_01.DDS",
      FILE_DESTINATION   = [[TEST/COMMON/ROBOTS/]], --OK: no filename, relative to MODBUILDER\MOD
    },
    { 
      COMMENT = "--15) SUCCESS: no filename, relative to MODBUILDER\MOD",
      ["INTERNAL_FILE_SOURCE"] 	= "TEXTURES\\PLANETS\\CREATURES/FISH/CLAM_01.DDS",
      FILE_DESTINATION   = [[TEST/COMMON/ROBOTS]],  --OK: no filename, relative to MODBUILDER\MOD
    },
    { 
      COMMENT = "--16) SUCCESS: with filename, relative to MODBUILDER\MOD",
      ["INTERNAL_FILE_SOURCE"] 	= "TEXTURES\\PLANETS\\CREATURES/FISH/CLAM_01.DDS",
      FILE_DESTINATION   = [[TEST/COMMON/ROBOTS/newAMBER.DDS]], --OK: with filename, relative to MODBUILDER\MOD
    },

  },
} --8 global replacements
