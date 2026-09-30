FuelConsumptionPercent = 2
FuelRegenPercent = 400
TopSpeedPercent = 500
BoostSpeedPercent = 150
VehicleMassPercent = 150
SubTopSpeedPercent = 200
SubBoostSpeedPercent = 250
BoostTanksPercent = 3000
ForwardGripPercent = 125
SkidGripPercent = 350
MechTopSpeedPercent = 450
MechBoostSpeedPercent = 500
MechTurnSpeedPercent = 300
MechJetLiftPercent = 600

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
["NMS_VERSION"]   = "7.04",
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "SUB_RECHARGE"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "0"},
                {"Level",   "3"},
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
                {"Level",   "3"},
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "MECH_FUEL"},
              ["PRECEDING_KEY_WORDS"] = {"Vehicle_EngineFuelUse"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "0"},
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
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCVEHICLEGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MechPlayerGroundTurnSpeed",   "@/"..(MechTurnSpeedPercent / 100)},
                {"MechJetpackTurnSpeed",   "@/"..(MechTurnSpeedPercent / 100)},
                {"MechJetpackMaxSpeed",   "@*"..(MechBoostSpeedPercent / 100)},
                {"MechJetpackMaxUpSpeed",   "@*"..(MechJetLiftPercent / 100)},
                {"MechLandBrake",   "@*"..(MechTopSpeedPercent / 100)},
                {"MechJetpackDrainRate",   "0"},
                {"MechWalkToRunTimeIdle",   "0"},
                {"VehicleBoostFuelRate",   "-99"},
                {"VehicleBoostFuelRateSurvival",   "-99"},
                {"VehicleFuelRate",   "@*"..(FuelConsumptionPercent / 100)},
                {"VehicleFuelRateTruckMultiplier",   "0"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"MechMovementStickSpeedLimit"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"X",   "@*"..(MechTopSpeedPercent / 100)},
                {"Y",   "@*"..(MechTopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "BIKE"},
              ["PRECEDING_KEY_WORDS"] = {"GcVehicleData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TopSpeedForward",   "@*"..(TopSpeedPercent / 100)},
                {"TopSpeedReverse",   "@*"..(TopSpeedPercent / 100)},
                {"WheelMaxAccelForceForward",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxAccelForceReverse",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxDecelForceNonBraking",   "@/"..(TopSpeedPercent / 100)},
                --{"WheelMaxDecelForceBraking",   "@/"..(TopSpeedPercent / 100)},
                {"WheelSpinniness",   "@/"..(TopSpeedPercent / 100)},
                {"WheelDragginess",   "@*"..(TopSpeedPercent / 100)},
                {"WheelFrontFrictionOmega",   "@*"..(ForwardGripPercent / 100)},
                {"WheelFrontFrictionDynamicThreshold",   "@*"..(ForwardGripPercent / 100)},
                {"WheelFrontFrictionStaticThreshold",   "@*"..(ForwardGripPercent / 100)},
                {"WheelSideFrictionOmega",   "@*"..(SkidGripPercent / 100)},
                {"WheelSideFrictionDynamicThreshold",   "@*"..(SkidGripPercent / 100)},
                {"WheelSideFrictionStaticThreshold",   "@*"..(SkidGripPercent / 100)},
                {"VehicleJumpForce",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleGravity",   "@*"..(VehicleMassPercent / 100)},
                {"VehicleBoostMaxSpeed",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostRechargeTime",   "0.000001"},
                {"VehicleJumpAirRotateXAmount",   "1.0"}, --orig 10
                {"VehicleJumpAirRotateZAmount",   "1.0"}, --orig 40
                {"VehicleJumpAirMaxTorque",   "50000.0"}, --orig 1000
                {"TurningWheelForce",   "-12.0"},
                {"TurningWheelFrictionOmega",   "0.8"},
                {"TurningWheelFrictionNonBraking",   "12"},
                {"TurningWheelFrictionBraking",   "12.0"},
                {"VehicleAngularDampingGround",   "@*"..(SkidGripPercent / 100)},
                {"VehicleLinearDampingAerial",   "@/"..(TopSpeedPercent / 100)},
                {"VehicleAngularDampingAerial",   "@/"..(TopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MED_BUGGY"},
              ["PRECEDING_KEY_WORDS"] = {"GcVehicleData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TopSpeedForward",   "@*"..(TopSpeedPercent / 100)},
                {"TopSpeedReverse",   "@*"..(TopSpeedPercent / 100)},
                {"WheelMaxAccelForceForward",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxAccelForceReverse",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxDecelForceNonBraking",   "@/"..(TopSpeedPercent / 100)},
                --{"WheelMaxDecelForceBraking",   "@/"..(TopSpeedPercent / 100)},
                {"WheelSpinniness",   "@/"..(TopSpeedPercent / 100)},
                {"WheelDragginess",   "@*"..(TopSpeedPercent / 100)},
                {"WheelFrontFrictionOmega",   "@*"..(ForwardGripPercent / 100)},
                {"WheelSideFrictionOmega",   "@*"..(SkidGripPercent / 100)},
                {"TurningWheelForce",   "-3.0"}, --orig -1
                {"TurningWheelFrictionOmega",   "0.8"},
                {"TurningWheelFrictionNonBraking",   "6.0"}, --orig 3
                {"TurningWheelFrictionBraking",   "10.0"}, --orig 5
                {"VehicleJumpForce",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleGravity",   "@*"..(VehicleMassPercent / 100)},
                {"VehicleBoostForce",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostMaxSpeed",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostRechargeTime",   "0.000001"},
                {"VehicleJumpAirRotateXAmount",   "1.0"}, --orig 40
                {"VehicleJumpAirRotateZAmount",   "1.0"}, --orig 40
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "TRUCK"},
              ["PRECEDING_KEY_WORDS"] = {"GcVehicleData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TopSpeedForward",   "@*"..(TopSpeedPercent / 100)},
                {"TopSpeedReverse",   "@*"..(TopSpeedPercent / 100)},
                {"WheelMaxAccelForceForward",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxAccelForceReverse",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxDecelForceNonBraking",   "@/"..(TopSpeedPercent / 100)},
                --{"WheelMaxDecelForceBraking",   "@/"..(TopSpeedPercent / 100)},
                {"WheelSpinniness",   "@/"..(TopSpeedPercent / 100)},
                {"WheelDragginess",   "@*"..(TopSpeedPercent / 100)},
                {"WheelFrontFrictionOmega",   "@*"..(ForwardGripPercent / 100)},
                {"WheelFrontFrictionDynamic",   "@*"..(ForwardGripPercent / 100)},
                {"VehicleJumpForce",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleGravity",   "@*"..(VehicleMassPercent / 100)},
                {"VehicleBoostForce",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostMaxSpeed",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostRechargeTime",   "0.000001"},
                {"VehicleJumpAirRotateXAmount",   "1.0"}, --orig 40
                {"VehicleJumpAirRotateZAmount",   "1.0"}, --orig 40
                {"TurningWheelForce",   "-3.0"}, --orig -3
                {"TurningWheelFrictionOmega",   "0.8"},
                {"TurningWheelFrictionNonBraking",   "2.5"}, --orig 0.75
                {"TurningWheelFrictionBraking",   "3.0"}, --orig 1
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WHEELEDBIKE"},
              ["PRECEDING_KEY_WORDS"] = {"GcVehicleData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TopSpeedForward",   "@*"..(TopSpeedPercent / 100)},
                {"TopSpeedReverse",   "@*"..(TopSpeedPercent / 100)},
                {"WheelMaxAccelForceForward",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxAccelForceReverse",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxDecelForceNonBraking",   "@/"..(TopSpeedPercent / 100)},
                --{"WheelMaxDecelForceBraking",   "@/"..(TopSpeedPercent / 100)},
                {"WheelSpinniness",   "@/"..(TopSpeedPercent / 100)},
                {"WheelDragginess",   "@*"..(TopSpeedPercent / 100)},
                {"WheelFrontFrictionOmega",   "@*"..(ForwardGripPercent / 100)},
                {"WheelSideFrictionOmega",   "@*"..(SkidGripPercent / 100)},
                {"WheelSideFrictionDynamicThreshold",   "@*"..(SkidGripPercent / 100)},
                {"WheelSideFrictionStaticThreshold",   "@*"..(SkidGripPercent / 100)},
                {"VehicleGravity",   "@*"..(VehicleMassPercent / 100)},
                {"VehicleJumpForce",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostMaxSpeed",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostRechargeTime",   "0.000001"},
                {"VehicleJumpAirRotateXAmount",   "1.0"}, --orig 10
                {"VehicleJumpAirRotateZAmount",   "1.0"}, --orig 40
                {"TurningWheelForce",   "-6.0"}, --orig -3
                {"TurningWheelFrictionOmega",   "0.8"},
                {"TurningWheelFrictionNonBraking",   "16"}, --orig 8
                {"TurningWheelFrictionBraking",   "10.0"}, --orig 2
                {"VehicleLinearDampingGround",   "@/"..(ForwardGripPercent / 100)},
                {"VehicleAngularDampingGround",   "@/"..(SkidGripPercent / 100)},
                {"VehicleLinearDampingAerial",   "@*"..(TopSpeedPercent / 100)},
                {"VehicleAngularDampingAerial",   "@*"..(TopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "WHEELEDBIKE"},
              ["PRECEDING_KEY_WORDS"] = {"WheelSideAngularFactor"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Z",   "@/"..(SkidGripPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "HOVERCRAFT"},
              ["PRECEDING_KEY_WORDS"] = {"GcVehicleData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TopSpeedForward",   "@*"..(TopSpeedPercent / 100)},
                {"TopSpeedReverse",   "@*"..(TopSpeedPercent / 100)},
                {"WheelMaxAccelForceForward",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxAccelForceReverse",   "@*"..(4 * TopSpeedPercent / 100)},
                {"WheelMaxDecelForceNonBraking",   "@/"..(TopSpeedPercent / 100)},
                --{"WheelMaxDecelForceBraking",   "@/"..(TopSpeedPercent / 100)},
                {"WheelSpinniness",   "@/"..(TopSpeedPercent / 100)},
                {"WheelDragginess",   "@*"..(TopSpeedPercent / 100)},
                {"WheelFrontFrictionOmega",   "@*"..(ForwardGripPercent / 100)},
                {"WheelSideFrictionOmega",   "@*"..(SkidGripPercent / 100)},
                {"WheelSideFrictionDynamicThreshold",   "@*"..(SkidGripPercent / 100)},
                {"WheelSideFrictionStaticThreshold",   "@*"..(SkidGripPercent / 100)},
                {"VehicleJumpForce",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleGravity",   "@*"..(VehicleMassPercent / 100)},
                {"VehicleBoostMaxSpeed",   "@*"..(BoostSpeedPercent / 100)},
                {"VehicleBoostRechargeTime",   "0.000001"},
                {"VehicleJumpAirRotateXAmount",   "1.0"}, --orig 10
                {"VehicleJumpAirRotateZAmount",   "1.0"}, --orig 40
                {"TurningWheelForce",   "-12.0"},
                {"TurningWheelFrictionOmega",   "0.8"},
                {"TurningWheelFrictionNonBraking",   "12"},
                {"TurningWheelFrictionBraking",   "12.0"},
                {"VehicleAngularDampingGround",   "@*"..(SkidGripPercent / 100)},
                {"VehicleLinearDampingAerial",   "@/"..(TopSpeedPercent / 100)},
                {"VehicleAngularDampingAerial",   "@/"..(TopSpeedPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MECH"},
              ["PRECEDING_KEY_WORDS"] = {"GcVehicleData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TopSpeedForward",   "@*"..(MechTopSpeedPercent / 100)},
                {"WheelMaxAccelForceForward",   "@*"..(4 * MechTopSpeedPercent / 100)},
              }
            },
          },
        },
      },
    },
  },
}