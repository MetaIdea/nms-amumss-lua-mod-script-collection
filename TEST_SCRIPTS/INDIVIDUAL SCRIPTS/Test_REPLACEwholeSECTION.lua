NMS_MOD_DEFINITION_CONTAINER = {
   MOD_AUTHOR = [[lyravega]],
   MOD_DESCRIPTION = [[Test ADD_OPTION = REPLACEwholeSECTION]],
   LUA_AUTHOR = [[lyravega & Wbertro]],
   GLOBAL_INTEGER_TO_FLOAT = [[FORCE]],
   MOD_FILENAME = [[Test_REPLACEwholeSECTION.pak]],
   -- AMUMSS_SUPPRESS_MSG = [[MULTIPLE_STATEMENTS, UNUSED_VARIABLE, MIXED_TABLE, NUMBERtoSTRING]],
   NMS_VERSION = [[5.12]],
   MODIFICATIONS = {
      {
         MBIN_CT = {
            {
               EXML_CT = {
                  {
                     SEC_COPY = [[lyr_tempSection]],
                     PKW = {[[GcCameraShakeData.xml]],},
                     WIS = {
                        {[[Name]],[[NOSHAKE]],},
                     },
                  },
                  {
                     SEC_EDIT = [[lyr_tempSection]],
                     VCT = {
                        {[[Name]],[[LARGECREATUREWA]],},
                     },
                  },
                  {
                     ADD_OPTION = [[REPLACEwholeSECTION]],
                     REPLACE_TYPE = [[ALL]],
                     PKW = {[[GcCameraShakeData.xml]],},
                     WIS = {
                        {[[Name]],[[LARGECREATUREWA]],},
                     },
                     SEC_PASTE = [[lyr_tempSection]],
                  },
               },
               MBIN_FS = [[GCCAMERAGLOBALS.GLOBAL.MBIN]],
            },
         },
      },
   }, --3 global replacements
}