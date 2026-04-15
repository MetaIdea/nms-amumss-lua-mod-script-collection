NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Oceanus Pet Unlocker",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.33",
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
          }
        }
      }
    }
  }
}