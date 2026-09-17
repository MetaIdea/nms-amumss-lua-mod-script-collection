NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "UProspectorsTouch Precision Brush",
["MOD_AUTHOR"]    = "razpdr",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "7.00",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCTERRAINGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"SubtractSizes"},
              ["REPLACE_TYPE"] = "ONCEINSIDE",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE", "0.600000"},
                {"IGNORE", "1.200000"},
                {"IGNORE", "2.400000"},
              }
            },
          }
        },
      }
    }
  }
}