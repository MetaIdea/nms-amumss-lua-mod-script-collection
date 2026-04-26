NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Balanced Runaway Mould",
["MOD_AUTHOR"]      = "zchott",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "Rebalances runaway mould",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCRECIPETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_52"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TimeToMake", "600.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "REFINERECIPE_52", "Id", "SPACEGUNK2"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Amount", "20"},
              }
            },
          }
        }
      }
    }
  }
}