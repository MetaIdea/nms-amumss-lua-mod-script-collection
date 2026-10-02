NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Launch Thrusters Reworked-Free Launches",
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
                {"LaunchThrustersMinimumSummonPercentage", "0.000000"},
                {"LaunchThrustersSummonCostMultiplier",    "0.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "0.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO", "StatsType", "Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "0.000000"},
              }
            },
          }
        },
      }
    },
  }
}
