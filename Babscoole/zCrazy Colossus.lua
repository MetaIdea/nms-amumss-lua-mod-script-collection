NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "zCrazy Colossus",
["MOD_AUTHOR"]    = "JMZ",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "6.24",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCVEHICLEGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"]	=	{"Name", "TRUCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"TopSpeedForward",              "30.000000"},
                {"TopSpeedReverse",              "15.000000"},
                {"WheelMaxAccelForceForward",    "100.000000"},
                {"WheelMaxAccelForceReverse",    "50.000000"},
                {"WheelMaxDecelForceNonBraking", "2.000000"},
                {"WheelMaxDecelForceBraking",    "5.000000"},
                {"WheelSpinniness",              "0.100000"},
                {"WheelDragginess",              "0.250000"},
                {"VehicleBoostMaxSpeed",         "50.000000"},
                {"VehicleBoostExtraMaxSpeedAir", "60.000000"},
                {"VehicleBoostSpeedFalloff",     "1.000000"},
                {"VehicleBoostTime",             "5.000000"},
                {"VehicleBoostRechargeTime",     "1.000000"},
                {"SideSkidParticleMinRate",      "10.000000"},
                {"SideSkidParticleMaxRate",      "20.000000"},
                {"SideSkidParticleMinThresh",    "20.000000"},
                {"SideSkidParticleMaxThresh",    "30.000000"},
                {"WheelSpinParticleMinRate",     "10.000000"},
                {"WheelSpinParticleMaxRate",     "20.000000"},
                {"WheelSpinParticleMinThresh",   "10.000000"},
                {"WheelSpinParticleMaxThresh",   "20.000000"},
                {"VehicleLinearDampingGround",   "0.500000"},
                {"VehicleAngularDampingGround",  "10.000000"},
                {"VehicleLinearDampingWater",    "0.500000"},
                {"VehicleAngularDampingWater",   "10.000000"},
                {"DriveOnTopOfWater",            "true"},
                {"HeadlightIntensity",           "3.000000"},
              }
            },
          }
        },
      }
    },
  }
}
