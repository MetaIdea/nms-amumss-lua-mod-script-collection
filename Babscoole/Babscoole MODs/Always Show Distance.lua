NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Always Show Distance",
["MOD_AUTHOR"]    = "degraaaff",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.18",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCUIGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"HUDMarkerDistanceOrTimeDistance", "10000000"},
              }
            },
          }
        },
      }
    },
  }
}