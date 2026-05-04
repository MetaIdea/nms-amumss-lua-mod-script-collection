NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Rocket Boots Recalibrated",
["MOD_AUTHOR"]      = "Mariti",
["LUA_AUTHOR"]      = "Mariti",
["NMS_VERSION"]     = "6.34",
["MOD_DESCRIPTION"] = "Buffs the rocket boots",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] = {
                {"RocketBootsImpulse", "15.000000"},
                {"RocketBootsBoostForce", "240.000000"},
                {"RocketBootsDriftForce", "180.000000"},
                {"RocketBootsForceStartTime", "0.000025"},
                {"RocketBootsMinDesiredHeight", "5.000000"},
                {"RocketBootsMaxDesiredHeight", "15.000000"},
                {"RocketBootsHeightAdjustTime", "0.150000"},
                {"RocketBootsHeightAdjustUpStrength", "1.250000"},
                {"RocketBootsHeightAdjustDownStrength", "1.000000"},
                {"RocketBootsBoostTankDrainSpeed", "0.000000"},
                {"RocketBootsDriftTankDrainSpeed", "0.000000"},
                {"RocketBootsZigZagForceDuration", "0.000000"},
                {"RocketBootsMaxSpeed", "500.000000"},
                {"RocketBootsDriftEndTime", "4.000000"},
                {"RocketBootsWindUpBraking", "0.000050"},
                {"RocketBootsDriftBraking", "0.000050"},
                {"RocketBootsDriftDownwardForce", "0.350000"},
              }
            },
          }
        }
      }
    }
  }
}