JetpackRefillPercent = 500
JetpackTankPercent = 4000
StaminaStrengthPercent = 5000
StaminaRecoveryPercent = 3000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Player mobility upgrade",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune player mobility, including jetpack and stamina capacity:

JetpackTankPercent - percentage of jetpack tank capacity bonus
JetpackRefillBonusPercent - percentage of jetpack refill speed bonus
StaminaStrengthPercent - percentage of stamina capacity bonus
StaminaRecoveryPercent - percentage of stamina recovery speed bonus
]],
["NMS_VERSION"]   = "7.02",
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(JetpackTankPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Refill"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(JetpackRefillPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Strength"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(StaminaStrengthPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Recovery"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(StaminaRecoveryPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["ADD"] = [[
        <Property name="StatBonuses" value="GcStatsBonus" _index="4">
          <Property name="Stat" value="GcStatsTypes">
              <Property name="StatsType" value="Suit_Jetpack_Drain" />
          </Property>
          <Property name="Bonus" value="0" />
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