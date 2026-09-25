JetpackRefillPercent = 3000
JetpackTankPercent = 8000
StaminaStrengthPercent = 5000
StaminaRecoveryPercent = 500
PlayerMovementSpeedPercent = 180
PlayerMovementForcePercent = 140
PlayerJetpackSpeedPercent = 1400
PlayerJetpackForcePercent = 550
PlayerJetpackUpSpeedPercent = 200
PlayerJetpackUpForcePercent = 250

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "Player mobility upgrade",
["MOD_AUTHOR"]      = "jw11-modder",
["MOD_DESCRIPTION"] =
[[ A mod to tune player mobility, including jetpack and stamina capacity:

JetpackTankPercent - percentage of jetpack tank capacity bonus
JetpackRefillBonusPercent - percentage of jetpack refill speed bonus
StaminaStrengthPercent - percentage of stamina capacity bonus
StaminaRecoveryPercent - percentage of stamina recovery speed bonus
PlayerMovementSpeedPercent - percentage of player movement speed bonus
PlayerMovementForcePercent - percentage of player movement force bonus
PlayerJetpackSpeedPercent - percentage of player jetpack speed bonus
PlayerJetpackForcePercent - percentage of player jetpack force bonus
]],
["NMS_VERSION"]   = "7.3",
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
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Tank"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(JetpackTankPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Jetpack_Refill"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(JetpackRefillPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Strength"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(StaminaStrengthPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"Suit_Stamina_Recovery"},
              ["SECTION_UP"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Bonus",   "@*"..(StaminaRecoveryPercent / 100)},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["ADD"] = [[
        <Property name="StatBonuses" value="GcStatsBonus" _index="4">
          <Property name="Stat" value="GcStatsTypes">
              <Property name="StatsType" value="Suit_Jetpack_Drain" />
          </Property>
          <Property name="Bonus" value="0" />
          <Property name="Level" value="1" />
        </Property>
              ]],
              ["ADD_OPTION"]  = "ADDendSECTION",
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"ID", "UT_JET"},
              ["PRECEDING_KEY_WORDS"] = {"GcStatsBonus"},
              ["ADD"] = [[
        <Property name="StatBonuses" value="GcStatsBonus" _index="5">
          <Property name="Stat" value="GcStatsTypes">
              <Property name="StatsType" value="Suit_Jetpack_MidairRefill" />
          </Property>
          <Property name="Bonus" value="1" />
          <Property name="Level" value="4" />
        </Property>
              ]],
              ["ADD_OPTION"]  = "ADDendSECTION",
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCCHARACTERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["VALUE_CHANGE_TABLE"] = 
              { 
                {"TimeFallingUntilPanic", "0.00001"}, -- orig "0.8"
                {"CharacterTurnSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
                {"CharacterRunTurnSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
                {"CharacterJetpackTurnSpeed", "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"CharacterJetpackTurnAimSpeed", "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"CharacterTurnAimSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
                {"CharacterSwimmingTurnSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
                {"CharacterSwimmingTurnAimSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
                {"RocketBootsLandedTurnSpeed", "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"RocketBootsTurnSpeed", "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"FeetShiftOnTurnSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
                {"FeetShiftOnTurnMaxSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
              }
            },
          },
        },
        {
          ["MBIN_FILE_SOURCE"] = "GLOBALS\GCPLAYERGLOBALS.GLOBAL.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"GroundWalkForceMultiplier",   "@*"..(PlayerMovementForcePercent / 100)},
                {"GroundWalkBrake",   "@*"..(PlayerMovementForcePercent / 100)},
                {"GroundWalkBrakeWhileMoving",   "@*"..(PlayerMovementForcePercent / 100)},
                {"GroundWalkSpeedSlow",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"GroundWalkSpeed",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"GroundRunSpeed",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"GroundWalkSpeedLowG",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"GroundRunSpeedLowG",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"SurfaceSwimMaxSpeed",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"UnderwaterMaxSpeedTotalJetpacking",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"UnderwaterMaxSpeedTotal",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"UnderwaterSwimMaxSpeed",   "@*"..(PlayerMovementSpeedPercent / 100)},
                {"UnderwaterForce",   "@*"..(PlayerMovementForcePercent / 100)},
                {"SurfaceSwimForce",   "@*"..(PlayerMovementForcePercent / 100)},
                {"UnderwaterMaxJetpackSpeed",   "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"UnderwaterJetpackForce",   "@*"..(PlayerMovementForcePercent / 100)},
                {"UnderwaterMaxJetpackEscapeSpeed",   "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"UnderwaterJetpackEscapeForce",   "@*"..(PlayerJetpackUpForcePercent / 100)},
                {"UnderwaterBrake",   "@*"..(PlayerMovementForcePercent / 100)},
                {"SpacewalkTetheredMaxSpeed",   "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"SpacewalkMaxSpeed",   "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"SpacewalkJetpackForce",   "@*"..(PlayerJetpackForcePercent / 50)},
                {"SpacewalkJetpackUpForce",   "@*"..(PlayerJetpackForcePercent / 25)},
                {"RocketBootsImpulse", "@*"..(PlayerJetpackForcePercent / 100)},
                {"RocketBootsMaxSpeed", "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"RocketBootsBoostForce", "@*"..(PlayerJetpackForcePercent / 100)},
                {"RocketBootsBoostTankDrainSpeed", "-99"},
                {"RocketBootsHeightAdjustDownStrength", "0.02"},
                {"RocketBootsDriftDownwardForce", "0.01"},
                {"RocketBootsDriftEndTime", "1.0"},
                {"RocketBootsDriftTankDrainSpeed", "-99"},
                {"FreeJetpackRange", "99999"},
                {"FreeJetpackRangePrime", "99999"},
                {"FreeJetpackRangeNonTerrain", "99999"},
                {"JetpackDrainHorizontalFactor", "-99"},
                {"JetpackForce", "@*"..(PlayerJetpackForcePercent / 100)},
                {"JetpackBrake", "@*"..(PlayerJetpackForcePercent / 100)},
                {"JetpackMinLevel", "0.001"},
                {"JetpackMaxSpeed", "@*"..(PlayerJetpackSpeedPercent / 100)},
                {"JetpackMaxUpSpeed", "@*"..(PlayerJetpackUpSpeedPercent / 100)},
                {"JetpackUpForce", "@*"..(PlayerJetpackUpForcePercent / 100)},
                {"JetpackIgnitionForce", "@*"..(PlayerJetpackUpForcePercent / 100)},
                {"JetpackIgnitionTime", "@/"..(PlayerJetpackForcePercent / 100)},
                {"JetpackMinIgnitionTime", "@/"..(PlayerJetpackForcePercent / 100)},
                {"JetpackFillRate", "@*"..(JetpackRefillPercent / 100)},
                {"JetpackFillRateMidair", "@*"..(JetpackRefillPercent / 100)},
                {"JetpackUnderwaterDrainRate", "-99"},
                {"JetpackUnderwaterFillRate", "@*"..(JetpackRefillPercent / 100)},
                {"SpaceJetpackForce", "@*"..(PlayerJetpackForcePercent / 100)},
                {"SpaceJetpackUpForce", "@*"..(PlayerJetpackUpForcePercent / 100)},
                {"SpaceJetpackIgnitionForce", "@*"..(PlayerJetpackUpForcePercent / 100)},
                {"SpaceJetpackMaxSpeed", "@*"..(PlayerMovementSpeedPercent / 100)},
                {"SpaceJetpackDrainRate", "-99"},
                {"AbandonedFreighterStaminaRecoveryMod", "@*"..(StaminaRecoveryPercent / 100)},
                {"AbandonedFreighterStaminaRate", "0"},
                {"StaminaRecoveryRate", "@*"..(StaminaRecoveryPercent / 100)},
                {"StaminaRate", "0"},
                {"HardLandMin", "999"},
                {"HardLandMax", "9999"},
                {"MaxFallSpeed", "@*"..(PlayerJetpackUpSpeedPercent / 100)},
                {"EnablePointDownToSmoothMove",   true},
                {"HandSwimEnabled",   true},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"UnderwaterBuoyancyDepthCurve", "TkCurveType"},
              ["VALUE_MATCH_TYPE"]    = "string",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve",   "224"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"MouseFlightCurve", "TkCurveType"},
              ["VALUE_MATCH_TYPE"]    = "string",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve",   "224"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"StickCurve", "TkCurveType"},
              ["VALUE_MATCH_TYPE"]    = "string",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve",   "Linear"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"WeaponBobBlendCurve", "TkCurveType"},
              ["VALUE_MATCH_TYPE"]    = "string",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Curve",   "66"},
              }
            },
          },
        },
      },
    },
  },
}