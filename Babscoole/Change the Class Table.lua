NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Change the Class Table",
["MOD_AUTHOR"]    = "Telia",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "7.04",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Poor", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "5.000000"},
                {"B", "35.000000"},
                {"A", "30.000000"},
                {"S", "30.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Average", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "5.000000"},
                {"B", "20.000000"},
                {"A", "30.000000"},
                {"S", "45.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Wealthy", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "5.000000"},
                {"B", "5.000000"},
                {"A", "30.000000"},
                {"S", "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Pirate", "GcInventoryClassProbabilities"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"C", "5.000000"},
                {"B", "5.000000"},
                {"A", "30.000000"},
                {"S", "60.000000"},
              }
            },
          }
        },
      }
    }
  }
}