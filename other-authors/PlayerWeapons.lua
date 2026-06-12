DamageMultiplier = 2
SpeedMultiplier = 5
FireRateMultiplier = 2
RangeMultiplier = 2


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Player Weapons Mod",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune your weapons:

Damage multiplier increases damage of your weapons
Speed multiplier increases projectile speed
Fire rate multiplier increases weapon fire rate (decreases burst delay)
Range multiplier increases weapon fire range
]],
["NMS_VERSION"]   = "6.40",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\PROJECTILES\PROJECTILETABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
          	{
              ["SPECIAL_KEY_WORDS"] = {"ID", "MELEE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",   "@*"..SpeedMultiplier},
                {"DefaultDamage",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MELEE_KICK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",   "@*"..SpeedMultiplier},
                {"DefaultDamage",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOLTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},
                --{"DefaultDamage",     "@*"..DamageMultiplier},
                --{"PusherForce",       "@*"..DamageMultiplier},  
                --{"PusherImpactForce", "@*"..DamageMultiplier},  
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},

              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SMG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},

              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},
 
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRENADE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},

              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MINE_GREN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},

              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ROBOTGUNFRIENDL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},
                {"DefaultDamage",     "@*"..DamageMultiplier},
                {"PusherForce",       "@*"..DamageMultiplier},  
                {"PusherImpactForce", "@*"..DamageMultiplier},  
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLAYER"}, -- Mining beam
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultDamage",       "@*"..DamageMultiplier},
                {"ImpactPusherWeight",  "@*"..DamageMultiplier},  
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLAYER_RAIL"}, -- Javelin
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultDamage",       "@*"..DamageMultiplier},
                {"ImpactPusherWeight",  "@*"..DamageMultiplier},  
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLAYER_BOLT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultDamage",       "@*"..DamageMultiplier},
                {"ImpactPusherWeight",  "@*"..DamageMultiplier},  
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultDamage",       "@*"..DamageMultiplier},
                {"ImpactPusherWeight",  "@*"..DamageMultiplier},  
              }
            },
          },
        },
      },
    },
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Range"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..RangeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "BOLT"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_BurstCooldown"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "GRENADE"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Grenade_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "TERRAIN_GREN"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Grenade_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "RAILGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_ChargeTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Range"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..RangeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_BurstCooldown"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SMG"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SMG"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Range"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..RangeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SMG"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Rate"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_Range"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..RangeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CANNON"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Projectile_BurstCooldown"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..FireRateMultiplier},
              }
            },
          },
        },
      },
    },
  },
}