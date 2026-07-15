NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_NoJetpackBrake",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"UnderwaterMaxSpeedTotalJetpacking", "20.000000"},
                {"JetpackJetAnimateOutTime",          "0.000000"},
                {"JetpackJetAnimateInTime",           "0.000000"},
                {"JetpackBrake",                      "0.000000"},
                {"JetpackHelmetBob",                  "0.100000"},
              }
            },
          }
        },
      }
    }
  }
}