NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Balanced Extractors",
["MOD_AUTHOR"]      = "zchott",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "limits each extractor type (mineral, gas) to max 1 per planet and lowers their output rate by 50%",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\BASEBUILDINGOBJECTSTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "U_EXTRACTOR_S"},
                {"ID", "U_GASEXTRACTOR"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PlanetLimit", "1"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "U_EXTRACTOR_S",  "LinkGridData", "GcBaseLinkGridData"},
                {"ID", "U_GASEXTRACTOR", "LinkGridData", "GcBaseLinkGridData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Rate", "50"},
              }
            },
          }
        }
      }
    }
  }
}