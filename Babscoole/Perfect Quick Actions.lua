NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Perfect Quick Actions",
["MOD_AUTHOR"]      = "JinxM0D",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.02",
["MOD_DESCRIPTION"] = "This mod fine-tunes action timings within the UI environment to provide a better user experience",
["MODIFICATIONS"]   =
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
                {"RefinerPadStartTime",                "0.150000"},
                {"FrontendConfirmTimeMouseMultiplier", "1.150000"},
                {"FrontendConfirmTimeFast",            "0.000000"},
                {"FrontendConfirmTime",                "0.150000"},
                {"FrontendConfirmTimeSlow",            "1.000000"},
              }
            },
          }
        },
      }
    }
  }
}