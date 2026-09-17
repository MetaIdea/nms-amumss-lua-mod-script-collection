NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Prerelease Atmosphere Crescent Rendering",
["MOD_AUTHOR"]      = "AyyMang",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00",
["MOD_DESCRIPTION"] = "Prerelease Atmosphere Crescent Rendering",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"SpaceSkyMin", "GcSpaceSkyProperties"},
                {"SpaceSkyMax", "GcSpaceSkyProperties"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AtmosphereThickness", "0.4500000"},
              }
            },
          }
        },
      }
    }
  }
}