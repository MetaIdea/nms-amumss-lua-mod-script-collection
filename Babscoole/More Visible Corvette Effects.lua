NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "More Visible Corvette Effects",
["MOD_AUTHOR"]      = "Aceship",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.10",
["MOD_DESCRIPTION"] = "Increase the amount of the effects displayed in corvette, especially the hover effects",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCBUILDABLESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"PartFXLimits"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Cockpit",   "20"},
                {"Hab",       "20"},
                {"Gear",      "24"},
                {"Gun",       "24"},
                {"Shield",    "20"},
                {"Hull",      "20"},
                {"Access",    "24"},
                {"Wing",      "24"},
                {"Engine",    "20"},
                {"Reactor",   "20"},
                {"Connector", "20"},
                {"Decor",     "20"},
              }
            },
          }
        },
      }
    }
  }
}