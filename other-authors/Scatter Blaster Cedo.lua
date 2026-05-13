NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Scatter Blaster Cedo",
["MOD_AUTHOR"]       = "Mariti",
["LUA_AUTHOR"]       = "Mariti",
["MOD_CONTRIBUTORS"] = "Babscoole",
["NMS_VERSION"]      = "6.36",
["MOD_DESCRIPTION"]  = "Projectile and weapon settings for Scatter Blaster Cedo",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcProjectileData", "Id", "SHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed", "275.000000"},
                {"Life", "1.500000"},
                {"CriticalHitModifier", "3.000000"},
                {"HomingDuration", "0.500000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_BulletsPerShot"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "7.000000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_Dispersion"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "1.000000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_Rate"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "3.250000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_Recoil"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "1750.000000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_BurstCap"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "1.000000"}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_BurstCooldown"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", "0.000001"}},
            },
          }
        }
      }
    }
  }
}