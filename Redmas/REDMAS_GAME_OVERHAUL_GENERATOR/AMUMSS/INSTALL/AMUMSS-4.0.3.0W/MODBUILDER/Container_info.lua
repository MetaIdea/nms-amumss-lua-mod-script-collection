Container_info = {

NMS_MOD_DEFINITION_CONTAINER = {
  types = {"table",},
  members = {
    "MOD_FILENAME",
    "MOD_AUTHOR",
    "LUA_AUTHOR",
    "MOD_DESCRIPTION",
    "NMS_VERSION",
    "MOD_BATCHNAME",
    "MODIFICATIONS",
    "ADD_FILES",
  }
},

ADD_FILES = {
  types = {"nil","table",},
  members = {
    "FILE_DESTINATION",
    "EXTERNAL_FILE_SOURCE",
    "FILE_CONTENT",
  }
},

MODIFICATIONS = {
  types = {"nil","table",},
  members = {
    "MBIN_CHANGE_TABLE",
    "PAK_FILE_SOURCE",  --not required, not used
  }
},

MBIN_CHANGE_TABLE = {
  types = {"nil","table",},
  members = {
    "MBIN_FILE_SOURCE",
    "REGEXBEFORE",
    "REGEXAFTER",
    "EXML_CHANGE_TABLE",
  }
},

EXML_CHANGE_TABLE = {
  types = {"nil","table",},
  members = {
    "SPECIAL_KEY_WORDS",
    "PRECEDING_FIRST",
    "PRECEDING_KEY_WORDS",
    "SECTION_UP",
    "SECTION_SPECIAL_UP",
    "SECTION_ACTIVE",
    "WHERE_IN_SECTION",
    "WHERE_IN_SUBSECTION",
    "SAVE_SECTION_TO",
    "SAVE_SECTION_ACROSS",
    "USE_SECTION",
    "MATH_OPERATION",
    "INTEGER_TO_FLOAT",
    "REPLACE_TYPE",
    "VALUE_MATCH",
    "VALUE_MATCH_TYPE",
    "LINE_OFFSET",
    "VALUE_CHANGE_TABLE",
    "FOREACH_SPECIAL_KEY_WORDS",
    "ADD_OPTION",
    "ADD",
    "REMOVE",
  }
},

}