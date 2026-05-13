NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Blaze Javelin Lorentz Driver",
["MOD_AUTHOR"]       = "Mariti",
["LUA_AUTHOR"]       = "Mariti",
["NMS_VERSION"]      = "6.36",
["MOD_DESCRIPTION"]  = "Weapon settings for Blaze Javelin Lorentz Driver",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "0.500000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "3000.000000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_ChargeTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "0.200000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "0.500000"}},
            },
          }
        }
      }
    }
  }
}