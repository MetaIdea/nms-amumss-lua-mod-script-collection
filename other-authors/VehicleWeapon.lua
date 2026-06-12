DamageMultiplier = 2
SpeedMultiplier = 5
FireRateMultiplier = 2

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Vehicle Weapons Mod",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune your vehicle weapons:

Damage multiplier increases damage of your weapons
Speed multiplier increases projectile speed
Fire rate multiplier increases weapon fire rate
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLEGUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultSpeed",      "@*"..SpeedMultiplier}, 
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"DefaultDamage",       "@*"..DamageMultiplier},
                {"ImpactPusherWeight",  "@*"..DamageMultiplier},  
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ARM"},
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_GUN"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunDamage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_GUN"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunRate"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_GUN"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunDamage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_GUN"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunRate"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_SENT_R_ARM"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunDamage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_SENT_R_ARM"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunRate"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_L_ARM"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunDamage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_L_ARM"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunRate"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..FireRateMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_R_ARM"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunDamage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..DamageMultiplier},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ARMY_R_ARM"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_GunRate"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..FireRateMultiplier},
              }
            },
          },
        },
      },
    },
  },
}