NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Oceanus Pet Unlocker",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.32",
["MOD_DESCRIPTION"] = "Unlock Oceanus eggs",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\PETSHOPITEMSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RequiredStatTier", "0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ProductID", "SPEC_PB_EGG02"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RequiredStat", "PB_WINS"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ProductID", "SPEC_PB_EGG05"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RequiredStat", "PB_D_NEXUS"},
              }
            },
          }
        }
      }
    }
  }
}