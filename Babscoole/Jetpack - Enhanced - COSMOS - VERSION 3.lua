NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Jetpack - Enhanced - COSMOS - VERSION 3",
["MOD_AUTHOR"]      = "foxmlg aka Zotikus",
["MOD_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.05",
["MOD_DESCRIPTION"] = "Enhance jetpack",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"JetpackUnderwaterFillRate",             "2.000000"},
                {"JetpackDrainHorizontalFactor",          "0.250000"},
                {"MeleeBoostAirForce",                    "5.000000"},
                {"MeleeToAirBoostInitialImpulse",         "7.000000"},
                {"MaxTimeInMeleeBoost",                   "2.000000"},
                {"JetpackForce",                          "75.600000"},
                {"JetpackBrake",                          "3.500000"},
                {"JetpackMaxSpeed",                       "27.000000"},
                {"JetpackMaxUpSpeed",                     "63.000000"},
                {"JetpackUpForce",                        "57.600000"},
                {"JetpackIgnitionForce",                  "162.000000"},
                {"JetpackIgnitionTime",                   "0.090909"},
                {"JetpackMinIgnitionTime",                "0.045454"},
                {"JetpackFillRate",                       "3.200000"},
                {"JetpackFillRateSpaceStationMultiplier", "10.000000"},
                {"JetpackUpForceDeadPlanetExtra",         "15.000000"},
                {"JetpackForceDeadPlanetExtra",           "80.000000"},
                {"JetpackIgnitionForceDeadPlanetExtra",   "0.000000"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET1", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "6.000000"},
                {"ValueMax", "9.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET2", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "6.000000"},
                {"ValueMax", "9.900000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET3", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "9.000000"},
                {"ValueMax", "13.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET4", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "12.000000"},
                {"ValueMax", "14.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JETX", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "6.000000"},
                {"ValueMax", "14.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET0", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "6.000000"},
                {"ValueMax", "6.600000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "JET1", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "16.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "1.500000"},
              }
            },
          }
        },
      }
    }
  }
}