NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Jetpack - Enhanced - COSMOS - VERSION 1",
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
                {"JetpackDrainHorizontalFactor",          "0.250000"},
                {"MeleeBoostAirForce",                    "5.000000"},
                {"MeleeToAirBoostInitialImpulse",         "7.000000"},
                {"MaxTimeInMeleeBoost",                   "2.000000"},
                {"JetpackForce",                          "42.000000"},
                {"JetpackBrake",                          "3.500000"},
                {"JetpackMaxSpeed",                       "15.000000"},
                {"JetpackMaxUpSpeed",                     "35.000000"},
                {"JetpackUpForce",                        "32.000000"},
                {"JetpackIgnitionForce",                  "90.000000"},
                {"JetpackIgnitionTime",                   "0.100000"},
                {"JetpackMinIgnitionTime",                "0.050000"},
                {"JetpackFillRate",                       "1.600000"},
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
                {"ValueMin", "3.000000"},
                {"ValueMax", "4.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET2", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "3.000000"},
                {"ValueMax", "4.950000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET3", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "4.500000"},
                {"ValueMax", "6.600000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET4", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "6.000000"},
                {"ValueMax", "7.050000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JETX", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "3.000000"},
                {"ValueMax", "7.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_JET0", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "3.000000"},
                {"ValueMax", "3.300000"},
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
                {"Bonus", "8.250000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET", "StatsType", "Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "0.750000"},
              }
            },
          }
        },
      }
    }
  }
}