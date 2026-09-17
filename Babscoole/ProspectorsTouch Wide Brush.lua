NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "ProspectorsTouch Wide Brush",
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
                {"IGNORE", "1.000000"},
                {"IGNORE", "2.000000"},
                {"IGNORE", "4.000000"},
              }
            },
          }
        },
      }
    }
  }
}