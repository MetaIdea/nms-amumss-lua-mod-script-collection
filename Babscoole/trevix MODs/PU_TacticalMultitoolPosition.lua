NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_TacticalMultitoolPosition",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GunOffsetX",           "-0.150000"},
                {"GunOffsetY",           "-0.100000"},
                {"GunOffsetZ",           "-0.280000"},
                {"GunOffsetAggressiveX", "-0.150000"},
                {"GunOffsetAggressiveY", "-0.100000"},
                {"GunOffsetAggressiveZ", "-0.280000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCGRAVITYGUNGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"PushForceUpComponent",         "0.080000"},
                {"PushPower",                    "55.000000"},
                {"PushPowerInScrapyardDistance", "55.000000"},
                {"PushPowerToxicInScrapyard",    "55.000000"},
                {"PushPowerInScrapyard",         "55.000000"},
                {"PushPowerSentinelEject",       "55.000000"},
                {"PushPowerSentinel",            "55.000000"},
                {"GrabUseDynamicPhysics",        "true"},
                {"ImpactDamageModifierOnTruck",  "0.050000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
	              {"WeaponLowerDelay",            "40.000000"},
	              {"WeaponHolsterDelay",          "120.000000"},
	              {"WeaponLag",                   "0.600000"},
	              {"WeaponBobFactorWalkDeadZone", "1.000000"},
	              {"WeaponBobFactorWalk",         "0.150000"},
	              {"WeaponBobFactorRun",          "0.250000"},
	              {"WeaponBobBlendTime",          "0.150000"},
	              {"WeaponGunTime",               "0.001000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeaponBobBlendCurve", "TkCurveType"},
              ["VALUE_CHANGE_TABLE"] =
              {
	              {"Curve", "Squared"},
              }
            },
          }
        },
      }
    }
  }
}