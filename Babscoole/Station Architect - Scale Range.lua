NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Station Architect - Scale Range",
["MOD_AUTHOR"]      = "razpdr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Changes the shared construction scale range from 0.25-3 to 0.1-10",
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
              ["PRECEDING_KEY_WORDS"] = {"BuildingPlacementScaleMinMax"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X", "0.100000"},
                {"Y", "10.000000"},
              }
            },
          }
        },
      }
    },
  }
}
