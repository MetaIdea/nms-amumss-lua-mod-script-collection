FuelConsumptionPercent = 1
LaunchFuelConsumptionPercent = 0
LaunchFuelRegenPercent = 500
BoostSpeedBonusPercent = 60
PulseTopSpeedBonusPercent = 75
ShieldStrengthBonusPercent = 1000
ShipBoostManeuverabilityBonusPercent = 60
ShipManeuverabilityBonusPercent = 60
WarpEffectivenessPercent = 1000

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Spaceship mobility upgrade",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune spaceship mobility and survivabili, including top speed, fuel consumption, boost speed and shields capacity:

FuelConsumptionPercent - percentage of original pulse drive fuel consumpion
LaunchFuelConsumptionPercent - percentage of original launch fuel consumpion
LaunchFuelRegenPercent - percentage of fuel regeneration by landing gear
BoostSpeedBonusPercent - percentage of bonus ship boost speed
PulseTopSpeedBonusPercent - percentage of bonus pulse engine top speed
ShieldStrengthBonusPercent - percentage of bonus ship shields capacity
ShipBoostManeuverabilityBonusPercent - percentage of bonus ship boost maneuverability
ShipManeuverabilityBonusPercent - percentage of bonus ship maneuverability
WarpEffectivenessPercent - percentage of original warp effectiveness, roughly how many jumps can be done per one cell
]],
["NMS_VERSION"]   = "7.2.1",
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PULSEFUEL"}, -- INSTABILITY DRIVE
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpFuelSpending"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   (FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_LAUNCHER"}, -- EFFICIENT THRUSTERS
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ALIEN"}, -- LIVING SHIP LAUNCHER
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO"}, -- SENTINEL LAUNCHER
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_ROBO"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_AutoCharge"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelRegenPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "LAUNCHER_SPEC"}, -- SPEC LAUNCHER ?
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_TakeOffCost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_LAUNCHCHARGE"}, -- LAUNCH AUTO-CHARGER
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_AutoCharge"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelRegenPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "CHARGER_ALIEN"}, -- LIVING SHIP LAUNCH AUTO-CHARGER
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_AutoCharge"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelRegenPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_SHIPSHIELD"}, -- ABLATIVE ARMOR
              ["PRECEDING_KEY_WORDS"] = {"Ship_Armour_Shield_Strength"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   (1 + (ShieldStrengthBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIELD_ALIEN"}, -- LIVING SHIP SHIELD
              ["PRECEDING_KEY_WORDS"] = {"Ship_Armour_Shield_Strength"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (ShieldStrengthBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PULSESPEED"}, -- SUB-LIGHT AMPLIFIER
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   (1 + (PulseTopSpeedBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PULSESPEED"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["ADD"] = [[
        <Property name="StatBonuses" value="GcStatsBonus" _index="1">
          <Property name="Stat" value="GcStatsTypes">
              <Property name="StatsType" value="Ship_Boost" />
          </Property>
          <Property name="Bonus" value="]]..(1 + (BoostSpeedBonusPercent / 100))..[[" />
          <Property name="Level" value="1" />
        </Property>
              ]],
              ["ADD_OPTION"]  = "ADDendSECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_SPEC"}, -- WAVEFORM DRIVE
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpFuelSpending"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_SPEC"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_BoostManeuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (ShipBoostManeuverabilityBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_SPEC"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (ShipManeuverabilityBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ALIEN"}, -- LIVING SHIP ENGINE
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpFuelSpending"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ALIEN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Boost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (BoostSpeedBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ALIEN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (ShipManeuverabilityBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ROBO"}, -- SENTINEL ENGINE
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpFuelSpending"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ROBO"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (ShipManeuverabilityBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ROBO"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_BoostManeuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (ShipBoostManeuverabilityBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOLAR_SAIL"}, -- SOLAR SAIL
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpFuelSpending"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOLAR_SAIL"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Launcher_AutoCharge"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(LaunchFuelRegenPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE"}, -- HYPERDRIVE
              ["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(WarpEffectivenessPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "WARP_ALIEN"}, -- LIVING SHIP WARP DRIVE
              ["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(WarpEffectivenessPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE_ROBO"}, -- SENTINEL HYPERDRIVE
              ["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(WarpEffectivenessPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "HYPERDRIVE_SPEC"}, -- EXPEDITION 3 HYPERDRIVE
              ["PRECEDING_KEY_WORDS"] = {"Ship_Hyperdrive_JumpsPerCell"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(WarpEffectivenessPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP1"}, -- PULSE DRIVE
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(1 + (ShipManeuverabilityBonusPercent / 100))},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP1"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["ADD"] = [[
        <Property name="StatBonuses" value="GcStatsBonus" _index="6">
          <Property name="Stat" value="GcStatsTypes">
              <Property name="StatsType" value="Ship_BoostManeuverability" />
          </Property>
          <Property name="Bonus" value="]]..(1 + (ShipBoostManeuverabilityBonusPercent / 100))..[[" />
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