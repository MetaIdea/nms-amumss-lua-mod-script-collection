NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "BuildableShip 99999",
["MOD_AUTHOR"]      = "VoyagerZefram",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "BuildableShip 99999 EXML",
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
                {"Cockpit",   "99999"},
                {"Hab",       "99999"},
                {"Gear",      "99999"},
                {"Gun",       "99999"},
                {"Shield",    "99999"},
                {"Hull",      "99999"},
                {"Access",    "99999"},
                {"Wing",      "99999"},
                {"Engine",    "99999"},
                {"Reactor",   "99999"},
                {"Connector", "99999"},
                {"Decor",     "99999"},
              }
            },
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ComplexityLimitWarningNX","99999"},
                {"ComplexityLimitWarning",  "99999"},
              }
            },
          }
        },
      }
    }
  }
}