NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Free Upgrade",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.58",
["MOD_DESCRIPTION"] = "Free upgrades",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\COSTTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Id", "C_PILOT_UPGRADE"},
                {"Id", "C_PILOT_SLOT"},
                {"Id", "C_PET_SLOT"},
                {"Id", "C_WEAP_UPGRADE"},
                {"Id", "C_INV_WEAP_C"},
                {"Id", "C_INV_WEAP_CR"},
                {"Id", "C_ABAND_START"},
                {"Id", "C_CLASS_UPGRADE"},
                {"Id", "C_INV_SAL_CASH"},
                {"Id", "C_INV_SAL_CASHR"},
              },
              ["PRECEDING_KEY_WORDS"] = {"Costs"},
              ["REPLACE_TYPE"] = "ALLINSIDESECTION",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "C_PET_SLOT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AssertIfOutOfBounds", "true"},
              }
            },
          }
        },
      }
    },
  }
}