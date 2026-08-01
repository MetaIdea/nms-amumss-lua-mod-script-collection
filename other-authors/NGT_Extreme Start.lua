NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "NGT_Extreme Start",
["MOD_AUTHOR"]      = "NightySama",
["LUA_AUTHOR"]      = "NightySama & Babscoole",
["NMS_VERSION"]     = "6.45",
["MOD_DESCRIPTION"] = "Changes the way a new game starts",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER", "StatsType", "Weapon_Laser_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus", "2.5"}
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCDEBUGOPTIONS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ForceInitialShip", "false"},
                {"ForceInitialWeapon", "false"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCBUILDINGGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"StartCrashSiteMinDistance", 1000000},
                {"StartCrashSiteMaxDistance", 1500000},
              }
            }
          }
        },
      }
    },
  }
}