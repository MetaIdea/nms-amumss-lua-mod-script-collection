SHIP_TRAILS = GUIF({true, [[Do you want ship trails to be removed?  Default = Y.  Press ENTER for default value.]]},10)
print("SHIP_TRAILS = "..tostring(SHIP_TRAILS))

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Fly Dangerous",
["MOD_DESCRIPTION"] = "Flight Overhaul",
["MOD_AUTHOR"]      = "PyronoxOmega and Babscoole",
["NMS_VERSION"]     = "6.10",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] = "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                --landing control--
                {"LandingHoverOffset", 2}, --3
                {"LandingMaxSpeed", 60}, --80
                {"LandingMaxAngle", 50}, --45
                {"LandingMargin", 2.4}, --1.4
                {"LandingObstacleMinHeight", 1.4}, --2
                {"LandingTooManyLowPointsFraction", 0.1}, --0.3
                --visuals--
                {"VignetteAmountAcceleration", 0}, --removes vignette
                {"VignetteAmountTurning", 0}, --removes Turning vignette
                {"MiniWarpLinesNum", 0},
                {"MiniWarpFlashIntensity ", 0}, --0.9
                {"MiniWarpFlashDuration ", 0}, --0.9
                {"MiniWarpLinesSpacing", 0},
                {"MiniWarpLinesOffset", 0},
                {"MiniWarpLinesHeight", 0},
                {"PostWarpSlowDownTime", 1.6}, --3
                {"LowAltitudeAnimationHysteresisTime", 1}, --4
                {"LowAltitudeAnimationTime", 3}, --6
                {"AimZoomAuto", "True"},
                --{"EngineJetLightIntensityMultiplier", 0.5}, --0.5
                --{"EngineEffectsThrustContribution", 0.3}, --0.3
                {"ShakeMaxPower", 0.3},--1.3
                {"MaxSpeedUpVelocity",25},--100
                {"AutoLevelWaterAngle", 10},    --  Default: 45
                --{"GroundHeightPostCollisionDamper", 0.1}, --  Default: 0.6
                --{"GroundHeightSmoothTime",    1},   --  Default: 0
                --warp in ranges --
                {"WarpInRange", 5000}, --10000
                {"WarpInRangeFreighter", 3500}, --5000
                {"WarpOutRange", 500},
                {"WarpInRangeNexus", 3500}, --5000
                {"WarpNexusRotation", 1},--15
                {"WarpNexusPitch", 1}, --15
                {"WarpNexusDistance", -6000}, -- -9000
                --Quality of life--
                {"PadTurnSpeed", 0.60}, --landing pad turning speed 1
                {"MaximumDistanceFromShipWhenExiting", 6}, --how far you are when you exit your ship
                --hover control--
                {"HoverTakeoffHeight", 70}, --hovering height after take off
                {"HoverAlignTime", 0.2},
                {"HoverMinSpeed", 0.01}, ---Hovering speed control 1
                {"HoverLandReachedDistance", 3},
                 --controls hovering groound proximity 10
                {"HoverLandManeuvreTimeMin", 0.3},
                {"GroundHeightSoftForce", 10},
                {"GroundHeightSoft", 7},
                --landing control--
                {"LandingOnGroundTip", -15}, -- -20
                {"LandingCheckBuildingRadiusFactor", 0.75}, --landing close to buildings
                {"LandingButtonMinTime", 0.25},
                {"LandingPushNoseUpFactor", -0.1}, --Landing  ship nose up 0.15
                {"LandSlopeMax", 35},-- landing on slopes 22
                --Cheaty Factors--
                {"ShieldRechargeRate", 6},
                {"BoostChargeRate", 6}, --2.5
                {"TurnRudderStrength", 8}, --0.4
                {"MiniWarpFuelTime", 0.5},--0.5
                --pulse controls --
                {"MiniWarpChargeTime", 0.1}, --instant warp lol --2
                {"MiniWarpTime", 0.1},
                {"MiniWarpSpeed", 250000}, --30000
                {"MiniWarpExitSpeed ", "800"}, --1000
                {"MiniWarpExitTime ", "0.225"}, --0.5
                {"MiniWarpMarkerApproachSlowdown", "0.98"}, --0.5
                {"MiniWarpPlanetRadius", "100"}, --500  100 = up tp 94000u
                {"MiniWarpStationRadius", "100"}, --700
                {"MiniWarpStoppingMarginPlanet", 2000}, --5000
                {"MiniWarpMinPlanetDistance", 0},
                {"MiniWarpTrackingMargin", "18"}, --100
                {"MiniWarpStoppingMarginDefault", 500},
                {"MiniWarpHUDArrowAttractAngle", 3}, --10
                {"BoostNoAsteroidRadius ", 2000}, --1000
                -- approaches--
                {"AnomalyStationMaxApproachSpeed", 120}, --60
                {"LandHeightThreshold", 60}, --100
                {"DockingRotateSpeed", 0.85}, --2.5
                {"DriftSpring", 2}, --0
                {"NoBoostFreighterDistance", "0.1"}, --800
                {"NoBoostFreighterAngle", "1"},--10
                {"NoBoostShipDistance", "0.1"}, --2000
                {"PlayerFreighterClearSpaceRadius", 1}, --3000
                {"PulseDriveStationApproachSlowdownRangeMin", 600},
                {"PulseDriveStationApproachSlowdownRange", 3500},
                {"PulseDrivePlanetApproachHeight", 4000}, --aproach height 6000
              }
            },
            {
              ["MATH_OPERATION"] = "-",
              ["VALUE_CHANGE_TABLE"] =
              {
                --take 0ff multipliers--
                {"HaulerTakeOffMod", "0.10"}, --1
                {"FighterTakeOffMod", "0.10"}, --1
                {"RoyalTakeOffMod", "0.10"},--1
                {"ShuttleTakeOffMod", "0.10"},--0.66
                {"ExplorerTakeOffMod", "0.10"} --0.5
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"PitchCorrectHeightCurve", "TkCurveType"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve", "SmootherStep"} -- anim curves EaseOutQuad-->
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 540}, --180
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 3600}, --1200
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 2.5}, --1 Determines how fast ship will turn (1.5)
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMin", 4} --2
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 60}, --20
                {"MaxSpeed", 375}, --125
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 300}, --100
                {"BoostMaxSpeed", 465}, --155
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 2.5}, --1 Determines how fast ship will turn
                {"ReverseBrake", 2}, --1
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 1.8}, --2
                {"TurnBrakeMax", 5} --3
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --20
                {"MaxSpeed", 240}, --125
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --100
                {"BoostMaxSpeed", 3600}, --155
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 2.5}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 6} --4
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --20
                {"MaxSpeed", 240}, --125
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 300}, --100
                {"BoostMaxSpeed", 465}, --155
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 2.5}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 6} --4
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"Control"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ExitLeaveAngle", 10}, --possible angle to leave planet  60
                {"ShipPlanetBrakeMinSpeed", 0.01}, --15
                {"ShipPlanetBrakeMaxSpeed", 999999} --90
              }
            },
            --control light --
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 240}, --80
                {"MaxSpeed", 540}, --180
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 3900}, --1300
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 2.2}, --1.1 Determines how fast ship will turn
                {"ReverseBrake", 2}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 5} --3
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 375}, --125
                {"MinSpeed", 0.01}, --20
                --{"Falloff", 0.05},              --0.5
                {"BoostThrustForce", 60}, --20
                {"BoostMaxSpeed", 450}, --185
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 2.75}, --1.65 Determines how fast ship will turn
                {"ReverseBrake", 2}, --1
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 2.8}, --3
                {"TurnBrakeMax", 6} --4
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 240}, --80
                {"MaxSpeed", 240}, --80
                {"MinSpeed", 0.01}, --50
                --{"Falloff", 0.05},              --0.5
                {"BoostThrustForce", 1600}, --500
                {"BoostMaxSpeed", 3640}, --1300
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 2.65}, --1.5 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 4.5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 6} --4
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlLight", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 240}, --20
                {"MaxSpeed", 240}, --125
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 300}, --100
                {"BoostMaxSpeed", 465}, --155
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 2.65}, --1.5 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 6} --4
              }
            },
            --control heavy --
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 540}, --180
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 3300}, --1100
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 0.8}, --0.6 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 6} --3
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 60}, --20
                {"MaxSpeed", 390}, --130
                {"MinSpeed", 0.01}, --20
                --{"Falloff", 0.05},              --0.5
                {"BoostThrustForce", 60}, --20
                {"BoostMaxSpeed", 555}, --185
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 2.4}, --0.7 Determines how fast ship will turn
                {"ReverseBrake", 2}, --1
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 4} --2
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 240}, --80
                {"MinSpeed", 0.01}, --50
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 4020}, --1100
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 4}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 8} --4
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHeavy", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 240}, --80
                {"MinSpeed", 0.01}, --50
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 150}, --500
                {"BoostMaxSpeed", 3}, --120
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 4}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 8} --4
              }
            },
            --control hover --
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 540}, --180
                {"MinSpeed", 0.01}, --1
                {"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 3300}, --1100
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 10}, --0.6 Determines how fast ship will turn
                  {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 6} --3
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 60}, --20
                {"MaxSpeed", 390}, --130
                {"MinSpeed", 0.01}, --20
                {"Falloff", 0.05},              --0.5
                {"BoostThrustForce", 600}, --400
                {"BoostMaxSpeed", 555}, --185
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 10}, --0.7 Determines how fast ship will turn
                {"ReverseBrake", 2}, --1
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 4} --2
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 190}, --130
                {"MinSpeed", 0.01}, --50
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 4020}, --1100
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 4}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 8} --4
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlHover", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 240}, --80
                {"MinSpeed", 0.01}, --50
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 150}, --500
                {"BoostMaxSpeed", 3}, --120
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 4}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 8} --4
              }
            },
            --control corvette --
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "SpaceEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 540}, --180
                {"MinSpeed", 0.01}, --1
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 3300}, --1100
                {"BoostFalloff", 0.0}, --0.7
                {"TurnStrength", 0.8}, --0.6 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 5}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 6} --3
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "PlanetEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 60}, --20
                {"MaxSpeed", 390}, --130
                {"MinSpeed", 0.01}, --20
                --{"Falloff", 0.05},              --0.5
                {"BoostThrustForce", 60}, --20
                {"BoostMaxSpeed", 555}, --185
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 2.4}, --0.7 Determines how fast ship will turn
                {"ReverseBrake", 2}, --1
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 4} --2
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "CombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 240}, --80
                {"MinSpeed", 0.01}, --50
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 1500}, --500
                {"BoostMaxSpeed", 4020}, --1100
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 4}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 8} --4
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlCorvette", "AtmosCombatEngine"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForce", 120}, --40
                {"MaxSpeed", 240}, --80
                {"MinSpeed", 0.01}, --50
                --{"Falloff", 0.05},              --0.7
                {"BoostThrustForce", 150}, --500
                {"BoostMaxSpeed", 3}, --120
                {"BoostFalloff", 0}, --0.7
                {"TurnStrength", 4}, --1 Determines how fast ship will turn
                {"ReverseBrake", 1}, --0.5
                {"OverspeedBrake", 6}, --3
                {"TurnBrakeMin", 0.8}, --1
                {"TurnBrakeMax", 8} --4
              }
            },
            --Class Bonuses--
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax", 90}, --30
                --{"ThrustForceMin", -10},          --(-5)
                {"MaxSpeedMax", -2.5}, --(-5)
                {"MaxSpeedMin", 15}, --5
                {"BoostMaxSpeedMax", 16} --5
                --{"BoostMaxSpeedMin", -16},          --(-5)
                --{"BoostingTurnDampMax", 0},         --0
                --{"BoostingTurnDampMin", 0},         --0
                --{"DirectionBrakeMin", -0.25},       --(-0.25)
                --{"DirectionBrakeMax", 0.2},         --0.2
                --{"TurnStrengthMax", -0.1},          --(-0.05)
                --{"TurnStrengthMin", -0.3},          --0.05
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax", 120}, --60
                {"ThrustForceMin", 20}, --20
                {"MaxSpeedMax", 15}, --5
                {"MaxSpeedMin", 0}, --0
                {"BoostMaxSpeedMax", 15} --5
                --{"BoostMaxSpeedMin", 0},          --0
                --{"BoostingTurnDampMax", 0},         --0.05
                --{"BoostingTurnDampMin", 0},         --(-0.05)
                --{"DirectionBrakeMin", 0},         --0.2
                --{"DirectionBrakeMax", 0},         --(-0.2)
                --{"TurnStrengthMax", 0},           --0.1
                --{"TurnStrengthMin", 0},           --0
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax", 200}, --100
                {"ThrustForceMin", 100}, --50
                {"MaxSpeedMax", 60}, --20
                {"MaxSpeedMin", 9}, --3
                {"BoostMaxSpeedMax", 30}, --10
                {"BoostMaxSpeedMin", 15} --5
                --{"BoostingTurnDampMax", 0.05},        --0.05
                --{"BoostingTurnDampMin", -0.05},       --(-0.05)
                --{"DirectionBrakeMin", 0.2},         --0.2
                --{"DirectionBrakeMax", -0.2},        --(-0.2)
                --{"TurnStrengthMax", 0.3},         --0.15
                --{"TurnStrengthMin", 0.1},         --0
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ThrustForceMax", 750}, --250
                {"ThrustForceMin", 150}, --50
                {"MaxSpeedMax", 90}, --30
                {"MaxSpeedMin", 45}, --15
                {"BoostMaxSpeedMax", 45}, --15
                {"BoostMaxSpeedMin", 15} --5
                --{"BoostingTurnDampMax", 0.1},       --0.1
                --{"BoostingTurnDampMin", 0},         --0
                --{"DirectionBrakeMin", 0.2},         --0.2
                --{"DirectionBrakeMax", -0.1},        --(-0.1)
                --{"TurnStrengthMax", 0.5},         --0.25
                --{"TurnStrengthMin", 0.3},         --0.1
              }
            }
          }
          --removing speed TRAILS--
        },
        --{
        --  ["MBIN_FILE_SOURCE"] = FileSourrcetr,
        --  ["MXML_CHANGE_TABLE"] = {
        --    {
        --      ["VALUE_CHANGE_TABLE"] = {
        --        {"Map", ""},
        --        {"Shader", ""}
        --      }
        --    }
        --  }
        --},
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES.SPEEDLINE.MBIN",
            "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES2.SPEEDLINE.MBIN",
            "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES3.SPEEDLINE.MBIN",
            "MODELS/EFFECTS/SPEEDLINES/MINIJUMPSPEEDLINES4.SPEEDLINE.MBIN",
            "MODELS/EFFECTS/SPEEDLINES/SPACE.SPEEDLINE.MBIN",
            "MODELS/EFFECTS/SPEEDLINES/SPACE2.SPEEDLINE.MBIN",
            "MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN",
            "MODELS/EFFECTS/SPEEDLINES/SPACEBIG.SPEEDLINE.MBIN"
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Material", ""}
              }
            }
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "MODELS/EFFECTS/SPEEDLINES/SPEEDLINE.SCENE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Transform", "TkTransformData"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"ScaleX", "0"},
                {"ScaleY", "0"},
                {"ScaleZ", "0"}
              }
            }
          }
        }
      }
    }
  }
}

