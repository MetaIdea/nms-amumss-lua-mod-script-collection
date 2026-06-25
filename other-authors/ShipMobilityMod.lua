FuelConsumptionPercent = 1
LaunchFuelConsumptionPercent = 0
LaunchFuelRegenPercent = 500
BoostSpeedPercent = 150
PulseTopSpeedPercent = 150
ShieldStrengthPercent = 1000
ShipBoostManeuverabilityPercent = 125
ShipManeuverabilityPercent = 125
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
BoostSpeedPercent - percentage of original ship boost speed
PulseTopSpeedPercent - percentage of original pulse engine top speed
ShieldStrengthPercent - percentage of original ship shields capacity
ShipBoostManeuverabilityPercent - percentage of original ship boost maneuverability
ShipManeuverabilityPercent - percentage of original ship maneuverability
WarpEffectivenessPercent - percentage of original warp effectiveness, roughly how many jumps can be done per one cell
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
                {"Bonus",   (ShieldStrengthPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIELD_ALIEN"}, -- LIVING SHIP SHIELD
              ["PRECEDING_KEY_WORDS"] = {"Ship_Armour_Shield_Strength"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShieldStrengthPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPSHIELD_ROBO"}, -- SENTINEL SHIELD
              ["PRECEDING_KEY_WORDS"] = {"Ship_Armour_Shield_Strength"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShieldStrengthPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_PULSESPEED"}, -- SUB-LIGHT AMPLIFIER
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   (PulseTopSpeedPercent / 100)},
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
          <Property name="Bonus" value="]]..(BoostSpeedPercent / 100)..[[" />
          <Property name="Level" value="1" />
        </Property>
              ]],
              ["ADD_OPTION"]  = "ADDendSECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PHOTONIX_CORE"}, -- PHOTONIX CORE
              ["PRECEDING_KEY_WORDS"] = {"Ship_Boost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PHOTONIX_CORE"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_BoostManeuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipBoostManeuverabilityPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "PHOTONIX_CORE"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipManeuverabilityPercent / 100)},
              }
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
              ["PRECEDING_KEY_WORDS"] = {"Ship_Boost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_SPEC"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_BoostManeuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipBoostManeuverabilityPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_SPEC"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipManeuverabilityPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_SPEC"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   (PulseTopSpeedPercent / 100)},
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
                {"Bonus",   "@*"..(BoostSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ALIEN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(PulseTopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ALIEN"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipManeuverabilityPercent / 100)},
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
              ["PRECEDING_KEY_WORDS"] = {"Ship_Boost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ROBO"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_PulseDrive_MiniJumpSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(PulseTopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ROBO"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_Maneuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipManeuverabilityPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SHIPJUMP_ROBO"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_BoostManeuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipBoostManeuverabilityPercent / 100)},
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
              ["PRECEDING_KEY_WORDS"] = {"Ship_Boost"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostSpeedPercent / 100)},
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "SOLAR_SAIL"},
              ["PRECEDING_KEY_WORDS"] = {"Ship_BoostManeuverability"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ShipBoostManeuverabilityPercent / 100)},
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
                {"Bonus",   "@*"..(ShipManeuverabilityPercent / 100)},
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
          <Property name="Bonus" value="]]..(ShipBoostManeuverabilityPercent / 100)..[[" />
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