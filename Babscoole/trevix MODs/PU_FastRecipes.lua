NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_FastRecipes",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.20",
["MOD_DESCRIPTION"] = "Refining is fast. very fast",
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
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TimeToMake", "0.250000"},
              }
            },
          }
        },
      }
    }
  }
}