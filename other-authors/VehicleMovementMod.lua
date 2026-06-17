FuelConsumptionPercent = 2
FuelRegenPercent = 400
TopSpeedPercent = 250
BoostSpeedPercent = 300
SubTopSpeedPercent = 200
SubBoostSpeedPercent = 250
BoostTanksPercent = 3000
ForwardGripPercent = 75
SkidGripPercent = 500
MechTopSpeedPercent = 500
MechBoostSpeedPercent = 500

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Vehicle mobility upgrade",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune vehicle mobility, including top speed, fuel consumption, boost speed and tank capacity:

FuelConsumptionPercent - percentage of original fuel consumpion
FuelRegenPercent - percentage of fuel regeneration by Icarus fuel system
TopSpeedBonusPercent - percentage of original engine top speed
BoostSpeedBonusPercent - percentage of original boost speed
SubTopSpeedBonusPercent - percentage of original Nautilon engine top speed
SubBoostSpeedBonusPercent - percentage of original Nautilon boost speed
BoostTanksBonusPercent - percentage of original boost tank capacity
GripBonusPercent - percentage of original grip strength
MechTopSpeedPercent - percentage of original Minotaur engine top speed
MechBoostSpeedPercent - percentage of original Minotaur boost speed
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineTopSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(TopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_Grip"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ForwardGripPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_SkidGrip"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(SkidGripPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "EXO_RECHARGE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_FuelRegen"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelRegenPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_BOOST"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "VEHICLE_BOOST"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostTanks"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostTanksPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineTopSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(SubTopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_SubBoostSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(SubBoostSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostTanks"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostTanksPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(FuelConsumptionPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineTopSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(MechTopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_Grip"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(ForwardGripPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_ENGINE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_SkidGrip"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(SkidGripPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_BOOST"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostSpeed"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(MechBoostSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_BOOST"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_BoostTanks"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(BoostTanksPercent / 100)},
              }
            },
          },
        },
      },
    },
  },
}