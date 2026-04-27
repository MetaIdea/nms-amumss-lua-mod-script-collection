NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Nerfed Scanner Modules",
["MOD_AUTHOR"]      = "zchott",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "lowers the credit multiplier on scanner modules by 50%",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCPROCEDURALTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"ID", "UP_SCAN1", "StatsType", "Weapon_Scan_Discovery_Creature"},
                {"ID", "UP_SCAN1", "StatsType", "Weapon_Scan_Discovery_Flora"},
                {"ID", "UP_SCAN1", "StatsType", "Weapon_Scan_Discovery_Mineral"},
                {"ID", "UP_SCAN2", "StatsType", "Weapon_Scan_Discovery_Creature"},
                {"ID", "UP_SCAN2", "StatsType", "Weapon_Scan_Discovery_Flora"},
                {"ID", "UP_SCAN2", "StatsType", "Weapon_Scan_Discovery_Mineral"},
                {"ID", "UP_SCAN3", "StatsType", "Weapon_Scan_Discovery_Creature"},
                {"ID", "UP_SCAN3", "StatsType", "Weapon_Scan_Discovery_Flora"},
                {"ID", "UP_SCAN3", "StatsType", "Weapon_Scan_Discovery_Mineral"},
                {"ID", "UP_SCAN4", "StatsType", "Weapon_Scan_Discovery_Creature"},
                {"ID", "UP_SCAN4", "StatsType", "Weapon_Scan_Discovery_Flora"},
                {"ID", "UP_SCAN4", "StatsType", "Weapon_Scan_Discovery_Mineral"},
                {"ID", "UP_SCANX", "StatsType", "Weapon_Scan_Discovery_Creature"},
                {"ID", "UP_SCANX", "StatsType", "Weapon_Scan_Discovery_Flora"},
                {"ID", "UP_SCANX", "StatsType", "Weapon_Scan_Discovery_Mineral"},
              },
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ValueMin", "@/2"},
                {"ValueMax", "@/2"},
              }
            },
          }
        }
      }
    }
  }
}