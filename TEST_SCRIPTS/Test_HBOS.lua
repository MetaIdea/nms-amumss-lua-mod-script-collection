NMS_MOD_DEFINITION_CONTAINER = {
	AMUMSS_SUPPRESS_MSG = [[MULTIPLE_STATEMENTS, UNUSED_VARIABLE]],
	MOD_AUTHOR = [[lyravega]],
	NMS_VERSION = [[4.07]],
	LUA_AUTHOR = [[lyravega and Wbertro]],
	MOD_DESCRIPTION = [[Test Stuff]],
	MOD_FILENAME = [[Test_HBOS.pak]],
	GLOBAL_INTEGER_TO_FLOAT = [[FORCE]],
	MODIFICATIONS = {
		{
			MBIN_CT = {
        {
          MBIN_FS = [[METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN]],
          EXML_CT = {
            {
              SEC_KEEP = [[true]],
              PKW = [[SubGroups]],
              SKW = {[[ID]],[[PLANET_TECH]],},
              SEC_SAVE_TO = [[lyr_tempSection]],
            },
            
-- HBOS is 'Head and Bottom Of Section'

            -- -- HBOS could also be done here, the NAMED_SECTION is modified and saved on disk
            -- {
              -- SEC_SAVE_TO = [[lyr_tempSection]],
              -- SEC_KEEP = [[true]],
              -- SEC_EDIT = [[lyr_tempSection]],
              -- REMOVE = [[HBOS]],
            -- },

            -- if HBOS is done here, the NAMED_SECTION is modified temporarely in memory
            {
              SKW = {[[Id]],[[FRE_TECH_OTHER]],},
              ADD_OPTION = [[ADDafterSECTION]],
              SEC_ADD_NAMED = [[lyr_tempSection]],
              REMOVE = [[HBOS]],
            },
          },
        },
			},
		},
	}, --2 global replacements
}