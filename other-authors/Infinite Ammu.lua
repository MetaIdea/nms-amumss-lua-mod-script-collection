MAX = "999999"
MAX_C = "999999.000000"
MIN_L = "0.000000"

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]     = "Infinite Ammu",
["MOD_AUTHOR"]       = "Mariti",
["LUA_AUTHOR"]       = "Mariti",
["NMS_VERSION"]      = "6.45.1",
["MOD_DESCRIPTION"]  = "Infinite ammunition for multitool attachments",
["MODIFICATIONS"]    =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            -- primary, boltcaster, full
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "BOLT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"UsesAmmo", "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT", "StatsType", "Weapon_Projectile_ClipSize"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MAX_C}},
            },
            -- primary, pulse spitter, full
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "SMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"UsesAmmo", "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SMG", "StatsType", "Weapon_Projectile_ClipSize"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MAX_C}},
            },
            -- primary, scatter blaster, full
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "SHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"UsesAmmo", "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN", "StatsType", "Weapon_Projectile_ClipSize"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MAX_C}},
            },
            -- primary, incinerator, full
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "FLAME"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"UsesAmmo", "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "FLAME", "StatsType", "Weapon_Projectile_ClipSize"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MAX_C}},
            },
            -- primary, blaze javelin, full
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "RAILGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {{"ChargeAmount", MAX}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN", "StatsType", "Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MIN_L}},
            },
            -- primary, neutron cannon, base
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "CANNON"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX}
              },
            },
            -- primary, mining laser, full
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {{"ChargeAmount", MAX}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER", "StatsType", "Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MIN_L}},
            },
            -- primary, runic lens, full
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "ATLAS_LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {{"ChargeAmount", MAX}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER", "StatsType", "Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MIN_L}},
            },
            -- primary, terrain editor, partial
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "TERRAINEDITOR"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"ChargeMultiplier", MAX_C},
              }
            },
            -- primary, solar ray, base
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "SUN_LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX}
              },
            },
            -- primary, animus beam, full but doesn't seem to apply drain reduction
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "SOUL_LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {{"ChargeAmount", MAX}},
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER", "StatsType", "Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] = {{"Bonus", MIN_L}},
            },
            -- secondary, plasma launcher, partial
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "GRENADE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"ChargeMultiplier", MAX_C},
              }
            },
            -- secondary, geology cannon, partial
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "TERRAIN_GREN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"ChargeMultiplier", MAX_C},
              }
            },
            -- secondary, paralysis mortar, partial
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "STUN_GREN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
                {"ChargeMultiplier", MAX_C},
              }
            },
            -- secondary, personal shield, base
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "GROUND_SHIELD"},
              ["VALUE_CHANGE_TABLE"] =
              {{"ChargeAmount", MAX}},
            },
            -- secondary, cloaking device, base but doesn't seem to apply higher capacity
            {
              ["SPECIAL_KEY_WORDS"] = {"Table", "GcTechnology", "Id", "STEALTH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount", MAX},
              }
            },
          }
        }
      }
    }
  }
}