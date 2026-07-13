NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Terrain Manipulator Booster",
["MOD_AUTHOR"]      = "Bladehawke",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.00",
["MOD_DESCRIPTION"] = "Restricts the other player interaction angle and range to prevent accidental interactions, especially near the quicksilver vendor",
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
                {"SpecialMiningAmount",     "100"},
                {"ResourceMinAmount",       "50"},
                {"ResourceMaxAmount",       "100"},
                {"ResourceCommonMinAmount", "50"},
                {"ResourceCommonMaxAmount", "100"},
                {"ResourceDirtMinAmount",   "50"},
                {"ResourceDirtMaxAmount",   "100"},
              }
            },
          }
        },
      }
    }
  }
}