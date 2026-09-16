NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "NOE Flight",
["MOD_AUTHOR"]    = "JohnFiction84",
["LUA_AUTHOR"]    = "If you prefer a more controlled landing, this mod will help",
["NMS_VERSION"]   = "7.01",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GroundHeightSoft",                        "0"},
                {"GroundHeightHard",                        "0"},
                {"GroundHeightPostCollisionMultiplier",     "0"},
                {"GroundHeightPostCollisionMultiplierTime", "0"},
                {"GroundHeightDownSpeedMultiplier",         "1"},
                {"GroundHeightBrakeMultiplier",             "0"},
                {"PitchCorrectSoft",                        "0"},
                {"PitchCorrectMax",                         "0"},
                {"PitchCorrectSpring",                      "0"},
                {"GroundHeightPitchCorrectMargin",          "0"},
              }
            },
          }
        },
      }
    },
  }
}
