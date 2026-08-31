NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_ShipAdjustements",
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
          ["MBIN_FILE_SOURCE"] = "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinAggroDamage",                              "200"},
                {"EscapeRollTimePlanet",                        "600.800000"},
                {"EscapeRollTime",                              "600.500000"},
                {"EscapeRollPlanet",                            "600.100000"},
                {"EscapeRoll",                                  "0.000001"},
                {"EnergyShieldFadeMinOpacityInCombat",          "0.000000"},
                {"EnergyShieldFreighterFadeMinOpacityInCombat", "0.050000"},
                {"EnergyShieldFadeNonPlayerHitOpacity",         "0.1500000"},
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AltControls",                      "false"},
                {"MaxOverspeedBrake",                "5.000000"},
                {"PostWarpSlowDownTime",             "5.000000"},
                {"AvoidancePower",                   "0.7500000"},
                {"AvoidanceDistancePower",           "10.00000"},
                {"CollisionDeflectForce",            "10.000000"},
                {"CollisionAlignStrength",           "0.500000"},
                {"DirectionBrakeVerticalMultiplier", "2.000000"},
                {"LateralDriftRollAmount",           "0.400000"},
                {"LateralDriftRange",                "200.000000"},
                {"LandingOnGroundTip",               "-2.000000"},
                {"MiniWarpLinesNum",                 "0"},
                {"MiniWarpAlignStrength",            "1.50000"},
                {"MiniWarpSpeed",                    "90000.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "1.25"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "5"},
                {"MinSpeedForce",    "7.75"},
                {"Falloff",          "0.15"},
                {"BoostThrustForce", "25"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.250000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "25"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipMinHeightForce", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "20"},
                {"MinSpeedForce",    "1.25"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.75"},
                {"Falloff",          "0.15"},
                {"BoostThrustForce", "50"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.300000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "20"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "20"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "25"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipMinHeightForce", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "1.25"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "5"},
                {"MinSpeedForce",    "7.75"},
                {"Falloff",          "0.15"},
                {"BoostThrustForce", "5"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.150000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "12.5"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipMinHeightForce", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "1.25"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "5"},
                {"MinSpeedForce",    "7.75"},
                {"Falloff",          "0.15"},
                {"BoostThrustForce", "5"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.150000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "12.5"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavyHover"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipMinHeightForce", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "1.25"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "5"},
                {"MinSpeedForce",    "7.75"},
                {"Falloff",          "0.15"},
                {"BoostThrustForce", "5"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.150000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "12.5"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipMinHeightForce", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "1.25"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "5"},
                {"MinSpeedForce",    "7.75"},
                {"Falloff",          "0.15"},
                {"BoostThrustForce", "100"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.150000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "125"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce",      "10"},
                {"MinSpeedForce",    "7.5"},
                {"Falloff",          "0.21"},
                {"BoostThrustForce", "12.5"},
                {"BoostFalloff",     "0.175"},
                {"BoostingTurnDamp", "0.100000"},
                {"OverspeedBrake",   "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ShipMinHeightForce", "1.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax",      "30.000000"},
                {"ThrustForceMin",      "-5.000000"},
                {"MaxSpeedMax",         "-5.000000"},
                {"MaxSpeedMin",         "5.000000"},
                {"BoostMaxSpeedMax",    "5.000000"},
                {"BoostMaxSpeedMin",    "-5.000000"},
                {"BoostingTurnDampMax", "0.000000"},
                {"BoostingTurnDampMin", "0.000000"},
                {"DirectionBrakeMin",   "-0.250000"},
                {"DirectionBrakeMax",   "0.200000"},
                {"TurnStrengthMax",     "-0.050000"},
                {"TurnStrengthMin",     "0.050000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax",      "60.000000"},
                {"ThrustForceMin",      "20.000000"},
                {"MaxSpeedMax",         "5.000000"},
                {"MaxSpeedMin",         "0.000000"},
                {"BoostMaxSpeedMax",    "5.000000"},
                {"BoostMaxSpeedMin",    "0.000000"},
                {"BoostingTurnDampMax", "0.050000"},
                {"BoostingTurnDampMin", "-0.050000"},
                {"DirectionBrakeMin",   "0.200000"},
                {"DirectionBrakeMax",   "-0.200000"},
                {"TurnStrengthMax",     "0.100000"},
                {"TurnStrengthMin",     "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax",      "100.000000"},
                {"ThrustForceMin",      "50.000000"},
                {"MaxSpeedMax",         "20.000000"},
                {"MaxSpeedMin",         "3.000000"},
                {"BoostMaxSpeedMax",    "10.000000"},
                {"BoostMaxSpeedMin",    "5.000000"},
                {"BoostingTurnDampMax", "0.050000"},
                {"BoostingTurnDampMin", "-0.050000"},
                {"DirectionBrakeMin",   "0.200000"},
                {"DirectionBrakeMax",   "-0.200000"},
                {"TurnStrengthMax",     "0.150000"},
                {"TurnStrengthMin",     "0.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax",      "250.000000"},
                {"ThrustForceMin",      "50.000000"},
                {"MaxSpeedMax",         "30.000000"},
                {"MaxSpeedMin",         "15.000000"},
                {"BoostMaxSpeedMax",    "15.000000"},
                {"BoostMaxSpeedMin",    "5.000000"},
                {"BoostingTurnDampMax", "0.100000"},
                {"BoostingTurnDampMin", "0.000000"},
                {"DirectionBrakeMin",   "0.200000"},
                {"DirectionBrakeMax",   "-0.100000"},
                {"TurnStrengthMax",     "0.250000"},
                {"TurnStrengthMin",     "0.100000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACECRAFT\SHIELDSPHERE.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Name", "MODELS\EFFECTS\SPACECRAFT\SHIELDSPHERE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleX", "0.250000"},
                {"ScaleY", "0.250000"},
                {"ScaleZ", "0.250000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACECRAFT\SHIELDSPHERE\ENTITIES\SHIELDSPHERE.ENTITY.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Components", "TkSketchComponentData"},
              ["REMOVE"] = "SECTION"
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "100"},
                {"FadeTime",            "0.2500000"},
                {"Lifetime",            "0.500000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "200"},
                {"FadeTime",            "0.2500000"},
                {"Lifetime",            "0.500000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "200"},
                {"FadeTime",            "0.2500000"},
                {"Lifetime",            "0.500000"},
                {"Speed",               "1000000.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "60"},
                {"FadeTime",            "0.2500000"},
                {"Lifetime",            "0.500000"},
                {"Speed",               "100000.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "500"},
                {"Length",              "6.000000"},
                {"Alpha",               "0.400000"},
                {"FadeTime",            "0.2500000"},
                {"MinVisibleSpeed",     "0.000000"},
                {"Lifetime",            "0.500000"},
                {"Speed",               "100.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACE2.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "400"},
                {"Radius",              "220.000000"},
                {"Length",              "3.500000"},
                {"Width",               "0.400000"},
                {"Alpha",               "0.500000"},
                {"FadeTime",            "0.2500000"},
                {"MinVisibleSpeed",     "0.000000"},
                {"MaxVisibleSpeed",     "29.000000"},
                {"Lifetime",            "0.500000"},
                {"Speed",               "100.000000"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPEEDLINES\SPACEBIG.SPEEDLINE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Number Of Particles", "250"},
                {"Lifetime",            "0.500000"},
                {"Speed",               "100.000000"},
              }
            },
          }
        },
      }
    }
  }
}