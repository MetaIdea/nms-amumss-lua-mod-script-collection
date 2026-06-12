LifeSupportBonusPercent = 500
LifeSupportRegenBonusPercent = 100
HazardProtectionBonusPercent = 500
HazardProtectionBlockDamagePercent = 75





HazardProtectionBlockDamage = 1 - (HazardProtectionBlockDamagePercent / 100)

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Life support and hazard protection upgrades",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune life support and hazard protection suit upgrades (Oxygen Recycler and Shield Lattice):

LifeSupportBonusPercent increases amount of life support battery
LifeSupportRegenBonusPercent increases suit solar panels efficiency
HazardProtectionBonusPercent increases amount of hazard protection battery
HazardProtectionBlockDamagePercent sets hazard damage percent blocked
]],
["NMS_VERSION"]   = "6.40",
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
          <Property name="Bonus" value="]]..HazardProtectionBlockDamage..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="2">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_DamageReduce_Toxic" />
          </Property>
          <Property name="Bonus" value="]]..HazardProtectionBlockDamage..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="3">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_DamageReduce_Cold" />
          </Property>
          <Property name="Bonus" value="]]..HazardProtectionBlockDamage..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="4">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_DamageReduce_Heat" />
          </Property>
          <Property name="Bonus" value="]]..HazardProtectionBlockDamage..[[" />
          <Property name="Level" value="1" />
        </Property>
        <Property name="StatBonuses" value="GcStatsBonus" _index="5">
          <Property name="Stat" value="GcStatsTypes">
            <Property name="StatsType" value="Suit_Stamina_Recovery" />
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
  },
}