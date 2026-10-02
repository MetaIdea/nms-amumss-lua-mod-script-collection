NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Launch Thrusters Reworked-Comfort",
["MOD_AUTHOR"]      = "razpdr",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "7.01",
["MOD_DESCRIPTION"] = "Cheaper takeoffs with rebalanced launcher refueling, useful upgrades and preserved ship differences",
["MODIFICATIONS"]   =
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
                {"LaunchThrustersMinimumSummonPercentage", "7.500000"},
                {"LaunchThrustersSummonCostMultiplier",    "1.250000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\GAMESTATE\DIFFICULTYCONFIG.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["PRECEDING_KEY_WORDS"] = {"ShipSummoningFuelCostMultipliers"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"High", "1.200000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN1", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.880000"},
                {"ValueMax", "0.930000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN2", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.830000"},
                {"ValueMax", "0.880000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN3", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.780000"},
                {"ValueMax", "0.830000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUN4", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.750000"},
                {"ValueMax", "0.750000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UP_LAUNX", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.720000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN1", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.930000"},
                {"ValueMax", "0.880000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN2", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.880000"},
                {"ValueMax", "0.830000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN3", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.830000"},
                {"ValueMax", "0.780000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UA_LAUN4", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "0.750000"},
                {"ValueMax", "0.750000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "LAUNCHER"},
                {"ID", "LAUNCHER_ALIEN"},
                {"ID", "LAUNCHER_SPEC"},
                {"ID", "LAUNCHER_ROBO"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeMultiplier", "0.750000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "12.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "12.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "6.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_LAUNCHER", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "0.750000"},
              }
            },
          }
        },
      }
    },
  }
}
