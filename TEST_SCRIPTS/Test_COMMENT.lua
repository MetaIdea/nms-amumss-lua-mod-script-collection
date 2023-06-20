NMS_MOD_DEFINITION_CONTAINER = 
{
  MOD_FILENAME       = 'Test_COMMENT.pak',
  MOD_AUTHOR         = 'Wbertro',
  NMS_VERSION        = '',
  MODIFICATIONS      = {{
  MBIN_CHANGE_TABLE  = {
  {
    MBIN_FILE_SOURCE  = 'METADATA//SIMULATION//SCENE//EXPERIENCESPAWNTABLE.MBIN',
    EXML_CHANGE_TABLE  = {
      {
        COMMENT = "These SPECIAL_KEY_WORDS are intentionally WRONG",
        SPECIAL_KEY_WORDS   = {'Id','ZZZZ_BOUNTY3',}, --to cause NO ACTION DONE
        PRECEDING_KEY_WORDS = 'Count',
        SECTION_ACTIVE = "0",
        VALUE_CHANGE_TABLE  = {
          {'x', 3,},
          {'y', 3,},
        },
      },
      {
        -- COMMENT = "", --NO comment here
        SPECIAL_KEY_WORDS   = {'Id','BOUNTY3',},
        PRECEDING_KEY_WORDS = 'Count',
        SECTION_ACTIVE = "0",
        VALUE_CHANGE_TABLE  = {
          {'x', 3,},
          {'y', 3,},
        },
      },
      {
        COMMENT = "Preceding section had no comment.  But this one does!!!",
        SPECIAL_KEY_WORDS   = {'Id','BOUNTY3',},
        PRECEDING_KEY_WORDS = 'Count',
        SECTION_ACTIVE = "0",
        VALUE_CHANGE_TABLE  = {
          {'x', 3,},
          {'y', 3,},
        },
      },
    },
  },
},},},
}	 --4 global replacements