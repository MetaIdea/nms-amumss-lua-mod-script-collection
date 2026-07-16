NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_PlayerMovement",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "Changes how the player moves, making the experience a little more grounded",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GroundWalkForceMultiplier",     "13.000000"},
                {"GroundWalkBrake",               "15.500000"},
                {"GroundWalkSpeed",               "3.500000"},
                {"GroundWalkSpeedTeleportHmd",    "4"},
                {"GroundRunSpeed",                "8.500000"},
                {"GroundWalkSpeedLowG",           "1.800000"},
                {"GroundRunSpeedLowG",            "4"},
                {"GroundWalkRecoverySpeedDamper", "1.000000"},
                {"MaxSlopeAngle",                 "85.000000"},
                {"SlopeSlidingSpeed",             "-30.000000"},
                {"SlopeSlideBrake",               "10.000000"},
                {"MeleeDistance",                 "0.000000"},
                {"MeleeDistance3P",               "0.000000"},
                {"MeleeRadius",                   "1.750000"},
                {"MeleeHitTime",                  "0.200000"},
                {"MeleeSpeedBoost",               "0.000000"},
                {"MeleeSpeedDamageBoost",         "1.200000"},
                {"MinSlideTime",                  "0.000000"},
                {"MinSpidermanSlopeAngle",        "70.000000"},
                {"MaxSpidermanSlopeAngle",        "71.000000"},
                {"HelmetBob",                     "0.100000"},
                {"WeaponChangeModeTime",          "0.010000"},
                {"WeaponCannonMinWeaponTimer",    "0.010000"},
                {"WeaponGunTime",                 "0.010000"},
                {"HardLandTime",                  "0.010000"},
                {"HardLandMin",                   "5.000000"},
                {"HardLandMax",                   "28.000000"},
              }
            },
          }
        },
      }
    }
  }
}