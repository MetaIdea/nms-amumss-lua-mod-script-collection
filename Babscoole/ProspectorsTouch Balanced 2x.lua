NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "ProspectorsTouch Balanced 2x",
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
                {"ResourceMinAmount",       "2"},
                {"ResourceMaxAmount",       "4"},
                {"ResourceCommonMinAmount", "2"},
                {"ResourceCommonMaxAmount", "16"},
                {"ResourceDirtMinAmount",   "2"},
                {"ResourceDirtMaxAmount",   "16"},
              }
            },
          }
        },
      }
    }
  }
}