if SHIP_TRAILS then

local ShipTrailsTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"]

    ShipTrailsTable[#ShipTrailsTable +1] =
    {
      ["MBIN_FILE_SOURCE"] =
      {
        "MODELS/EFFECTS/TRAILS/SHIP/WINGMANTRAIL_GREEN.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SHIP/WINGMANTRAIL_RED.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SHIP/EARTHENGINE.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SHIP/WINGMANTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/DEFAULTTRAIL/DEFAULTTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/DEFAULTTRAIL/DEFAULTTRAILRED.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/DEFAULTTRAIL/DEFAULTTRAILPINK.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/DEFAULTTRAIL/DEFAULTTRAILGREEN.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/DEFAULTTRAIL/DEFAULTTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTREDTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTORANGETRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTGREENTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTGOLDTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTDARKTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTCYANTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/TIMELOOPTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/SPLUTTERINGTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/RAINBOWTRAIL.SCENE.MBIN",
        "MODELS/EFFECTS/TRAILS/SPACECRAFT/HOT/HOTTRAIL.SCENE.MBIN"
      },
      ["MXML_CHANGE_TABLE"] =
      {
        {
          ["SPECIAL_KEY_WORDS"] = {"Transform", "TkTransformData"},
          ["REPLACE_TYPE"] = "ALL",
          ["VALUE_CHANGE_TABLE"] =
          {
            {"ScaleX", "0"},
            {"ScaleY", "0"},
            {"ScaleZ", "0"}
          }
        }
      }
    }
end