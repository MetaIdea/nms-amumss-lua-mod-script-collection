NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PSI Expanded Base-5000u",
["MOD_AUTHOR"]      = "AstraSyndulla",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Expands base computer land claim radius past the default 300u without the need for manual expansion",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinRadiusForBases",       "5000.000000"},
                {"MaxRadiusForPlanetBases", "5000.000000"},
                {"BaseRadiusExtension",     "250.000000"},
              }
            },
          }
        },
      }
    }
  }
}