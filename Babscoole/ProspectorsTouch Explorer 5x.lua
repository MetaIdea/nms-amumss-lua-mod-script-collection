NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "ProspectorsTouch Explorer 5x",
["MOD_AUTHOR"]      = "razpdr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.00",
["MOD_DESCRIPTION"] = "Spend less time gathering with three Terrain Manipulator resource presets",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ResourceMinAmount",       "5"},
                {"ResourceMaxAmount",       "10"},
                {"ResourceCommonMinAmount", "5"},
                {"ResourceCommonMaxAmount", "40"},
                {"ResourceDirtMinAmount",   "5"},
                {"ResourceDirtMaxAmount",   "40"},
              }
            },
          }
        },
      }
    }
  }
}