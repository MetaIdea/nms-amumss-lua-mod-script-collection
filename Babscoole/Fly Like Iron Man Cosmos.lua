--Place MODELS folder from downloaded mod into AMUMSS\ModScript\GlobalMEFTI for the ANIM files to be added

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]  = "Fly Like Iron Man Cosmos",
["MOD_AUTHOR"]    = "DooDooDevan",
["LUA_AUTHOR"]    = "Babscoole",
["NMS_VERSION"]   = "7.01",
["MODIFICATIONS"] =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["EXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"RequireHandsOnShipControls",        "false"},
                {"PassiveLook",                       "false"},
                {"EnablePointDownToSmoothMove",       "true"},
                {"HandSwimEnabled",                   "true"},
                {"UnderwaterMaxSpeedTotalJetpacking", "25.000000"},
                {"SpacewalkTetheredMaxSpeed",         "0.000000"},
                {"SpacewalkMaxSpeed",                 "20.000000"},
                {"SpacewalkJetpackForce",             "20.000000"},
                {"SpacewalkJetpackUpForce",           "10.000000"},
                {"UnderwaterMaxJetpackEscapeSpeed",   "40.000000"},
                {"CreatureRideFade",                  "false"},
                {"MultiplayerShareWanted",            "true"},
                {"ReportAllProjectileDamage",         "false"},
                {"WitnessSenseEnhancementTime",       "2.3693558E-38"},
                {"WitnessSenseEnhancement",           "2.3509887E-38"},
                {"ShowLowAmmoWarning",                "false"},
                {"WeaponZoomEnabled",                 "false"},
                {"WeaponZoomVertRotation",            "2.3509887E-38"},
                {"RocketBootsEnabled",                "false"},
                {"FreeJetpackRange",                  "999.000000"},
                {"FreeJetpackRangePrime",             "999.000000"},
                {"FreeJetpackRangeNonTerrain",        "999.000000"},
                {"JetpackDrainHorizontalFactor",      "-99.000000"},
                {"JetpackMaxSpeed",                   "25.000000"},
                {"JetpackMaxUpSpeed",                 "25.000000"},
                {"JetpackFillRate",                   "999.000000"},
                {"JetpackFillRateMidair",             "999.000000"},
                {"JetpackUnderwaterDrainRate",        "-99.000000"},
                {"JetpackUnderwaterFillRate",         "999.000000"},
                {"SpaceJetpackForce",                 "3.000000"},
                {"SpaceJetpackUpForce",               "99.000000"},
                {"SpaceJetpackMaxSpeed",              "99.000000"},
                {"SpaceJetpackDrainRate",             "-99.000000"},
                {"EnableHeadMovements",               "false"},
                {"MouseCrosshairVisible",             "false"},
                {"UseEnergy",                         "false"},
                {"UseHazardProtection",               "false"},
                {"WoundTimeMinimum",                  "5.87747175E-38"},
                {"WoundDamageLimit",                  "32.250000"},
                {"WoundDamageLimitShip",              "2.3693558E-38"},
                {"WoundDamageDecayTime",              "2.3693558E-38"},
                {"WitnessAIDamageDistance",           "2.36942755E-38"},
                {"WitnessAIDamageAngle",              "2.3693558E-38"},
                {"InteractionScanRange",              "0.000000"},
                {"AutoAim",                           "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"InteractHighlightEffect", "GcScanEffectData"},
                {"HolsterHighlightEffect",  "GcScanEffectData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"WaveActive", "false"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"UnderwaterBuoyancyDepthCurve", "TkCurveType"},
                {"MouseFlightCurve",             "TkCurveType"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve", "224"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"AutoAimCentreOffsetCurve", "TkCurveType"},
                {"AimDisperseCurve",         "TkCurveType"},
                {"StickCurve",               "TkCurveType"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve", "Linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeaponBobBlendCurve", "TkCurveType"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve", "66"},
              }
            },
          }
        },
      }
    }
  }
}