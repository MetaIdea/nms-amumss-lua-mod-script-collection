DamageMultiplierPercent = 200
SpeedMultiplierPercent = 250
MiningRateMultiplierPercent = 3000
HeatTimeMultiplierPercent = 1200


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Mining Laser Upgrade",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune your mining beam (including Sentinel and Atlas versions):

Damage multiplier increases damage of your mining beam
Speed multiplier increases mining speed
Mining rate multiplier increases mining yield
Heat time multiplier increases time before mining beam overheats
]],
["NMS_VERSION"]   = "7.05",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount",  "9000"},
                {"ChargeMultiplier",  "90"},
                {"BuildFullyCharged",  "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(SpeedMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(DamageMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_ReloadTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "-1"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(MiningRateMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount",  "9000"},
                {"ChargeMultiplier",  "90"},
                {"BuildFullyCharged",  "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(SpeedMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(DamageMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_ReloadTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "99999"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOUL_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(MiningRateMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount",  "9000"},
                {"ChargeMultiplier",  "90"},
                {"BuildFullyCharged",  "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(SpeedMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(DamageMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_ReloadTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "99999"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SENT_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(MiningRateMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ChargeAmount",  "9000"},
                {"ChargeMultiplier",  "90"},
                {"BuildFullyCharged",  "true"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"FUEL1"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IGNORE",  "IGNORE"},
              },
              ["REMOVE"] = "SECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Mining_Speed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(SpeedMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_HeatTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Damage"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(DamageMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_ReloadTime"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@/"..(HeatTimeMultiplierPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_Drain"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "99999"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "ATLAS_LASER"},
              ["PRECEDING_KEY_WORDS"] = {"Weapon_Laser_MiningBonus"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",  "@*"..(MiningRateMultiplierPercent / 100)},
              }
            },
          },
        },
      },
    },
  },
}