NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Subtler Screen Filters for Anomaly Worlds",
["MOD_AUTHOR"]      = "CodenameAwesome",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "5.50",
["MOD_DESCRIPTION"] = "Makes screen filters on weird worlds fade in after a distance of 1000u, making it look more like an atmospheric effect",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGRAPHICSGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"LUTDistanceFlightMultiplier", "1"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\EFFECTS\SCREENFILTERS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Weird1", "GcScreenFilterData"},
                {"Weird2", "GcScreenFilterData"},
                {"Weird3", "GcScreenFilterData"},
                {"Weird4", "GcScreenFilterData"},
                {"Weird5", "GcScreenFilterData"},
                {"Weird6", "GcScreenFilterData"},
                {"Weird7", "GcScreenFilterData"},
                {"Weird8", "GcScreenFilterData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"FadeDistance", "1000"},
              }
            },
          }
        },
      }
    }
  }
}
