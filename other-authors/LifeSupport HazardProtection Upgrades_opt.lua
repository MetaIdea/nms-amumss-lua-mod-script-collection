LifeSupportBonusPercent = 500
LifeSupportRegenBonusPercent = 200
HazardProtectionBonusPercent = 500
HazardProtectionBlockDamagePercent = 100
PlayerShieldRechargeDelayPercent = 10
PlayerShieldRechargeRatePercent = 500
PlayerShieldMaxPercent = 800



NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Life support and hazard protection upgrades",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune life support and hazard protection suit upgrades (Oxygen Recycler and Shield Lattice):

LifeSupportBonusPercent - increases amount of life support battery
LifeSupportRegenBonusPercent - increases suit solar panels efficiency
HazardProtectionBonusPercent - increases amount of hazard protection battery
HazardProtectionBlockDamagePercent - sets hazard damage percent blocked
PlayerShieldRechargeDelayPercent - sets delay before player's shield starts recharging
PlayerShieldRechargeRatePercent - increases playes's shield recharge rate
PlayerShieldMaxPercent - increases playes's shield max amount
]],
["NMS_VERSION"]   = "7.2",
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_ENERGY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   LifeSupportBonusPercent / 100},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_ENERGY"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["ADD"] = [[
        <Property name="StatBonuses" value="GcStatsBonus" _index="1">
          <Property name="Stat" value="GcStatsTypes">
              <Property name="StatsType" value="Suit_Energy_Regen" />
          </Property>
          <Property name="Bonus" value="]]..(1 + (LifeSupportRegenBonusPercent / 100))..[[" />
          <Property name="Level" value="1" />
        </Property>
              ]],
              ["ADD_OPTION"]  = "ADDendSECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   HazardProtectionBonusPercent / 100},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PROTECT"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["ADD"] = [[
        <Property name="StatBonuses" value="GcStatsBonus" _index="1">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_DamageReduce_Radiation" />
          </Property>
          <Property name="Bonus" value="]]..(1 - (HazardProtectionBlockDamagePercent / 100))..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="2">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_DamageReduce_Toxic" />
          </Property>
          <Property name="Bonus" value="]]..(1 - (HazardProtectionBlockDamagePercent / 100))..[[" />
          <Property name="Level" value="4" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="3">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_DamageReduce_Cold" />
          </Property>
          <Property name="Bonus" value="]]..(1 - (HazardProtectionBlockDamagePercent / 100))..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="4">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_DamageReduce_Heat" />
          </Property>
          <Property name="Bonus" value="]]..(1 - (HazardProtectionBlockDamagePercent / 100))..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="5">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_Stamina_Recovery" />
          </Property>
          <Property name="Bonus" value="]]..(HazardProtectionBonusPercent / 100)..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="6">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_Protection_RadDrain" />
          </Property>
          <Property name="Bonus" value="]]..(HazardProtectionBonusPercent / 100)..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="7">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_Protection_ToxDrain" />
          </Property>
          <Property name="Bonus" value="]]..(HazardProtectionBonusPercent / 100)..[[" />
          <Property name="Level" value="4" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="8">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_Protection_ColdDrain" />
          </Property>
          <Property name="Bonus" value="]]..(HazardProtectionBonusPercent / 100)..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="9">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_Protection_HeatDrain" />
          </Property>
          <Property name="Bonus" value="]]..(HazardProtectionBonusPercent / 100)..[[" />
          <Property name="Level" value="1" />
        </Property>
              ]],
              ["ADD_OPTION"]  = "ADDendSECTION",
            }, 
          },
        },
      },
    },
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"EnergyDischargeRateLow",   "0"},
                {"EnergyDischargeRateMedium",   "0"},
                {"EnergyDischargeRateHigh",   "0"},
                {"EnergyDischargeRateFloatingInSpace",   "0"},
                {"EnergyDischargeRateDeepWater",   "0"},
                {"SolarRegenFactor",   "@*"..(LifeSupportRegenBonusPercent / 100)},
                {"NormalModeHazardDamageRateMultiplier",   "@*"..(1 - (HazardProtectionBlockDamagePercent / 100))},
                {"HardModeHazardDamageRateMultiplier",   "@*"..(1 - (HazardProtectionBlockDamagePercent / 100))},
                {"ShieldRechargeMinTimeSinceDamage",   "@*"..(PlayerShieldRechargeDelayPercent / 100)},
                {"ShieldRechargeRate",   "@*"..(PlayerShieldRechargeRatePercent / 100)},
                {"ShieldRestoreDelay",   "@*"..(PlayerShieldRechargeDelayPercent / 100)},
                {"ShieldRestoreSpeed",   "@*"..(PlayerShieldRechargeRatePercent / 100)},
                {"ShieldMaximum",   "@*"..(PlayerShieldMaxPercent / 100)},
              }
            },
          },
        },
      },
    },
  },
}