DamageMultiplier = 2
SpeedMultiplier = 3
LifeMultiplier = 2
CoolingMultiplier = 5


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Ship Weapons Mod",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune your ship weapons:

Damage multiplier increases damage of your weapons
Speed multiplier increases projectile speed
Life multiplier increases projectile lifetime
Cooling multiplier increases weapon time to heat up and decreases time to cool down
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",   "@*"..SpeedMultiplier},
                {"Life",           "@*"..LifeMultiplier},
                --{"DefaultDamage",  "@*"..DamageMultiplier},
                --{"PusherForce",    "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHOTGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",   "@*"..SpeedMultiplier},
                {"Life",           "@*"..LifeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPMINIGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",   "@*"..SpeedMultiplier},
                {"Life",           "@*"..LifeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPPLASMAGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",   "@*"..SpeedMultiplier},
                {"Life",           "@*"..LifeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier},
                {"Life",              "@*"..LifeMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PLAYER_SHIP"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultDamage",      "@*"..DamageMultiplier},
                {"PulseFrequency",     "@*"..LifeMultiplier},  
                {"ImpactPusherWeight", "@*"..DamageMultiplier},  
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "1.0"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPROCKETS"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_CoolTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "0.5"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPGUN1"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_CoolTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@/"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPLAS1"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Lasers_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHOTGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_CoolTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@/"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPMINIGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPMINIGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPMINIGUN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_CoolTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@/"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPPLASMA"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..CoolingMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPPLASMA"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPPLASMA"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Weapons_Guns_CoolTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",         "@/"..CoolingMultiplier},
              }
            },
          },
        },
      },
    },
  },
}