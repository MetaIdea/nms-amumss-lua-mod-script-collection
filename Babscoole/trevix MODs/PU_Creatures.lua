NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"]    = "PU_Creatures",
["MOD_AUTHOR"]      = "Trevix",
["LUA_AUTHOR"]      = "Babscoole",
["NMS_VERSION"]     = "6.30",
["MOD_DESCRIPTION"] = "changes some creature animation speeds and other values, makes agressive creatures more common",
["MODIFICATIONS"]   =
  {
    {
      ["MBIN_CHANGE_TABLE"] =
      {
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\FROZEN\FROZENCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\GASGIANTS\GASCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\IRRADIATED\IRRADREMIX\IRRADREMIXCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\JUNGLE\JUNGLECOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHBUBBLESCOLOURPALETTE.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMACOLOURPALETTE.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHROOMBCOLOURPALETTE.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\LUSH\LUSHRUINSCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\RADIOACTIVE\RADIOCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SUBZERO\SUBZEROCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SUBZERO\SUBZREMIX\SUBZREMIXCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\SWAMP\SWAMPCOLOURPALETTES.MBIN",
            "METADATA\SIMULATION\SOLARSYSTEM\BIOMES\TOXIC\TOXICCOLOURPALETTES.MBIN",
          },
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Fur", "GcPaletteData"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumColours", "Inactive"}
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Scale", "GcPaletteData"},
                {"Underbelly", "GcPaletteData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumColours", "All"}
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\SOLARSYSTEM\COLOURS\BASECOLOURPALETTES.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Fur",        "GcPaletteData"},
                {"Scale",      "GcPaletteData"},
                {"Underbelly", "GcPaletteData"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
                {"NumColours", "All"}
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "GCCREATUREGLOBALS.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["VALUE_CHANGE_TABLE"] =
              {
                {"IsHurtingCreaturesACrime",        "true"},
                {"TurnInPlaceIdleTime",             "0.00000"},
                {"TurnInPlaceMaxAngle",             "110.000000"},
                {"TurnInPlaceMinTime",              "4.000000"},
                {"TurnInPlaceMaxSpeed",             "1.250000"},
                {"TurnInPlaceMaxSpeedIndoor",       "0.20000"},
                {"CreatureMoveIdle",                "0.000000"},
                {"PatrolMinDist",                   "150.000000"},
                {"PatrolMaxDist",                   "300.000000"},
                {"PatrolSwitchMinTime",             "20.00000"},
                {"ExtraFollowStrength",             "0.1500000"},
                {"ExtraFollowFreq1",                "0.1500000"},
                {"ExtraFollowFreq2",                "1.500000"},
                {"CreatureMinRunTime",              "25.000000"},
                {"CreatureHearingRange",            "40.000000"},
                {"CreatureSightRange",              "20.000000"},
                {"CreatureTurnMin",                 "0.400000"},
                {"CreatureTurnMax",                 "0.600000"},
                {"CreatureBrakeForce",              "0.700000"},
                {"CreatureLookPlayerForceLookTime", "5.500000"},
                {"FishBobFrequency",                "0.1500000"},
                {"FishBobAmplitude",                "0.100000"},
                {"PercentagePlayerPredators",       "1.2500000"},
                {"PlayerPredatorHealthModifier",    "1.300000"},
                {"PredatorApproachTime",            "2.000000"},
                {"PredatorNoticePauseTime",         "3.500000"},
                {"PredatorStealthDist",             "50.000000"},
                {"PredatorChargeDist",              "1.000000"},
                {"PredatorChargeDistScale",         "0.300000"},
                {"BadTurnPercent",                  "0.0"},
                {"DefaultWalkMoveSpeed",            "0.250000"},
                {"DefaultTrotMoveSpeed",            "1.000000"},
                {"DefaultRunMoveSpeed",             "4.8250000"},
                {"PredatorWalkMoveSpeed",           "0.50000"},
                {"PredatorTrotMoveSpeed",           "2.000000"},
                {"PredatorRunMoveSpeed",            "4.800000"},
                {"AttackPlayerDistance",            "1.250000"},
              },
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"FlyingSnakeData", "GcFlyingSnakeData"},
              ["VALUE_CHANGE_TABLE"] =
              {
	              {"CircleSpeed",           "4.000000"},
	              {"ApproachBaitSpeed",     "30.000000"},
	              {"DefaultCircleDistance", "40.000000"},
	              {"BarrelRollSpawnDelay",  "1.500000"},
	              {"BarrelRollCount",       "1.000000"},
	              {"BarrelRollSpeed",       "4.000000"},
	              {"RiseDelay",             "16.000000"},
	              {"RiseHeight",            "0.000000"},
	              {"RiseTime",              "6.000000"},
	              {"AirThickness",          "8.000000"},
	              {"WindForce",             "15.000000"},
	              {"TailStiffness",         "0.000000"},
	              {"TwistLimit",            "5.000000"},
	              {"AltitudeSinPeriod",     "6.000000"},
	              {"AltitudeSinAmp",        "6.000000"},
	              {"AscendDescendSpeed",    "4.000000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "MODELS\PLANETS\CREATURES\ACCESSORIES\PETACCESSORIES.SCENE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] =
              {
                {"Name", "_GRP_1"},
                {"Name", "SIGNALACTIVE2Loc"},
              },
              ["VALUE_CHANGE_TABLE"] =
              {
	              {"ScaleX", "0.000000"},
	              {"ScaleY", "0.000000"},
	              {"ScaleZ", "0.000000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREDATATABLE.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.450000"},
                {"MaxScale",        "1.680000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISH"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISH"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Data" value="GcCreatureSwarmData" _index="1">
          <Property name="GcCreatureSwarmData">
            <Property name="MinCount" value="3" />
            <Property name="MaxCount" value="7" />
            <Property name="SwarmMovementSpeed" value="1.000000" />
            <Property name="SwarmMovementRadius" value="40.000000" />
            <Property name="SwarmMovementType" value="Random" />
            <Property name="AttractedToBait" value="false" />
            <Property name="Params">
              <Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
                <Property name="ValidDescriptors" />
                <Property name="MaxSpeed" value="6.000000" />
                <Property name="SwimFastSpeedMul" value="1.100000" />
                <Property name="SwimAnimSpeedMin" value="0.200000" />
                <Property name="SwimAnimSpeedMax" value="1.300000" />
                <Property name="SwimMaxAcceleration" value="0.300000" />
                <Property name="SwimTurn" value="2.500000" />
                <Property name="ApplyScaleToSpeed" value="false" />
                <Property name="SteeringSpringSmoothTime" value="0.300000" />
                <Property name="ApplyScaleToSteeringSmoothTime" value="false" />
                <Property name="Coherence" value="0.500000" />
                <Property name="Alignment" value="0.100000" />
                <Property name="SeparateStrength" value="0.500000" />
                <Property name="Spacing" value="2.000000" />
                <Property name="Follow" value="1.000000" />
                <Property name="AlignTime" value="0.500000" />
                <Property name="BankingTime" value="0.200000" />
                <Property name="MaxBankingAmount" value="0.000000" />
                <Property name="TurnRequiredForMaxBanking" value="0.300000" />
                <Property name="MinPitchAmount" value="0.000000" />
                <Property name="MaxPitchAmount" value="0.400000" />
                <Property name="SpeedForMinPitch" value="0.000000" />
                <Property name="SpeedForMaxPitch" value="0.000000" />
                <Property name="UpwardMovementForMaxPitch" value="0.200000" />
                <Property name="FaceMoveDirStrength" value="0.700000" />
                <Property name="FaceMoveDirYawOnly" value="false" />
                <Property name="CanLand" value="false" />
                <Property name="LandAdjustDist" value="1.000000" />
                <Property name="LandClampBegin" value="0.750000" />
                <Property name="LandSlowDown" value="0.300000" />
                <Property name="TakeOffTime" value="1.000000" />
                <Property name="TakeOffStartSpeed" value="0.300000" />
                <Property name="TakeOffUpwardBoost" value="0.500000" />
                <Property name="FlyTimeMin" value="5.000000" />
                <Property name="FlyTimeMax" value="10.000000" />
                <Property name="LandTimeMin" value="20.000000" />
                <Property name="LandTimeMax" value="25.000000" />
                <Property name="LandIdleTimeMin" value="1.000000" />
                <Property name="LandIdleTimeMax" value="5.000000" />
                <Property name="LandWalkTimeMin" value="2.000000" />
                <Property name="LandWalkTimeMax" value="4.000000" />
                <Property name="CanWalk" value="false" />
                <Property name="WalkSpeed" value="5.000000" />
                <Property name="WalkTurnTime" value="1.000000" />
                <Property name="UseAnimThrustCycle" value="false" />
                <Property name="AnimThrustCycleAnim" value="SWIM" />
                <Property name="AnimThrustCycleStart" value="0.200000" />
                <Property name="AnimThrustCyclePeak" value="0.330000" />
                <Property name="AnimThrustCycleEnd" value="0.700000" />
                <Property name="AnimThrustCycleMax" value="1.000000" />
                <Property name="AnimThrustCycleMin" value="0.300000" />
              </Property>
            </Property>
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.075000"},
                {"MaxScale", "0.560000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SwimFastSpeedMul", "1.100000"},
                {"SwimAnimSpeedMin", "0.200000"},
                {"SwimAnimSpeedMax", "1.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHFLOCK"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
        <Property name="Data" value="GcCreatureMovementData" _index="1">
          <Property name="GcCreatureMovementData">
            <Property name="Anims">
              <Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
                <Property name="Anim" value="WALK" />
                <Property name="AnimLeft" value="" />
                <Property name="AnimRight" value="" />
                <Property name="AnimSpeed" value="0.800000" />
                <Property name="MinSpeedScale" value="0.800000" />
                <Property name="MaxSpeedScale" value="1.000000" />
                <Property name="MaxPredatorSpeedScale" value="1.000000" />
                <Property name="MinPetSpeedScale" value="1.000000" />
                <Property name="MaxPetSpeedScale" value="1.000000" />
              </Property>
              <Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
                <Property name="Anim" value="RUN" />
                <Property name="AnimLeft" value="" />
                <Property name="AnimRight" value="" />
                <Property name="AnimSpeed" value="0.800000" />
                <Property name="MinSpeedScale" value="0.800000" />
                <Property name="MaxSpeedScale" value="1.000000" />
                <Property name="MaxPredatorSpeedScale" value="1.000000" />
                <Property name="MinPetSpeedScale" value="1.000000" />
                <Property name="MaxPetSpeedScale" value="1.000000" />
              </Property>
            </Property>
            <Property name="MoveRange" value="140.000000" />
            <Property name="MoveSpeedScale" value="1.000000" />
            <Property name="TurnRadiusScale" value="2.000000" />
            <Property name="HeightMin" value="0.000000" />
            <Property name="HeightMax" value="256.000000" />
            <Property name="LimitHeightRange" value="false" />
            <Property name="HeightRangeMin" value="0.000000" />
            <Property name="HeightRangeMax" value="0.000000" />
            <Property name="HeightTime" value="5.000000" />
            <Property name="Herd" value="false" />
            <Property name="IgnoreRotationInPounce" value="false" />
          </Property>
        </Property>
        <Property name="Data" value="GcCreatureFlockMovementData" _index="1">
          <Property name="GcCreatureFlockMovementData">
            <Property name="MinFlockMembers" value="7" />
            <Property name="MaxFlockMembers" value="12" />
            <Property name="FlockFollow" value="1.000000" />
            <Property name="FlockHysteresis" value="0.500000" />
            <Property name="FlockCohere" value="3.000000" />
            <Property name="FlockSeperate" value="7.000000" />
            <Property name="FlockSeperateMinDist" value="2.000000" />
            <Property name="FlockSeperateMaxDist" value="6.000000" />
            <Property name="FlockAlign" value="0.100000" />
            <Property name="FlockAvoidTerrain" value="15.000000" />
            <Property name="FlockAvoidTerrainMinDist" value="3.000000" />
            <Property name="FlockAvoidTerrainMaxDist" value="10.000000" />
            <Property name="FlockAvoidPredators" value="10.000000" />
            <Property name="FlockAvoidPredatorsMinDist" value="20.000000" />
            <Property name="FlockAvoidPredatorsMaxDist" value="40.000000" />
            <Property name="FlockAvoidPredatorsSpeedBoost" value="0.300000" />
            <Property name="MoveInFacingStrength" value="0.900000" />
            <Property name="FlockMoveSpeed" value="0.700000" />
            <Property name="FlockMoveDirectionTime" value="0.100000" />
            <Property name="FlockTurnAngle" value="7.000000" />
            <Property name="MaxBank" value="30.000000" />
            <Property name="BankTime" value="0.100000" />
            <Property name="MinFlapSpeed" value="2.500000" />
            <Property name="MaxFlapSpeed" value="6.000000" />
          </Property>
        </Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMCOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.900000"},
                {"MaxScale", "1.960000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMCOW"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="4" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="70.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.200000" />
								<Property name="Alignment" value="0.400000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="15.000000" />
								<Property name="Follow" value="0.700000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.200000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMRODENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.600000"},
                {"MaxScale", "1.680000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SWIMRODENT"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims" />
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="6" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="50.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.500000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.200000" />
								<Property name="Alignment" value="0.400000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="15.000000" />
								<Property name="Follow" value="1.700000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.200000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYFISH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYFISH"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="8" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="5.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="30.000000" />
								<Property name="Follow" value="2.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.900000" />
								<Property name="SpeedForMinPitch" value="0.050000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CRAB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.562500"},
                {"MaxScale",        "2.800000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEASNAKE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "2.800000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEASNAKE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEASNAKE"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="7" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.700000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.500000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="0.700000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.400000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.900000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHARK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "1.500000"},
                {"MaxScale", "4.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SHARK"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="150.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="3" />
						<Property name="SwarmMovementSpeed" value="1.500000" />
						<Property name="SwarmMovementRadius" value="70.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="8.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.700000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.120000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="12.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.400000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.400000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BIRD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.600000"},
                {"MaxScale", "2.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BIRD"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="150.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="4" />
						<Property name="SwarmMovementSpeed" value="15.000000" />
						<Property name="SwarmMovementRadius" value="120.000000" />
						<Property name="SwarmMovementType" value="Circle" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="10.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.100000" />
								<Property name="Alignment" value="0.120000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="10.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.300000" />
								<Property name="TurnRequiredForMaxBanking" value="0.200000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.600000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.600000" />
								<Property name="FaceMoveDirStrength" value="0.800000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGSNAKE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "4.625000"},
                {"MaxScale", "10.600000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGSNAKE"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="3" />
						<Property name="SwarmMovementSpeed" value="10.000000" />
						<Property name="SwarmMovementRadius" value="100.000000" />
						<Property name="SwarmMovementType" value="Circle" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="0.700000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="2.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.100000" />
								<Property name="Alignment" value="0.050000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="40.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.400000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGLIZARD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "6.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGLIZARD"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="3" />
						<Property name="SwarmMovementSpeed" value="6.000000" />
						<Property name="SwarmMovementRadius" value="200.000000" />
						<Property name="SwarmMovementType" value="Circle" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="6.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="1.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.100000" />
								<Property name="Alignment" value="0.050000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="40.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.500000" />
								<Property name="BankingTime" value="0.500000" />
								<Property name="MaxBankingAmount" value="0.500000" />
								<Property name="TurnRequiredForMaxBanking" value="0.200000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.800000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.187500"},
                {"MaxScale", "0.560000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLY"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="60.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="6" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_INSECT_ALIEN" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="4.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.500000" />
								<Property name="Alignment" value="0.200000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="20.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="0.200000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.100000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.100000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="1">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="5.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.200000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="20.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.200000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.500000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLBIRD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.375000"},
                {"MaxScale", "1.260000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLBIRD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SwimFastSpeedMul", "1.100000"},
                {"SwimAnimSpeedMin", "0.200000"},
                {"SwimAnimSpeedMax", "1.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SMALLBIRD"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.500000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureFlockMovementData" _index="1">
					<Property name="GcCreatureFlockMovementData">
						<Property name="MinFlockMembers" value="9" />
						<Property name="MaxFlockMembers" value="15" />
						<Property name="FlockFollow" value="2.000000" />
						<Property name="FlockHysteresis" value="0.500000" />
						<Property name="FlockCohere" value="4.000000" />
						<Property name="FlockSeperate" value="7.000000" />
						<Property name="FlockSeperateMinDist" value="1.300000" />
						<Property name="FlockSeperateMaxDist" value="12.000000" />
						<Property name="FlockAlign" value="0.200000" />
						<Property name="FlockAvoidTerrain" value="15.000000" />
						<Property name="FlockAvoidTerrainMinDist" value="8.000000" />
						<Property name="FlockAvoidTerrainMaxDist" value="15.000000" />
						<Property name="FlockAvoidPredators" value="0.000000" />
						<Property name="FlockAvoidPredatorsMinDist" value="10.000000" />
						<Property name="FlockAvoidPredatorsMaxDist" value="20.000000" />
						<Property name="FlockAvoidPredatorsSpeedBoost" value="0.100000" />
						<Property name="MoveInFacingStrength" value="0.900000" />
						<Property name="FlockMoveSpeed" value="0.700000" />
						<Property name="FlockMoveDirectionTime" value="0.100000" />
						<Property name="FlockTurnAngle" value="8.000000" />
						<Property name="MaxBank" value="180.000000" />
						<Property name="BankTime" value="0.100000" />
						<Property name="MinFlapSpeed" value="3.000000" />
						<Property name="MaxFlapSpeed" value="6.000000" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.187500"},
                {"MaxScale", "0.560000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SwimFastSpeedMul", "1.100000"},
                {"SwimAnimSpeedMin", "0.200000"},
                {"SwimAnimSpeedMax", "1.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUTTERFLOCK"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.500000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureFlockMovementData" _index="1">
					<Property name="GcCreatureFlockMovementData">
						<Property name="MinFlockMembers" value="7" />
						<Property name="MaxFlockMembers" value="12" />
						<Property name="FlockFollow" value="2.000000" />
						<Property name="FlockHysteresis" value="0.000000" />
						<Property name="FlockCohere" value="4.000000" />
						<Property name="FlockSeperate" value="9.000000" />
						<Property name="FlockSeperateMinDist" value="0.300000" />
						<Property name="FlockSeperateMaxDist" value="6.000000" />
						<Property name="FlockAlign" value="0.200000" />
						<Property name="FlockAvoidTerrain" value="10.000000" />
						<Property name="FlockAvoidTerrainMinDist" value="1.000000" />
						<Property name="FlockAvoidTerrainMaxDist" value="4.000000" />
						<Property name="FlockAvoidPredators" value="0.000000" />
						<Property name="FlockAvoidPredatorsMinDist" value="10.000000" />
						<Property name="FlockAvoidPredatorsMaxDist" value="20.000000" />
						<Property name="FlockAvoidPredatorsSpeedBoost" value="0.100000" />
						<Property name="MoveInFacingStrength" value="0.500000" />
						<Property name="FlockMoveSpeed" value="0.100000" />
						<Property name="FlockMoveDirectionTime" value="0.200000" />
						<Property name="FlockTurnAngle" value="5.000000" />
						<Property name="MaxBank" value="90.000000" />
						<Property name="BankTime" value="0.100000" />
						<Property name="MinFlapSpeed" value="1.300000" />
						<Property name="MaxFlapSpeed" value="2.000000" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEBUTTERFLY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "1.500000"},
                {"MaxScale", "4.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LARGEBUTTERFLY"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="60.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="6" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="5.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.700000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="3.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="8.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="0.500000" />
								<Property name="MaxBankingAmount" value="0.500000" />
								<Property name="TurnRequiredForMaxBanking" value="0.500000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.100000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="true" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.900000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.500000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.700000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGBEETLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.300000"},
                {"MaxScale", "9.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLYINGBEETLE"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="60.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="4" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="0.100000" />
								<Property name="Spacing" value="4.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.500000" />
								<Property name="BankingTime" value="0.500000" />
								<Property name="MaxBankingAmount" value="0.500000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.000000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.100000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="true" />
								<Property name="LandAdjustDist" value="0.700000" />
								<Property name="LandClampBegin" value="0.990000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.200000" />
								<Property name="TakeOffUpwardBoost" value="0.700000" />
								<Property name="FlyTimeMin" value="0.000000" />
								<Property name="FlyTimeMax" value="8.000000" />
								<Property name="LandTimeMin" value="10.000000" />
								<Property name="LandTimeMax" value="15.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="3.000000" />
								<Property name="LandWalkTimeMin" value="1.500000" />
								<Property name="LandWalkTimeMax" value="2.500000" />
								<Property name="CanWalk" value="true" />
								<Property name="WalkSpeed" value="0.300000" />
								<Property name="WalkTurnTime" value="0.300000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ANTELOPE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "4.200000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ANTELOPE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "4.200000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBOTANTELOPE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRICERATOPS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "16.799999"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TRICERATOPS"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RODENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "1.050000"},
                {"MaxScale",        "3.500000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "RODENT"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MOLE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "4.200000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MOLE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "COW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "4.200000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "COW"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "5.600000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "CAT"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTCAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "5.600000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLANTCAT"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "5.600000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BONECAT"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "16.799999"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDER"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDERGLOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "3.000000"},
                {"MaxScale",        "7.000000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "STRIDERGLOW"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TREX"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.450000"},
                {"MaxScale",        "7.000000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TREX"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "5.040000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "TWOLEGANTELOPE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "4.200000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCOW"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "5.600000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SIXLEGCAT"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.450000"},
                {"MaxScale",        "16.799999"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "GRUNT"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.150000"},
                {"MaxScale", "16.799999"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BLOB"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="TROT" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.600000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="3">
								<Property name="Anim" value="SLOWWALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="0.200000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="4">
								<Property name="Anim" value="FASTWALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "16.799999"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDER"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ARTHROPOD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",  "0.300000"},
                {"MaxScale",  "16.799999"},
                {"MoveRange", "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ARTHROPOD"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKINGBUILDING"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "16.799999"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKINGBUILDING"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.200000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATSPIDER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "16.799999"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATSPIDER"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOROLLER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "7.000000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOROLLER"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "4.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTOFLYER"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_FLOAT_METALORB" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="7.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.200000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="0.001000" />
								<Property name="Follow" value="0.500000" />
								<Property name="AlignTime" value="0.300000" />
								<Property name="BankingTime" value="0.300000" />
								<Property name="MaxBankingAmount" value="0.300000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="1">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_FLOAT_FLATCREATURE" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="4.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="10.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="0.500000" />
								<Property name="TurnRequiredForMaxBanking" value="0.500000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="2">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_FLOAT_ELEPHLOATER" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="3.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="20.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.500000" />
								<Property name="TurnRequiredForMaxBanking" value="0.100000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="3">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_FLOAT_ROSEFISH" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="5.500000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="1.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="4">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_FLOAT_EYEFISH" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="4.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="20.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="1.000000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="5">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_FLOAT_RIDGEEEL" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="3.500000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="15.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="1.000000" />
								<Property name="MaxBankingAmount" value="0.300000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="6">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_FLOAT_RADIALWAVE" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="5.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="15.000000" />
								<Property name="Follow" value="0.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="1.000000" />
								<Property name="MaxBankingAmount" value="0.300000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="7">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="4.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="5.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="0.000000" />
								<Property name="Follow" value="5.000000" />
								<Property name="AlignTime" value="0.800000" />
								<Property name="BankingTime" value="0.800000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTODIGGER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "7.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PROTODIGGER"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.300000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLOUGH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "4.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PLOUGH"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="10.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="2" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="10.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="2.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.000000" />
								<Property name="Spacing" value="10.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.700000" />
								<Property name="BankingTime" value="0.700000" />
								<Property name="MaxBankingAmount" value="0.500000" />
								<Property name="TurnRequiredForMaxBanking" value="0.500000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.900000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DRILL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "4.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DRILL"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="10.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="4" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="9.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.200000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.000000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.000000" />
								<Property name="Spacing" value="10.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.700000" />
								<Property name="BankingTime" value="1.000000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.800000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDROLL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "3.750000"},
                {"MaxScale", "7.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDROLL"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="0.200000" />
								<Property name="MaxPetSpeedScale" value="1.300000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="0.700000" />
								<Property name="MaxPetSpeedScale" value="1.300000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.500000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDFLOAT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "2.250000"},
                {"MaxScale", "4.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDFLOAT"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="0.200000" />
								<Property name="MaxPetSpeedScale" value="1.300000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="0.700000" />
								<Property name="MaxPetSpeedScale" value="1.300000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.500000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDCRYSTAL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "2.250000"},
                {"MaxScale", "4.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDCRYSTAL"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.300000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDBUTTERFLY"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.450000"},
                {"MaxScale", "1.120000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WEIRDBUTTERFLY"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="60.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="4" />
						<Property name="MaxCount" value="8" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="5.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="2.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="20.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.300000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.700000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.700000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.200000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIEND"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIEND"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIEND"},
              ["PRECEDING_KEY_WORDS"] = {"WALK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIEND"},
              ["PRECEDING_KEY_WORDS"] = {"RUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.560000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGFIEND"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",  "0.750000"},
                {"MaxScale",  "1.400000"},
                {"MoveRange", "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGFIEND"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGFIEND"},
              ["PRECEDING_KEY_WORDS"] = {"WALK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGFIEND"},
              ["PRECEDING_KEY_WORDS"] = {"RUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.560000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGQUEEN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",  "0.750000"},
                {"MaxScale",  "1.400000"},
                {"MoveRange", "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGQUEEN"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGQUEEN"},
              ["PRECEDING_KEY_WORDS"] = {"WALK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BUGQUEEN"},
              ["PRECEDING_KEY_WORDS"] = {"RUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER"},
              ["PRECEDING_KEY_WORDS"] = {"WALK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER"},
              ["PRECEDING_KEY_WORDS"] = {"RUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.560000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="1" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="1.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.500000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.300000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="2.500000" />
								<Property name="AlignTime" value="0.200000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.000000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER_PET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER_PET"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER_PET"},
              ["PRECEDING_KEY_WORDS"] = {"WALK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.800000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SCUTTLER_PET"},
              ["PRECEDING_KEY_WORDS"] = {"RUN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinSpeedScale", "0.560000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SLUG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SLUG"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINIFIEND"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINIFIEND"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDFISHSMALL"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.375000"},
                {"MaxScale", "2.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDFISHSMALL"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="8" />
						<Property name="MaxCount" value="25" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="FollowPlayer" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="5.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="30.000000" />
								<Property name="Follow" value="2.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="1.000000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.900000" />
								<Property name="SpeedForMinPitch" value="0.050000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.375000"},
                {"MaxScale", "2.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FLOATER"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="8" />
						<Property name="MaxCount" value="25" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="1.000000" />
						<Property name="SwarmMovementType" value="FollowPlayerLimited" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="0.600000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="2.000000" />
								<Property name="Spacing" value="4.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="1.200000" />
								<Property name="BankingTime" value="1.200000" />
								<Property name="MaxBankingAmount" value="1.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.500000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="1.000000" />
								<Property name="SpeedForMinPitch" value="0.050000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINIDRONE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.375000"},
                {"MaxScale", "2.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MINIDRONE"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="8" />
						<Property name="MaxCount" value="25" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="5.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="2.000000" />
								<Property name="Spacing" value="16.000000" />
								<Property name="Follow" value="0.800000" />
								<Property name="AlignTime" value="0.700000" />
								<Property name="BankingTime" value="0.700000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.200000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.900000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDFISHBIG"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.600000"},
                {"MaxScale", "11.200000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FIENDFISHBIG"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="150.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="3" />
						<Property name="SwarmMovementSpeed" value="1.500000" />
						<Property name="SwarmMovementRadius" value="70.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="5.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.100000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.120000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="12.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.500000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.050000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="0.400000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROCKCREATURE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROCKCREATURE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "37.500000"},
                {"MaxScale",        "70.000000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SANDWORM"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="1" />
						<Property name="SwarmMovementSpeed" value="90.000000" />
						<Property name="SwarmMovementRadius" value="100.000000" />
						<Property name="SwarmMovementType" value="FollowPlayer" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="80.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="0.400000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.100000" />
								<Property name="Alignment" value="0.050000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="40.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.400000" />
								<Property name="BankingTime" value="0.400000" />
								<Property name="MaxBankingAmount" value="0.300000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_FLOATER"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.375000"},
                {"MaxScale", "2.100000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPACE_FLOATER"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="8" />
						<Property name="MaxCount" value="25" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="1.000000" />
						<Property name="SwarmMovementType" value="FollowPlayerLimited" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="6.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="2.000000" />
								<Property name="Spacing" value="4.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="1.200000" />
								<Property name="BankingTime" value="1.200000" />
								<Property name="MaxBankingAmount" value="1.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.500000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="1.000000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LAND_JELLYFISH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LAND_JELLYFISH"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.700000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.500000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.500000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="1.000000" />
								<Property name="SpeedForMinPitch" value="0.100000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="3.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.500000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYBOSS"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYBOSS"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="3.600000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.500000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.500000" />
								<Property name="BankingTime" value="3.000000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.100000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="1.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.100000" />
								<Property name="FaceMoveDirYawOnly" value="true" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="3.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYBOSS_BROOD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "JELLYBOSS_BROOD"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="10.000000" />
						<Property name="SwarmMovementRadius" value="20.000000" />
						<Property name="SwarmMovementType" value="Circle" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.600000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="5.000000" />
								<Property name="Follow" value="6.000000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.800000" />
								<Property name="MaxBankingAmount" value="0.700000" />
								<Property name="TurnRequiredForMaxBanking" value="0.500000" />
								<Property name="MinPitchAmount" value="0.100000" />
								<Property name="MaxPitchAmount" value="1.000000" />
								<Property name="SpeedForMinPitch" value="2.000000" />
								<Property name="SpeedForMaxPitch" value="2.500000" />
								<Property name="UpwardMovementForMaxPitch" value="0.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="true" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="3.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.800000" />
								<Property name="AnimThrustCyclePeak" value="0.200000" />
								<Property name="AnimThrustCycleEnd" value="0.600000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.850000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBO_PET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBO_PET"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="8" />
						<Property name="MaxCount" value="25" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="5.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.200000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="2.000000" />
								<Property name="Spacing" value="16.000000" />
								<Property name="Follow" value="0.800000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="0.200000" />
								<Property name="TurnRequiredForMaxBanking" value="0.600000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.250000" />
								<Property name="SpeedForMinPitch" value="0.200000" />
								<Property name="SpeedForMaxPitch" value="0.500000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.800000" />
								<Property name="FaceMoveDirYawOnly" value="true" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HOVER_PET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.187500"},
                {"MaxScale", "0.350000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HOVER_PET"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="8" />
						<Property name="MaxCount" value="25" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="5.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.200000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="2.000000" />
								<Property name="Spacing" value="16.000000" />
								<Property name="Follow" value="0.800000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="0.200000" />
								<Property name="TurnRequiredForMaxBanking" value="0.600000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.250000" />
								<Property name="SpeedForMinPitch" value="0.050000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="1.000000" />
								<Property name="FaceMoveDirStrength" value="0.800000" />
								<Property name="FaceMoveDirYawOnly" value="true" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LAND_SQUID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LAND_SQUID"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="10.000000" />
						<Property name="SwarmMovementRadius" value="20.000000" />
						<Property name="SwarmMovementType" value="Circle" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.600000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="5.000000" />
								<Property name="Follow" value="6.000000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.800000" />
								<Property name="MaxBankingAmount" value="0.700000" />
								<Property name="TurnRequiredForMaxBanking" value="0.500000" />
								<Property name="MinPitchAmount" value="0.100000" />
								<Property name="MaxPitchAmount" value="1.000000" />
								<Property name="SpeedForMinPitch" value="2.000000" />
								<Property name="SpeedForMaxPitch" value="2.500000" />
								<Property name="UpwardMovementForMaxPitch" value="0.000000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="true" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="3.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.800000" />
								<Property name="AnimThrustCyclePeak" value="0.200000" />
								<Property name="AnimThrustCycleEnd" value="0.600000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.850000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PURPLE_WEIRD"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "1.125000"},
                {"MaxScale", "8.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PURPLE_WEIRD"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="0.250000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="true" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_WEIRD_UDDER" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="4.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="0.400000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.400000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.200000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SPRINGWALK" />
								<Property name="AnimThrustCycleStart" value="0.150000" />
								<Property name="AnimThrustCyclePeak" value="0.400000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.300000" />
								<Property name="AnimThrustCycleMin" value="0.700000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="1">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_WEIRD_SPIKYOCTOPUS" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="2.600000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="4.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="1.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.800000" />
								<Property name="BankingTime" value="1.000000" />
								<Property name="MaxBankingAmount" value="0.200000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.200000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.700000" />
								<Property name="FaceMoveDirStrength" value="0.200000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="2">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_WEIRD_SPRINGWORM" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="7.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="1.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.900000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.900000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SPRINGWALK" />
								<Property name="AnimThrustCycleStart" value="0.230000" />
								<Property name="AnimThrustCyclePeak" value="0.270000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.200000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="3">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_WEIRD_GLOWPYRAMID" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="1.500000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="0.200000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.200000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.100000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="4">
								<Property name="ValidDescriptors">
									<Property name="ValidDescriptors" value="_WEIRD_GLOWYDODECA" _index="0" />
								</Property>
								<Property name="MaxSpeed" value="3.500000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="1.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="1.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.900000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="5">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="5.500000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="1.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.600000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="1.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.500000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISH"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.450000"},
                {"MaxScale",        "1.680000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISH"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISH"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="7" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="6.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.300000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.500000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.400000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHLARGE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.375000"},
                {"MaxScale",        "0.700000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHLARGE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHLARGE"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="1" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="6.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.300000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.500000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.400000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.075000"},
                {"MaxScale", "0.280000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHFLOCK"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"SwimFastSpeedMul", "1.100000"},
                {"SwimAnimSpeedMin", "0.200000"},
                {"SwimAnimSpeedMax", "1.300000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "DEEPFISHFLOCK"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureFlockMovementData" _index="1">
					<Property name="GcCreatureFlockMovementData">
						<Property name="MinFlockMembers" value="7" />
						<Property name="MaxFlockMembers" value="12" />
						<Property name="FlockFollow" value="1.000000" />
						<Property name="FlockHysteresis" value="0.500000" />
						<Property name="FlockCohere" value="3.000000" />
						<Property name="FlockSeperate" value="7.000000" />
						<Property name="FlockSeperateMinDist" value="2.000000" />
						<Property name="FlockSeperateMaxDist" value="6.000000" />
						<Property name="FlockAlign" value="0.100000" />
						<Property name="FlockAvoidTerrain" value="15.000000" />
						<Property name="FlockAvoidTerrainMinDist" value="3.000000" />
						<Property name="FlockAvoidTerrainMaxDist" value="10.000000" />
						<Property name="FlockAvoidPredators" value="10.000000" />
						<Property name="FlockAvoidPredatorsMinDist" value="20.000000" />
						<Property name="FlockAvoidPredatorsMaxDist" value="40.000000" />
						<Property name="FlockAvoidPredatorsSpeedBoost" value="0.300000" />
						<Property name="MoveInFacingStrength" value="0.900000" />
						<Property name="FlockMoveSpeed" value="0.400000" />
						<Property name="FlockMoveDirectionTime" value="0.100000" />
						<Property name="FlockTurnAngle" value="7.000000" />
						<Property name="MaxBank" value="30.000000" />
						<Property name="BankTime" value="0.100000" />
						<Property name="MinFlapSpeed" value="2.500000" />
						<Property name="MaxFlapSpeed" value="6.000000" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTA"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "1.275000"},
                {"MaxScale",        "4.760000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTA"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTA"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="7" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.200000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="0.300000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.500000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="2.300000" />
								<Property name="BankingTime" value="1.700000" />
								<Property name="MaxBankingAmount" value="0.400000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.400000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.800000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.700000" />
								<Property name="AnimThrustCyclePeak" value="0.900000" />
								<Property name="AnimThrustCycleEnd" value="0.200000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.700000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTAGLOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "1.275000"},
                {"MaxScale",        "4.760000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTAGLOW"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "MANTAGLOW"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="7" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.200000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="0.300000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.500000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.500000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="2.300000" />
								<Property name="BankingTime" value="1.700000" />
								<Property name="MaxBankingAmount" value="0.400000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.400000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.800000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.700000" />
								<Property name="AnimThrustCyclePeak" value="0.900000" />
								<Property name="AnimThrustCycleEnd" value="0.200000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.700000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSE"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.450000"},
                {"MaxScale",        "1.680000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSE"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSE"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="7" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.100000" />
								<Property name="SwimFastSpeedMul" value="2.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.700000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.500000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="1.000000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.050000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.500000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSEGLOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.450000"},
                {"MaxScale",        "1.680000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSEGLOW"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SEAHORSEGLOW"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="3" />
						<Property name="MaxCount" value="7" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.000000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.300000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.100000" />
								<Property name="SeparateStrength" value="0.500000" />
								<Property name="Spacing" value="2.000000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.400000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.200000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SQUID"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.375000"},
                {"MaxScale",        "5.600000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SQUID"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SQUID"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="2" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="200.000000" />
						<Property name="SwarmMovementType" value="Circle" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="0.800000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.400000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="true" />
								<Property name="Coherence" value="0.500000" />
								<Property name="Alignment" value="0.000000" />
								<Property name="SeparateStrength" value="0.000000" />
								<Property name="Spacing" value="1.000000" />
								<Property name="Follow" value="2.500000" />
								<Property name="AlignTime" value="4.000000" />
								<Property name="BankingTime" value="4.000000" />
								<Property name="MaxBankingAmount" value="0.300000" />
								<Property name="TurnRequiredForMaxBanking" value="1.000000" />
								<Property name="MinPitchAmount" value="0.010000" />
								<Property name="MaxPitchAmount" value="0.800000" />
								<Property name="SpeedForMinPitch" value="0.050000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.900000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.900000" />
								<Property name="AnimThrustCyclePeak" value="0.200000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.500000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HERMITCRAB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.562500"},
                {"MaxScale",        "2.800000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PRAWN"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.150000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PRAWN"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "PRAWN"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="1" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="1.000000" />
						<Property name="SwarmMovementRadius" value="40.000000" />
						<Property name="SwarmMovementType" value="Random" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="2.500000" />
								<Property name="SwimFastSpeedMul" value="2.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="0.600000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="1.000000" />
								<Property name="Alignment" value="0.500000" />
								<Property name="SeparateStrength" value="0.200000" />
								<Property name="Spacing" value="0.500000" />
								<Property name="Follow" value="1.000000" />
								<Property name="AlignTime" value="1.700000" />
								<Property name="BankingTime" value="1.200000" />
								<Property name="MaxBankingAmount" value="0.300000" />
								<Property name="TurnRequiredForMaxBanking" value="0.400000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.800000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.300000" />
								<Property name="FaceMoveDirStrength" value="0.900000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BONECOW"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.300000"},
                {"MaxScale",        "4.200000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "60.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "BONECOW"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBO_RODENT"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "1.050000"},
                {"MaxScale",        "3.500000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "ROBO_RODENT"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.800000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKER_CRAB"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "0.750000"},
                {"MaxScale",        "1.400000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "WALKER_CRAB"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.400000"},
                {"MinSpeedScale",         "0.240000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHBOWL_PET3"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale",        "1.500000"},
                {"MaxScale",        "2.800000"},
                {"TurnRadiusScale", "2.000000"},
                {"MoveRange",       "140.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "FISHBOWL_PET3"},
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"AnimSpeed",             "0.800000"},
                {"MinSpeedScale",         "0.200000"},
                {"MaxPredatorSpeedScale", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LANDSQUID_PET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "LANDSQUID_PET"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="5" />
						<Property name="SwarmMovementSpeed" value="0.500000" />
						<Property name="SwarmMovementRadius" value="10.000000" />
						<Property name="SwarmMovementType" value="FollowPlayer" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="1.700000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="false" />
								<Property name="SteeringSpringSmoothTime" value="1.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="10.000000" />
								<Property name="Alignment" value="0.500000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="6.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="1.500000" />
								<Property name="BankingTime" value="0.600000" />
								<Property name="MaxBankingAmount" value="0.000000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="1.000000" />
								<Property name="SpeedForMinPitch" value="0.100000" />
								<Property name="SpeedForMaxPitch" value="0.300000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="3.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="true" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.500000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDERQUAD_PET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.750000"},
                {"MaxScale", "1.400000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "SPIDERQUAD_PET"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="RUN" />
								<Property name="AnimLeft" value="" />
								<Property name="AnimRight" value="" />
								<Property name="AnimSpeed" value="0.800000" />
								<Property name="MinSpeedScale" value="0.800000" />
								<Property name="MaxSpeedScale" value="1.000000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
]]
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HORROR_PET"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"MinScale", "0.375000"},
                {"MaxScale", "0.700000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Id", "HORROR_PET"},
              ["PRECEDING_KEY_WORDS"] = {"DATA"},
              ["ADD_OPTION"] = "ADDendSECTION",
              ["ADD"] =
[[
				<Property name="Data" value="GcCreatureMovementData" _index="1">
					<Property name="GcCreatureMovementData">
						<Property name="Anims">
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="0">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="1">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
							<Property name="Anims" value="GcCreatureMoveAnimData" _index="2">
								<Property name="Anim" value="WALK" />
								<Property name="AnimLeft" value="LEFT" />
								<Property name="AnimRight" value="RIGHT" />
								<Property name="AnimSpeed" value="0.400000" />
								<Property name="MinSpeedScale" value="0.240000" />
								<Property name="MaxSpeedScale" value="1.300000" />
								<Property name="MaxPredatorSpeedScale" value="1.000000" />
								<Property name="MinPetSpeedScale" value="1.000000" />
								<Property name="MaxPetSpeedScale" value="1.000000" />
							</Property>
						</Property>
						<Property name="MoveRange" value="140.000000" />
						<Property name="MoveSpeedScale" value="1.000000" />
						<Property name="TurnRadiusScale" value="2.000000" />
						<Property name="HeightMin" value="0.000000" />
						<Property name="HeightMax" value="256.000000" />
						<Property name="LimitHeightRange" value="false" />
						<Property name="HeightRangeMin" value="0.000000" />
						<Property name="HeightRangeMax" value="0.000000" />
						<Property name="HeightTime" value="5.000000" />
						<Property name="Herd" value="false" />
						<Property name="IgnoreRotationInPounce" value="false" />
					</Property>
				</Property>
				<Property name="Data" value="GcCreatureSwarmData" _index="1">
					<Property name="GcCreatureSwarmData">
						<Property name="MinCount" value="2" />
						<Property name="MaxCount" value="3" />
						<Property name="SwarmMovementSpeed" value="10.000000" />
						<Property name="SwarmMovementRadius" value="100.000000" />
						<Property name="SwarmMovementType" value="Circle" />
						<Property name="AttractedToBait" value="false" />
						<Property name="Params">
							<Property name="Params" value="GcCreatureSwarmDataParams" _index="0">
								<Property name="ValidDescriptors" />
								<Property name="MaxSpeed" value="0.700000" />
								<Property name="SwimFastSpeedMul" value="1.100000" />
								<Property name="SwimAnimSpeedMin" value="0.200000" />
								<Property name="SwimAnimSpeedMax" value="1.300000" />
								<Property name="SwimMaxAcceleration" value="0.300000" />
								<Property name="SwimTurn" value="2.500000" />
								<Property name="ApplyScaleToSpeed" value="true" />
								<Property name="SteeringSpringSmoothTime" value="2.000000" />
								<Property name="ApplyScaleToSteeringSmoothTime" value="false" />
								<Property name="Coherence" value="0.100000" />
								<Property name="Alignment" value="0.050000" />
								<Property name="SeparateStrength" value="1.000000" />
								<Property name="Spacing" value="40.000000" />
								<Property name="Follow" value="1.500000" />
								<Property name="AlignTime" value="0.500000" />
								<Property name="BankingTime" value="0.200000" />
								<Property name="MaxBankingAmount" value="0.400000" />
								<Property name="TurnRequiredForMaxBanking" value="0.300000" />
								<Property name="MinPitchAmount" value="0.000000" />
								<Property name="MaxPitchAmount" value="0.300000" />
								<Property name="SpeedForMinPitch" value="0.000000" />
								<Property name="SpeedForMaxPitch" value="0.000000" />
								<Property name="UpwardMovementForMaxPitch" value="0.500000" />
								<Property name="FaceMoveDirStrength" value="0.700000" />
								<Property name="FaceMoveDirYawOnly" value="false" />
								<Property name="CanLand" value="false" />
								<Property name="LandAdjustDist" value="1.000000" />
								<Property name="LandClampBegin" value="0.750000" />
								<Property name="LandSlowDown" value="0.300000" />
								<Property name="TakeOffTime" value="1.000000" />
								<Property name="TakeOffStartSpeed" value="0.300000" />
								<Property name="TakeOffUpwardBoost" value="0.500000" />
								<Property name="FlyTimeMin" value="5.000000" />
								<Property name="FlyTimeMax" value="10.000000" />
								<Property name="LandTimeMin" value="20.000000" />
								<Property name="LandTimeMax" value="25.000000" />
								<Property name="LandIdleTimeMin" value="1.000000" />
								<Property name="LandIdleTimeMax" value="5.000000" />
								<Property name="LandWalkTimeMin" value="2.000000" />
								<Property name="LandWalkTimeMax" value="4.000000" />
								<Property name="CanWalk" value="false" />
								<Property name="WalkSpeed" value="5.000000" />
								<Property name="WalkTurnTime" value="1.000000" />
								<Property name="UseAnimThrustCycle" value="false" />
								<Property name="AnimThrustCycleAnim" value="SWIM" />
								<Property name="AnimThrustCycleStart" value="0.200000" />
								<Property name="AnimThrustCyclePeak" value="0.330000" />
								<Property name="AnimThrustCycleEnd" value="0.700000" />
								<Property name="AnimThrustCycleMax" value="1.000000" />
								<Property name="AnimThrustCycleMin" value="0.300000" />
							</Property>
						</Property>
					</Property>
				</Property>
]]
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\CREATUREGENERATIONDATA.MBIN",
          ["MXML_CHANGE_TABLE"] =
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Ground", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Ground", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = {2,7},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Ground", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 10,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Air", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 2,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Air", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = {0,5},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Air", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = {1,4,6},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Cave", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "0.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Cave", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.500000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Water", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.000000"},
              }
            },
            {
              ["SPECIAL_KEY_WORDS"] = {"Generic", "GcCreatureGenerationWeightedList", "Water", "GcCreatureGenerationWeightedListDomainEntry"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Weight", "1.500000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LifeChance"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Low",  "0.100000"},
                {"Mid",  "0.300000"},
              },
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"GroundGroupsPerKm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    "1.000000"},
                {"Normal",    "5.000000"},
                {"Dense",     "10.000000"},
                {"VeryDense", "20.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"AirGroupsPerKm"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    "5.000000"},
                {"Normal",    "10.000000"},
                {"Dense",     "20.000000"},
                {"VeryDense", "30.000000"},
              }
            },
             {
              ["PRECEDING_KEY_WORDS"] = {"DensityModifiers"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Sparse",    "1.000000"},
                {"Normal",    "1.750000"},
                {"VeryDense", "3.000000"},
              }
            },
            {
              ["PRECEDING_KEY_WORDS"] = {"LifeLevelDensityModifiers"},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"Low",  "1.000000"},
                {"Mid",  "1.700000"},
                {"Full", "2.500000"},
              },
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBIGBIRD.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEBUSY.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMON.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONLIZARD.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLECOMMONSNAKE.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGLIZARDONLY.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\AIR\AIRTABLEFLYINGSNAKESONLY.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\CAVE\CAVETABLECOMMON.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREGIANT.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORELARGE.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDBUTTERFLY.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTAL.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDCRYSTALPREDATOR.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDFLOAT.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDGLOWSTRIDERS.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDPURPLE.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDPURPLEBONES.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLL.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\WEIRD\GROUNDTABLEWEIRDROLLPREDATOR.MBIN",
          },
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["REPLACE_TYPE"] = "ALL",
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRole", "PlayerPredator"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEALIEN.MBIN", 
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
              ["SECTION_ACTIVE"] = {0,1,2},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRole", "PlayerPredator"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEARTHROPODHERB.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEARTHROPODWORLD.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVORESMALL.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATHERB.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEPLANTCATWORLD.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEWALKINGBUILDING.MBIN",
          },
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRole", "PlayerPredator"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEBONE.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEHERBIVOREMED.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\GROUND\GROUNDTABLEROBOT.MBIN",
          },
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
              ["SECTION_ACTIVE"] = 1,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRole", "PlayerPredator"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECRABS.MBIN",
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
              ["SECTION_ACTIVE"] = {0,1,2},
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRole", "FishPredator"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] =
          {
            "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEEXTRAFISHBASE.MBIN",
            "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLEWATERWORLDBASE.MBIN",
          },
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
              ["SECTION_ACTIVE"] = 0,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRole", "FishPredator"},
              }
            },
          }
        },
        {
          ["MBIN_FILE_SOURCE"] = "METADATA\SIMULATION\ECOSYSTEM\UNDERWATER\UNDERWATERTABLECOMMON.MBIN",
          ["MXML_CHANGE_TABLE"] = 
          {
            {
              ["SPECIAL_KEY_WORDS"] = {"RoleDescription", "GcCreatureRoleDescription"},
              ["SECTION_ACTIVE"] = 3,
              ["VALUE_CHANGE_TABLE"] =
              {
                {"CreatureRole", "FishPredator"},
              }
            },
          }
        },
      }
    },
  }
}

BiomeDataTable =
{
  {
    ["PALETTE"] = "Fur",
    ["NUMCOLOURS"] = "_16",
    ["COLOURS"] =
    {
      {["R"]="0.023529", ["G"]="0.270588", ["B"]="0.301961", ["A"]="1"},
      {["R"]="0.266667", ["G"]="0.411765", ["B"]="0.454902", ["A"]="1"},
      {["R"]="0.14902",  ["G"]="0.427451", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.090196", ["G"]="0.317647", ["B"]="0.411765", ["A"]="1"},
      {["R"]="0.382",    ["G"]="0.336",    ["B"]="0.451",    ["A"]="1"},
      {["R"]="0.788",    ["G"]="0.676",    ["B"]="0.394",    ["A"]="1"},
      {["R"]="0.597",    ["G"]="0.371",    ["B"]="0.153",    ["A"]="1"},
      {["R"]="0.491",    ["G"]="0.372",    ["B"]="0.237",    ["A"]="1"},
      {["R"]="0.618",    ["G"]="0.579",    ["B"]="0.128",    ["A"]="1"},
      {["R"]="0",        ["G"]="0.545098", ["B"]="0.32549",  ["A"]="1"},
      {["R"]="0",        ["G"]="0.627451", ["B"]="0.576471", ["A"]="1"},
      {["R"]="0.588235", ["G"]="0.035294", ["B"]="0",        ["A"]="1"},
      {["R"]="0.890196", ["G"]="0.533333", ["B"]="0",        ["A"]="1"},
      {["R"]="0.14902",  ["G"]="0.498039", ["B"]="0.65098",  ["A"]="1"},
      {["R"]="0.588235", ["G"]="0.035294", ["B"]="0",        ["A"]="1"},
      {["R"]="0.694118", ["G"]="0.67451",  ["B"]="0.537255", ["A"]="1"},
      {["R"]="0.74902",  ["G"]="0.384314", ["B"]="0",        ["A"]="1"},
      {["R"]="0.890196", ["G"]="0.533333", ["B"]="0",        ["A"]="1"},
      {["R"]="0.588235", ["G"]="0.035294", ["B"]="0",        ["A"]="1"},
      {["R"]="0.611765", ["G"]="0.396078", ["B"]="0.709804", ["A"]="1"},
      {["R"]="0.611765", ["G"]="0.396078", ["B"]="0.709804", ["A"]="1"},
      {["R"]="0.721569", ["G"]="0.45098",  ["B"]="0.188235", ["A"]="1"},
      {["R"]="0.670588", ["G"]="0.380392", ["B"]="0.094118", ["A"]="1"},
      {["R"]="0.618",    ["G"]="0.579",    ["B"]="0.128",    ["A"]="1"},
      {["R"]="0.519",    ["G"]="0.438",    ["B"]="0.233",    ["A"]="1"},
      {["R"]="0.775",    ["G"]="0.726",    ["B"]="0.16",     ["A"]="1"},
      {["R"]="0.502",    ["G"]="0.349",    ["B"]="0.26",     ["A"]="1"},
      {["R"]="0.509",    ["G"]="0.489",    ["B"]="0.258",    ["A"]="1"},
      {["R"]="0.502",    ["G"]="0.349",    ["B"]="0.26",     ["A"]="1"},
      {["R"]="0.788",    ["G"]="0.676",    ["B"]="0.394",    ["A"]="1"},
      {["R"]="0.634",    ["G"]="0.741",    ["B"]="0.373",    ["A"]="1"},
      {["R"]="0.597",    ["G"]="0.371",    ["B"]="0.153",    ["A"]="1"},
      {["R"]="0.618",    ["G"]="0.579",    ["B"]="0.128",    ["A"]="1"},
      {["R"]="0.634",    ["G"]="0.741",    ["B"]="0.373",    ["A"]="1"},
      {["R"]="0.519",    ["G"]="0.438",    ["B"]="0.233",    ["A"]="1"},
      {["R"]="0.352",    ["G"]="0.557",    ["B"]="0.652",    ["A"]="1"},
      {["R"]="0.775",    ["G"]="0.447",    ["B"]="0.199",    ["A"]="1"},
      {["R"]="0.775",    ["G"]="0.726",    ["B"]="0.16",     ["A"]="1"},
      {["R"]="0.775",    ["G"]="0.726",    ["B"]="0.16",     ["A"]="1"},
      {["R"]="0.597",    ["G"]="0.371",    ["B"]="0.153",    ["A"]="1"},
      {["R"]="0.519",    ["G"]="0.438",    ["B"]="0.233",    ["A"]="1"},
      {["R"]="0.471",    ["G"]="0.372",    ["B"]="0.123",    ["A"]="1"},
      {["R"]="0.491",    ["G"]="0.372",    ["B"]="0.237",    ["A"]="1"},
      {["R"]="0.491",    ["G"]="0.372",    ["B"]="0.237",    ["A"]="1"},
      {["R"]="0.502",    ["G"]="0.349",    ["B"]="0.26",     ["A"]="1"},
      {["R"]="0.788",    ["G"]="0.606",    ["B"]="0.146",    ["A"]="1"},
      {["R"]="0.519",    ["G"]="0.438",    ["B"]="0.233",    ["A"]="1"},
      {["R"]="0.023529", ["G"]="0.270588", ["B"]="0.301961", ["A"]="1"},
      {["R"]="0.266667", ["G"]="0.411765", ["B"]="0.454902", ["A"]="1"},
      {["R"]="0.14902",  ["G"]="0.427451", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.090196", ["G"]="0.317647", ["B"]="0.411765", ["A"]="1"},
      {["R"]="0.382",    ["G"]="0.336",    ["B"]="0.451",    ["A"]="1"},
      {["R"]="0.788",    ["G"]="0.676",    ["B"]="0.394",    ["A"]="1"},
      {["R"]="0.597",    ["G"]="0.371",    ["B"]="0.153",    ["A"]="1"},
      {["R"]="0.491",    ["G"]="0.372",    ["B"]="0.237",    ["A"]="1"},
      {["R"]="0.618",    ["G"]="0.579",    ["B"]="0.128",    ["A"]="1"},
      {["R"]="0",        ["G"]="0.545098", ["B"]="0.32549",  ["A"]="1"},
      {["R"]="0",        ["G"]="0.627451", ["B"]="0.576471", ["A"]="1"},
      {["R"]="0.588235", ["G"]="0.035294", ["B"]="0",        ["A"]="1"},
      {["R"]="0.890196", ["G"]="0.533333", ["B"]="0",        ["A"]="1"},
      {["R"]="0.14902",  ["G"]="0.498039", ["B"]="0.65098",  ["A"]="1"},
      {["R"]="0.588235", ["G"]="0.035294", ["B"]="0",        ["A"]="1"},
      {["R"]="0.694118", ["G"]="0.67451",  ["B"]="0.537255", ["A"]="1"},
      {["R"]="0.74902",  ["G"]="0.384314", ["B"]="0",        ["A"]="1"},
    }
  },
  {
    ["PALETTE"] = "Scale",
    ["NUMCOLOURS"] = "_16",
    ["COLOURS"] =
    {
      {["R"]="0.133333", ["G"]="0.384314", ["B"]="0.486275", ["A"]="1"},
      {["R"]="0.133333", ["G"]="0.458824", ["B"]="0.486275", ["A"]="1"},
      {["R"]="0.184314", ["G"]="0.482353", ["B"]="0.572549", ["A"]="1"},
      {["R"]="0.133333", ["G"]="0.384314", ["B"]="0.486275", ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.45",     ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.243",    ["G"]="0.3",      ["B"]="0.227",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.229",    ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.45",     ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.229",    ["B"]="0.229",    ["A"]="1"},
      {["R"]="0",        ["G"]="0.039216", ["B"]="0.070588", ["A"]="1"},
      {["R"]="0.278431", ["G"]="0.14902",  ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.886275", ["G"]="0.811765", ["B"]="0.298039", ["A"]="1"},
      {["R"]="0.513726", ["G"]="0.090196", ["B"]="0.090196", ["A"]="1"},
      {["R"]="0",        ["G"]="0.564706", ["B"]="0.647059", ["A"]="1"},
      {["R"]="0.270588", ["G"]="0.086275", ["B"]="0.52549",  ["A"]="1"},
      {["R"]="0",        ["G"]="0.294118", ["B"]="0.647059", ["A"]="1"},
      {["R"]="0.8",      ["G"]="0.890196", ["B"]="0.886275", ["A"]="1"},
      {["R"]="0.776471", ["G"]="0.133333", ["B"]="0.133333", ["A"]="1"},
      {["R"]="0.556863", ["G"]="0.098039", ["B"]="0.098039", ["A"]="1"},
      {["R"]="0.886275", ["G"]="0.811765", ["B"]="0.298039", ["A"]="1"},
      {["R"]="0.411765", ["G"]="0.815686", ["B"]="0.305882", ["A"]="1"},
      {["R"]="0.635294", ["G"]="0.478431", ["B"]="0.239216", ["A"]="1"},
      {["R"]="0.292",    ["G"]="0.706",    ["B"]="0.422",    ["A"]="1"},
      {["R"]="0.243",    ["G"]="0.3",      ["B"]="0.227",    ["A"]="1"},
      {["R"]="0.799",    ["G"]="0.68",     ["B"]="0.263",    ["A"]="1"},
      {["R"]="0.819",    ["G"]="0.801",    ["B"]="0.735",    ["A"]="1"},
      {["R"]="0.653",    ["G"]="0.826",    ["B"]="0.824",    ["A"]="1"},
      {["R"]="0.273",    ["G"]="0.232",    ["B"]="0.09",     ["A"]="1"},
      {["R"]="0.653",    ["G"]="0.826",    ["B"]="0.824",    ["A"]="1"},
      {["R"]="0.326",    ["G"]="0.579",    ["B"]="0.72",     ["A"]="1"},
      {["R"]="0.819",    ["G"]="0.801",    ["B"]="0.735",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.229",    ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.326",    ["G"]="0.72",     ["B"]="0.716",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.45",     ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.709",    ["G"]="0.799",    ["B"]="0.263",    ["A"]="1"},
      {["R"]="0.292",    ["G"]="0.706",    ["B"]="0.422",    ["A"]="1"},
      {["R"]="0.205",    ["G"]="0.304",    ["B"]="0.302",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.45",     ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.326",    ["G"]="0.72",     ["B"]="0.716",    ["A"]="1"},
      {["R"]="0.819",    ["G"]="0.801",    ["B"]="0.735",    ["A"]="1"},
      {["R"]="0.205",    ["G"]="0.304",    ["B"]="0.302",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.229",    ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.653",    ["G"]="0.826",    ["B"]="0.824",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.45",     ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.8",      ["G"]="0.890196", ["B"]="0.886275", ["A"]="1"},
      {["R"]="0.819",    ["G"]="0.801",    ["B"]="0.735",    ["A"]="1"},
      {["R"]="0.653",    ["G"]="0.826",    ["B"]="0.824",    ["A"]="1"},
      {["R"]="0.133333", ["G"]="0.384314", ["B"]="0.486275", ["A"]="1"},
      {["R"]="0.133333", ["G"]="0.458824", ["B"]="0.486275", ["A"]="1"},
      {["R"]="0.184314", ["G"]="0.482353", ["B"]="0.572549", ["A"]="1"},
      {["R"]="0.133333", ["G"]="0.384314", ["B"]="0.486275", ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.45",     ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.243",    ["G"]="0.3",      ["B"]="0.227",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.229",    ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.45",     ["B"]="0.229",    ["A"]="1"},
      {["R"]="0.744",    ["G"]="0.229",    ["B"]="0.229",    ["A"]="1"},
      {["R"]="0",        ["G"]="0.039216", ["B"]="0.070588", ["A"]="1"},
      {["R"]="0.278431", ["G"]="0.14902",  ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.886275", ["G"]="0.811765", ["B"]="0.298039", ["A"]="1"},
      {["R"]="0.513726", ["G"]="0.090196", ["B"]="0.090196", ["A"]="1"},
      {["R"]="0",        ["G"]="0.564706", ["B"]="0.647059", ["A"]="1"},
      {["R"]="0.270588", ["G"]="0.086275", ["B"]="0.52549",  ["A"]="1"},
      {["R"]="0",        ["G"]="0.294118", ["B"]="0.647059", ["A"]="1"},
      {["R"]="0.8",      ["G"]="0.890196", ["B"]="0.886275", ["A"]="1"},
    }
  },
  {
    ["PALETTE"] = "Feather",
    ["NUMCOLOURS"] = "All",
    ["COLOURS"] =
    {
      {["R"]="0.372549", ["G"]="0.52549",  ["B"]="0.211765", ["A"]="1"},
      {["R"]="0.270588", ["G"]="0.619608", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.211765", ["G"]="0.466667", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.211765", ["G"]="0.466667", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.298039", ["G"]="0.435294", ["B"]="0.560784", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.329412", ["B"]="0.329412", ["A"]="1"},
      {["R"]="0.286275", ["G"]="0.458824", ["B"]="0.666667", ["A"]="1"},
      {["R"]="0.658824", ["G"]="0.388235", ["B"]="0.305882", ["A"]="1"},
      {["R"]="0.666667", ["G"]="0.372549", ["B"]="0.313726", ["A"]="1"},
      {["R"]="0.568627", ["G"]="0.376471", ["B"]="0.72549",  ["A"]="1"},
      {["R"]="0.286275", ["G"]="0.458824", ["B"]="0.666667", ["A"]="1"},
      {["R"]="0.666667", ["G"]="0.372549", ["B"]="0.313726", ["A"]="1"},
      {["R"]="0.584314", ["G"]="0.521569", ["B"]="0.266667", ["A"]="1"},
      {["R"]="0.270588", ["G"]="0.619608", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.286275", ["G"]="0.458824", ["B"]="0.666667", ["A"]="1"},
      {["R"]="0.239216", ["G"]="0.639216", ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.321569", ["B"]="0.345098", ["A"]="1"},
      {["R"]="0.372549", ["G"]="0.635294", ["B"]="0.235294", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.321569", ["B"]="0.345098", ["A"]="1"},
      {["R"]="0.666667", ["G"]="0.372549", ["B"]="0.313726", ["A"]="1"},
      {["R"]="0.239216", ["G"]="0.639216", ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.372549", ["G"]="0.635294", ["B"]="0.235294", ["A"]="1"},
      {["R"]="0.298039", ["G"]="0.435294", ["B"]="0.560784", ["A"]="1"},
      {["R"]="0.635294", ["G"]="0.478431", ["B"]="0.239216", ["A"]="1"},
      {["R"]="0.478431", ["G"]="0.380392", ["B"]="0.713726", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.321569", ["B"]="0.345098", ["A"]="1"},
      {["R"]="0.654902", ["G"]="0.388235", ["B"]="0.301961", ["A"]="1"},
      {["R"]="0.635294", ["G"]="0.478431", ["B"]="0.239216", ["A"]="1"},
      {["R"]="0.658824", ["G"]="0.388235", ["B"]="0.305882", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.321569", ["B"]="0.345098", ["A"]="1"},
      {["R"]="0.286275", ["G"]="0.458824", ["B"]="0.666667", ["A"]="1"},
      {["R"]="0.643137", ["G"]="0.443137", ["B"]="0.290196", ["A"]="1"},
      {["R"]="0.376471", ["G"]="0.384314", ["B"]="0.435294", ["A"]="1"},
      {["R"]="0.372549", ["G"]="0.635294", ["B"]="0.235294", ["A"]="1"},
      {["R"]="0.239216", ["G"]="0.639216", ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.666667", ["G"]="0.372549", ["B"]="0.313726", ["A"]="1"},
      {["R"]="0.466667", ["G"]="0.360784", ["B"]="0.713726", ["A"]="1"},
      {["R"]="0.254902", ["G"]="0.419608", ["B"]="0.588235", ["A"]="1"},
      {["R"]="0.670588", ["G"]="0.313726", ["B"]="0.592157", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.321569", ["B"]="0.345098", ["A"]="1"},
      {["R"]="0.372549", ["G"]="0.52549",  ["B"]="0.211765", ["A"]="1"},
      {["R"]="0.270588", ["G"]="0.619608", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.211765", ["G"]="0.466667", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.211765", ["G"]="0.466667", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.298039", ["G"]="0.435294", ["B"]="0.560784", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.329412", ["B"]="0.329412", ["A"]="1"},
      {["R"]="0.286275", ["G"]="0.458824", ["B"]="0.666667", ["A"]="1"},
      {["R"]="0.658824", ["G"]="0.388235", ["B"]="0.305882", ["A"]="1"},
      {["R"]="0.666667", ["G"]="0.372549", ["B"]="0.313726", ["A"]="1"},
      {["R"]="0.568627", ["G"]="0.376471", ["B"]="0.72549",  ["A"]="1"},
      {["R"]="0.286275", ["G"]="0.458824", ["B"]="0.666667", ["A"]="1"},
      {["R"]="0.666667", ["G"]="0.372549", ["B"]="0.313726", ["A"]="1"},
      {["R"]="0.584314", ["G"]="0.521569", ["B"]="0.266667", ["A"]="1"},
      {["R"]="0.270588", ["G"]="0.619608", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.286275", ["G"]="0.458824", ["B"]="0.666667", ["A"]="1"},
      {["R"]="0.239216", ["G"]="0.639216", ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.321569", ["B"]="0.345098", ["A"]="1"},
      {["R"]="0.372549", ["G"]="0.635294", ["B"]="0.235294", ["A"]="1"},
      {["R"]="0.682353", ["G"]="0.321569", ["B"]="0.345098", ["A"]="1"},
      {["R"]="0.666667", ["G"]="0.372549", ["B"]="0.313726", ["A"]="1"},
      {["R"]="0.239216", ["G"]="0.639216", ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.372549", ["G"]="0.635294", ["B"]="0.235294", ["A"]="1"},
      {["R"]="0.298039", ["G"]="0.435294", ["B"]="0.560784", ["A"]="1"},
      {["R"]="0.635294", ["G"]="0.478431", ["B"]="0.239216", ["A"]="1"},
    }
  },
  {
    ["PALETTE"] = "Underbelly",
    ["NUMCOLOURS"] = "_16",
    ["COLOURS"] =
    {
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.795",    ["G"]="0.777",    ["B"]="0.694",    ["A"]="1"},
      {["R"]="0.594",    ["G"]="0.541",    ["B"]="0.532",    ["A"]="1"},
      {["R"]="0.422",    ["G"]="0.46",     ["B"]="0.468",    ["A"]="1"},
      {["R"]="0.696",    ["G"]="0.634",    ["B"]="0.623",    ["A"]="1"},
      {["R"]="0.689",    ["G"]="0.674",    ["B"]="0.602",    ["A"]="1"},
      {["R"]="0.360784", ["G"]="0.4",      ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.717647", ["G"]="0.447059", ["B"]="0.231373", ["A"]="1"},
      {["R"]="0.717647", ["G"]="0.447059", ["B"]="0.231373", ["A"]="1"},
      {["R"]="0.945098", ["G"]="0.882353", ["B"]="0.705882", ["A"]="1"},
      {["R"]="0.635294", ["G"]="0",        ["B"]="0.098039", ["A"]="1"},
      {["R"]="0.384314", ["G"]="0.211765", ["B"]="0.109804", ["A"]="1"},
      {["R"]="0.811765", ["G"]="0.003922", ["B"]="0.117647", ["A"]="1"},
      {["R"]="0.258824", ["G"]="0.219608", ["B"]="0.235294", ["A"]="1"},
      {["R"]="0.490196", ["G"]="0.537255", ["B"]="0.015686", ["A"]="1"},
      {["R"]="0.894118", ["G"]="0.894118", ["B"]="0.658824", ["A"]="1"},
      {["R"]="0.443137", ["G"]="0.266667", ["B"]="0.231373", ["A"]="1"},
      {["R"]="0.894118", ["G"]="0.894118", ["B"]="0.658824", ["A"]="1"},
      {["R"]="0.648",    ["G"]="0.613",    ["B"]="0.607",    ["A"]="1"},
      {["R"]="0.768",    ["G"]="0.778",    ["B"]="0.33",     ["A"]="1"},
      {["R"]="0.594",    ["G"]="0.541",    ["B"]="0.532",    ["A"]="1"},
      {["R"]="0.768",    ["G"]="0.778",    ["B"]="0.33",     ["A"]="1"},
      {["R"]="0.558",    ["G"]="0.604",    ["B"]="0.538",    ["A"]="1"},
      {["R"]="0.654",    ["G"]="0.693",    ["B"]="0.625",    ["A"]="1"},
      {["R"]="0.558",    ["G"]="0.604",    ["B"]="0.538",    ["A"]="1"},
      {["R"]="0.648",    ["G"]="0.613",    ["B"]="0.607",    ["A"]="1"},
      {["R"]="0.3",      ["G"]="0.633",    ["B"]="0.788",    ["A"]="1"},
      {["R"]="0.87",     ["G"]="0.861",    ["B"]="0.82",     ["A"]="1"},
      {["R"]="0.802",    ["G"]="0.619",    ["B"]="0.587",    ["A"]="1"},
      {["R"]="0.765",    ["G"]="0.874",    ["B"]="0.891",    ["A"]="1"},
      {["R"]="0.782",    ["G"]="0.483",    ["B"]="0.323",    ["A"]="1"},
      {["R"]="0.422",    ["G"]="0.46",     ["B"]="0.468",    ["A"]="1"},
      {["R"]="0.496",    ["G"]="0.756",    ["B"]="0.765",    ["A"]="1"},
      {["R"]="0.753",    ["G"]="0.795",    ["B"]="0.297",    ["A"]="1"},
      {["R"]="0.558",    ["G"]="0.604",    ["B"]="0.538",    ["A"]="1"},
      {["R"]="0.773",    ["G"]="0.843",    ["B"]="0.721",    ["A"]="1"},
      {["R"]="0.696",    ["G"]="0.634",    ["B"]="0.623",    ["A"]="1"},
      {["R"]="0.915",    ["G"]="0.878",    ["B"]="0.872",    ["A"]="1"},
      {["R"]="0.915",    ["G"]="0.878",    ["B"]="0.872",    ["A"]="1"},
      {["R"]="0.853",    ["G"]="0.806",    ["B"]="0.798",    ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.682353", ["B"]="0.741176", ["A"]="1"},
      {["R"]="0.795",    ["G"]="0.777",    ["B"]="0.694",    ["A"]="1"},
      {["R"]="0.594",    ["G"]="0.541",    ["B"]="0.532",    ["A"]="1"},
      {["R"]="0.422",    ["G"]="0.46",     ["B"]="0.468",    ["A"]="1"},
      {["R"]="0.696",    ["G"]="0.634",    ["B"]="0.623",    ["A"]="1"},
      {["R"]="0.689",    ["G"]="0.674",    ["B"]="0.602",    ["A"]="1"},
      {["R"]="0.360784", ["G"]="0.4",      ["B"]="0.458824", ["A"]="1"},
      {["R"]="0.717647", ["G"]="0.447059", ["B"]="0.231373", ["A"]="1"},
      {["R"]="0.717647", ["G"]="0.447059", ["B"]="0.231373", ["A"]="1"},
      {["R"]="0.945098", ["G"]="0.882353", ["B"]="0.705882", ["A"]="1"},
      {["R"]="0.635294", ["G"]="0",        ["B"]="0.098039", ["A"]="1"},
      {["R"]="0.384314", ["G"]="0.211765", ["B"]="0.109804", ["A"]="1"},
      {["R"]="0.811765", ["G"]="0.003922", ["B"]="0.117647", ["A"]="1"},
      {["R"]="0.258824", ["G"]="0.219608", ["B"]="0.235294", ["A"]="1"},
      {["R"]="0.490196", ["G"]="0.537255", ["B"]="0.015686", ["A"]="1"},
      {["R"]="0.894118", ["G"]="0.894118", ["B"]="0.658824", ["A"]="1"},
      {["R"]="0.443137", ["G"]="0.266667", ["B"]="0.231373", ["A"]="1"},
      {["R"]="0.894118", ["G"]="0.894118", ["B"]="0.658824", ["A"]="1"},
    }
  },   
  {
    ["PALETTE"] = "Undercoat",
    ["NUMCOLOURS"] = "All",
    ["COLOURS"] =
    {
      {["R"]="0.498039", ["G"]="0.509804", ["B"]="0.498039", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.670588", ["B"]="0.627451", ["A"]="1"},
      {["R"]="0.815686", ["G"]="0.764706", ["B"]="0.764706", ["A"]="1"},
      {["R"]="0.764706", ["G"]="0.721569", ["B"]="0.698039", ["A"]="1"},
      {["R"]="0.776471", ["G"]="0.717647", ["B"]="0.717647", ["A"]="1"},
      {["R"]="0.607843", ["G"]="0.560784", ["B"]="0.501961", ["A"]="1"},
      {["R"]="0.717647", ["G"]="0.72549",  ["B"]="0.717647", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.654902", ["B"]="0.627451", ["A"]="1"},
      {["R"]="0.815686", ["G"]="0.764706", ["B"]="0.764706", ["A"]="1"},
      {["R"]="0.65098",  ["G"]="0.627451", ["B"]="0.552941", ["A"]="1"},
      {["R"]="0.815686", ["G"]="0.764706", ["B"]="0.764706", ["A"]="1"},
      {["R"]="0.596078", ["G"]="0.505882", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.639216", ["G"]="0.639216", ["B"]="0.541176", ["A"]="1"},
      {["R"]="0.65098",  ["G"]="0.627451", ["B"]="0.552941", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.654902", ["B"]="0.627451", ["A"]="1"},
      {["R"]="0.584314", ["G"]="0.615686", ["B"]="0.662745", ["A"]="1"},
      {["R"]="0.345098", ["G"]="0.286275", ["B"]="0.317647", ["A"]="1"},
      {["R"]="0.854902", ["G"]="0.843137", ["B"]="0.815686", ["A"]="1"},
      {["R"]="0.807843", ["G"]="0.784314", ["B"]="0.756863", ["A"]="1"},
      {["R"]="0.396078", ["G"]="0.443137", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.572549", ["G"]="0.584314", ["B"]="0.572549", ["A"]="1"},
      {["R"]="0.839216", ["G"]="0.819608", ["B"]="0.796078", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.501961", ["B"]="0.462745", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.501961", ["B"]="0.462745", ["A"]="1"},
      {["R"]="0.839216", ["G"]="0.811765", ["B"]="0.796078", ["A"]="1"},
      {["R"]="0.498039", ["G"]="0.509804", ["B"]="0.498039", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.670588", ["B"]="0.627451", ["A"]="1"},
      {["R"]="0.815686", ["G"]="0.764706", ["B"]="0.764706", ["A"]="1"},
      {["R"]="0.764706", ["G"]="0.721569", ["B"]="0.698039", ["A"]="1"},
      {["R"]="0.776471", ["G"]="0.717647", ["B"]="0.717647", ["A"]="1"},
      {["R"]="0.607843", ["G"]="0.560784", ["B"]="0.501961", ["A"]="1"},
      {["R"]="0.717647", ["G"]="0.72549",  ["B"]="0.717647", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.654902", ["B"]="0.627451", ["A"]="1"},
      {["R"]="0.815686", ["G"]="0.764706", ["B"]="0.764706", ["A"]="1"},
      {["R"]="0.65098",  ["G"]="0.627451", ["B"]="0.552941", ["A"]="1"},
      {["R"]="0.815686", ["G"]="0.764706", ["B"]="0.764706", ["A"]="1"},
      {["R"]="0.596078", ["G"]="0.505882", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.639216", ["G"]="0.639216", ["B"]="0.541176", ["A"]="1"},
      {["R"]="0.65098",  ["G"]="0.627451", ["B"]="0.552941", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.654902", ["B"]="0.627451", ["A"]="1"},
      {["R"]="0.584314", ["G"]="0.615686", ["B"]="0.662745", ["A"]="1"},
      {["R"]="0.345098", ["G"]="0.286275", ["B"]="0.317647", ["A"]="1"},
      {["R"]="0.854902", ["G"]="0.843137", ["B"]="0.815686", ["A"]="1"},
      {["R"]="0.807843", ["G"]="0.784314", ["B"]="0.756863", ["A"]="1"},
      {["R"]="0.396078", ["G"]="0.443137", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.572549", ["G"]="0.584314", ["B"]="0.572549", ["A"]="1"},
      {["R"]="0.839216", ["G"]="0.819608", ["B"]="0.796078", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.501961", ["B"]="0.462745", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.501961", ["B"]="0.462745", ["A"]="1"},
      {["R"]="0.839216", ["G"]="0.811765", ["B"]="0.796078", ["A"]="1"},
      {["R"]="0.807843", ["G"]="0.784314", ["B"]="0.756863", ["A"]="1"},
      {["R"]="0.396078", ["G"]="0.443137", ["B"]="0.505882", ["A"]="1"},
      {["R"]="0.572549", ["G"]="0.584314", ["B"]="0.572549", ["A"]="1"},
      {["R"]="0.839216", ["G"]="0.819608", ["B"]="0.796078", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.501961", ["B"]="0.462745", ["A"]="1"},
      {["R"]="0.580392", ["G"]="0.501961", ["B"]="0.462745", ["A"]="1"},
      {["R"]="0.839216", ["G"]="0.811765", ["B"]="0.796078", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.670588", ["B"]="0.627451", ["A"]="1"},
      {["R"]="0.815686", ["G"]="0.764706", ["B"]="0.764706", ["A"]="1"},
      {["R"]="0.764706", ["G"]="0.721569", ["B"]="0.698039", ["A"]="1"},
      {["R"]="0.776471", ["G"]="0.717647", ["B"]="0.717647", ["A"]="1"},
      {["R"]="0.607843", ["G"]="0.560784", ["B"]="0.501961", ["A"]="1"},
      {["R"]="0.717647", ["G"]="0.72549",  ["B"]="0.717647", ["A"]="1"},
      {["R"]="0.705882", ["G"]="0.654902", ["B"]="0.627451", ["A"]="1"},
    }
  }
}

BaseDataTable =
{
  {
    ["PALETTE"] = "Fur",
    ["NUMCOLOURS"] = "_16",
    ["COLOURS"] =
    {
      {["R"]="0.78", ["G"]="0.28", ["B"]="0.22", ["A"]="1"},
      {["R"]="0.86", ["G"]="0.32", ["B"]="0.24", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.34", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.36", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.34", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.4",  ["B"]="0.28", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.38", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.4",  ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.72", ["G"]="0.34", ["B"]="0.24", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.3",  ["B"]="0.2",  ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.48", ["B"]="0.34", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.42", ["B"]="0.32", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.38", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.38", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.92", ["G"]="0.52", ["B"]="0.36", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.44", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.84", ["G"]="0.46", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.5",  ["B"]="0.38", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.58", ["B"]="0.5",  ["A"]="1"},
      {["R"]="0.54", ["G"]="0.48", ["B"]="0.42", ["A"]="1"},
      {["R"]="0.52", ["G"]="0.46", ["B"]="0.4",  ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.52", ["B"]="0.44", ["A"]="1"},
      {["R"]="0.58", ["G"]="0.52", ["B"]="0.46", ["A"]="1"},
      {["R"]="0.62", ["G"]="0.56", ["B"]="0.5",  ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.54", ["B"]="0.48", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.52", ["B"]="0.44", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.4",  ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.84", ["G"]="0.36", ["B"]="0.22", ["A"]="1"},
      {["R"]="0.86", ["G"]="0.44", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.5",  ["B"]="0.36", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.46", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.42", ["B"]="0.24", ["A"]="1"},
      {["R"]="0.92", ["G"]="0.48", ["B"]="0.18", ["A"]="1"},
      {["R"]="0.94", ["G"]="0.6",  ["B"]="0.28", ["A"]="1"},
      {["R"]="0.34", ["G"]="0.3",  ["B"]="0.36", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.36", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.3",  ["B"]="0.52", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.26", ["B"]="0.4",  ["A"]="1"},
      {["R"]="0.82", ["G"]="0.34", ["B"]="0.46", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.4",  ["B"]="0.5",  ["A"]="1"},
      {["R"]="0.74", ["G"]="0.28", ["B"]="0.32", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.66", ["B"]="0.48", ["A"]="1"},
      {["R"]="0.83", ["G"]="0.76", ["B"]="0.63", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.88", ["B"]="0.84", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.74", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.5",  ["G"]="0.22", ["B"]="0.18", ["A"]="1"},
      {["R"]="0.48", ["G"]="0.2",  ["B"]="0.14", ["A"]="1"},
      {["R"]="0.42", ["G"]="0.18", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.52", ["G"]="0.28", ["B"]="0.16", ["A"]="1"},
      {["R"]="0.46", ["G"]="0.24", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.28", ["G"]="0.22", ["B"]="0.18", ["A"]="1"},
      {["R"]="0.48", ["G"]="0.38", ["B"]="0.14", ["A"]="1"},
      {["R"]="0.4",  ["G"]="0.32", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.36", ["G"]="0.3",  ["B"]="0.12", ["A"]="1"},
      {["R"]="0.34", ["G"]="0.28", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.22", ["G"]="0.24", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.26", ["G"]="0.26", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.3",  ["G"]="0.3",  ["B"]="0.32", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.7",  ["B"]="0.68", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.72", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.66", ["G"]="0.76", ["B"]="0.82", ["A"]="1"},
      {["R"]="0.58", ["G"]="0.66", ["B"]="0.72", ["A"]="1"},
      {["R"]="0.48", ["G"]="0.58", ["B"]="0.66", ["A"]="1"},
      {["R"]="0.52", ["G"]="0.6",  ["B"]="0.7",  ["A"]="1"},
    }
  },
  {
    ["PALETTE"] = "Scale",
    ["NUMCOLOURS"] = "_16",
    ["COLOURS"] =
    {
      {["R"]="0.58", ["G"]="0.3",  ["B"]="0.26", ["A"]="1"},
      {["R"]="0.54", ["G"]="0.34", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.48", ["G"]="0.28", ["B"]="0.24", ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.36", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.56", ["G"]="0.34", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.48", ["G"]="0.34", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.5",  ["G"]="0.3",  ["B"]="0.24", ["A"]="1"},
      {["R"]="0.52", ["G"]="0.34", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.54", ["G"]="0.42", ["B"]="0.36", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.48", ["B"]="0.4",  ["A"]="1"},
      {["R"]="0.56", ["G"]="0.42", ["B"]="0.34", ["A"]="1"},
      {["R"]="0.54", ["G"]="0.4",  ["B"]="0.32", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.5",  ["B"]="0.42", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.56", ["B"]="0.46", ["A"]="1"},
      {["R"]="0.65", ["G"]="0.6",  ["B"]="0.56", ["A"]="1"},
      {["R"]="0.75", ["G"]="0.7",  ["B"]="0.66", ["A"]="1"},
      {["R"]="0.77", ["G"]="0.72", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.63", ["G"]="0.58", ["B"]="0.54", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.64", ["B"]="0.56", ["A"]="1"},
      {["R"]="0.67", ["G"]="0.62", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.73", ["G"]="0.68", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.71", ["G"]="0.66", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.79", ["B"]="0.69", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.72", ["B"]="0.52", ["A"]="1"},
      {["R"]="0.84", ["G"]="0.7",  ["B"]="0.52", ["A"]="1"},
      {["R"]="0.95", ["G"]="0.78", ["B"]="0.35", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.68", ["B"]="0.42", ["A"]="1"},
      {["R"]="0.96", ["G"]="0.76", ["B"]="0.22", ["A"]="1"},
      {["R"]="0.86", ["G"]="0.72", ["B"]="0.34", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.72", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.42", ["G"]="0.34", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.97", ["G"]="0.78", ["B"]="0.25", ["A"]="1"},
      {["R"]="0.84", ["G"]="0.74", ["B"]="0.46", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.7",  ["B"]="0.36", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.64", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.96", ["G"]="0.82", ["B"]="0.42", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.64", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.86", ["G"]="0.76", ["B"]="0.44", ["A"]="1"},
      {["R"]="0.95", ["G"]="0.8",  ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.98", ["G"]="0.94", ["B"]="0.8",  ["A"]="1"},
      {["R"]="0.98", ["G"]="0.92", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.98", ["G"]="0.86", ["B"]="0.4",  ["A"]="1"},
      {["R"]="0.88", ["G"]="0.82", ["B"]="0.55", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.84", ["B"]="0.5",  ["A"]="1"},
      {["R"]="0.78", ["G"]="0.72", ["B"]="0.18", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.66", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.76", ["B"]="0.16", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.84", ["B"]="0.2",  ["A"]="1"},
      {["R"]="0.64", ["G"]="0.64", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.6",  ["B"]="0.18", ["A"]="1"},
      {["R"]="0.52", ["G"]="0.52", ["B"]="0.14", ["A"]="1"},
      {["R"]="0.56", ["G"]="0.56", ["B"]="0.16", ["A"]="1"},
      {["R"]="0.38", ["G"]="0.54", ["B"]="0.18", ["A"]="1"},
      {["R"]="0.28", ["G"]="0.4",  ["B"]="0.18", ["A"]="1"},
      {["R"]="0.32", ["G"]="0.46", ["B"]="0.22", ["A"]="1"},
      {["R"]="0.29", ["G"]="0.42", ["B"]="0.2",  ["A"]="1"},
      {["R"]="0.36", ["G"]="0.52", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.33", ["G"]="0.48", ["B"]="0.26", ["A"]="1"},
      {["R"]="0.3",  ["G"]="0.44", ["B"]="0.24", ["A"]="1"},
      {["R"]="0.34", ["G"]="0.5",  ["B"]="0.28", ["A"]="1"},
      {["R"]="0.18", ["G"]="0.46", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.14", ["G"]="0.4",  ["B"]="0.54", ["A"]="1"},
      {["R"]="0.16", ["G"]="0.42", ["B"]="0.56", ["A"]="1"},
      {["R"]="0.1",  ["G"]="0.34", ["B"]="0.5",  ["A"]="1"},
    }
  },
  {
    ["PALETTE"] = "Feather",
    ["NUMCOLOURS"] = "All",
    ["COLOURS"] =
    {
      {["R"]="0.76", ["G"]="0.12", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.22", ["B"]="0.18", ["A"]="1"},
      {["R"]="0.86", ["G"]="0.18", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.18", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.84", ["G"]="0.22", ["B"]="0.16", ["A"]="1"},
      {["R"]="0.85", ["G"]="0.12", ["B"]="0.04", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.15", ["B"]="0.05", ["A"]="1"},
      {["R"]="0.92", ["G"]="0.18", ["B"]="0.06", ["A"]="1"},
      {["R"]="0.95", ["G"]="0.2",  ["B"]="0.05", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.28", ["B"]="0.14", ["A"]="1"},
      {["R"]="0.94", ["G"]="0.5",  ["B"]="0.4",  ["A"]="1"},
      {["R"]="0.96", ["G"]="0.52", ["B"]="0.42", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.42", ["B"]="0.3",  ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.48", ["B"]="0.34", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.38", ["B"]="0.16", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.28", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.96", ["G"]="0.54", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.96", ["G"]="0.78", ["B"]="0.2",  ["A"]="1"},
      {["R"]="0.88", ["G"]="0.7",  ["B"]="0.08", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.62", ["B"]="0.06", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.72", ["B"]="0.08", ["A"]="1"},
      {["R"]="0.98", ["G"]="0.82", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.92", ["G"]="0.78", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.95", ["G"]="0.82", ["B"]="0.18", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.78", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.38", ["G"]="0.9",  ["B"]="0.14", ["A"]="1"},
      {["R"]="0.34", ["G"]="0.86", ["B"]="0.12", ["A"]="1"},
      {["R"]="0.3",  ["G"]="0.78", ["B"]="0.1",  ["A"]="1"},
      {["R"]="0.26", ["G"]="0.72", ["B"]="0.08", ["A"]="1"},
      {["R"]="0.22", ["G"]="0.62", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.2",  ["G"]="0.8",  ["B"]="0.34", ["A"]="1"},
      {["R"]="0.18", ["G"]="0.7",  ["B"]="0.52", ["A"]="1"},
      {["R"]="0.3",  ["G"]="0.7",  ["B"]="0.78", ["A"]="1"},
      {["R"]="0.1",  ["G"]="0.24", ["B"]="0.28", ["A"]="1"},
      {["R"]="0.14", ["G"]="0.56", ["B"]="0.82", ["A"]="1"},
      {["R"]="0.28", ["G"]="0.72", ["B"]="1",    ["A"]="1"},
      {["R"]="0.24", ["G"]="0.68", ["B"]="1",    ["A"]="1"},
      {["R"]="0.22", ["G"]="0.64", ["B"]="0.98", ["A"]="1"},
      {["R"]="0.2",  ["G"]="0.62", ["B"]="0.96", ["A"]="1"},
      {["R"]="0.2",  ["G"]="0.6",  ["B"]="0.95", ["A"]="1"},
      {["R"]="0.18", ["G"]="0.56", ["B"]="0.92", ["A"]="1"},
      {["R"]="0.18", ["G"]="0.54", ["B"]="0.9",  ["A"]="1"},
      {["R"]="0.16", ["G"]="0.5",  ["B"]="0.86", ["A"]="1"},
      {["R"]="0.12", ["G"]="0.42", ["B"]="0.82", ["A"]="1"},
      {["R"]="0.1",  ["G"]="0.34", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.36", ["G"]="0.08", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.42", ["G"]="0.1",  ["B"]="0.72", ["A"]="1"},
      {["R"]="0.44", ["G"]="0.12", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.5",  ["G"]="0.14", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.88", ["G"]="0.1",  ["B"]="0.58", ["A"]="1"},
      {["R"]="0.84", ["G"]="0.08", ["B"]="0.54", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.14", ["B"]="0.48", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.04", ["B"]="0.42", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.12", ["B"]="0.52", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.1",  ["B"]="0.44", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.08", ["B"]="0.4",  ["A"]="1"},
      {["R"]="0.84", ["G"]="0.16", ["B"]="0.5",  ["A"]="1"},
      {["R"]="0.82", ["G"]="0.18", ["B"]="0.48", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.18", ["B"]="0.48", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.76", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.9",  ["G"]="0.9",  ["B"]="0.88", ["A"]="1"},
      {["R"]="0.84", ["G"]="0.84", ["B"]="0.82", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.78", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.72", ["B"]="0.7",  ["A"]="1"},
    }
  },
  {
    ["PALETTE"] = "Underbelly",
    ["NUMCOLOURS"] = "_16",
    ["COLOURS"] =
    {
      {["R"]="0.76", ["G"]="0.7",  ["B"]="0.66", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.72", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.75", ["G"]="0.72", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.74", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.72", ["G"]="0.66", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.7",  ["B"]="0.68", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.7",  ["B"]="0.66", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.72", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.76", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.74", ["B"]="0.72", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.74", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.76", ["B"]="0.72", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.68", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.78", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.66", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.84", ["G"]="0.8",  ["B"]="0.76", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.7",  ["B"]="0.62", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.64", ["B"]="0.56", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.66", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.68", ["B"]="0.6",  ["A"]="1"},
      {["R"]="0.68", ["G"]="0.7",  ["B"]="0.66", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.82", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.84", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.82", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.84", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.78", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.66", ["G"]="0.68", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.66", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.8",  ["B"]="0.72", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.78", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.82", ["G"]="0.86", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.74", ["B"]="0.66", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.76", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.76", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.74", ["B"]="0.66", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.86", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.86", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.72", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.7",  ["B"]="0.64", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.66", ["A"]="1"},
      {["R"]="0.62", ["G"]="0.66", ["B"]="0.6",  ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.64", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.68", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.76", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.74", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.58", ["G"]="0.62", ["B"]="0.56", ["A"]="1"},
      {["R"]="0.58", ["G"]="0.68", ["B"]="0.6",  ["A"]="1"},
      {["R"]="0.62", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.7",  ["B"]="0.62", ["A"]="1"},
      {["R"]="0.55", ["G"]="0.65", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.8",  ["B"]="0.82", ["A"]="1"},
      {["R"]="0.62", ["G"]="0.68", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.66", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.76", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.78", ["B"]="0.8",  ["A"]="1"},
      {["R"]="0.64", ["G"]="0.7",  ["B"]="0.72", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.74", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.72", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.72", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.7",  ["B"]="0.72", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.74", ["B"]="0.76", ["A"]="1"},
    }
  },   
  {
    ["PALETTE"] = "Undercoat",
    ["NUMCOLOURS"] = "All",
    ["COLOURS"] =
    {
      {["R"]="0.82", ["G"]="0.86", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.58", ["G"]="0.68", ["B"]="0.6",  ["A"]="1"},
      {["R"]="0.62", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.55", ["G"]="0.65", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.7",  ["B"]="0.62", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.66", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.7",  ["B"]="0.62", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.64", ["B"]="0.56", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.68", ["B"]="0.6",  ["A"]="1"},
      {["R"]="0.64", ["G"]="0.7",  ["B"]="0.72", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.74", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.66", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.72", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.75", ["G"]="0.72", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.78", ["G"]="0.76", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.7",  ["B"]="0.68", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.74", ["B"]="0.72", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.74", ["B"]="0.66", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.78", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.76", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.7",  ["B"]="0.66", ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.74", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.72", ["G"]="0.66", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.72", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.68", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.72", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.66", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.7",  ["B"]="0.66", ["A"]="1"},
      {["R"]="0.62", ["G"]="0.66", ["B"]="0.6",  ["A"]="1"},
      {["R"]="0.66", ["G"]="0.7",  ["B"]="0.64", ["A"]="1"},
      {["R"]="0.6",  ["G"]="0.64", ["B"]="0.58", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.68", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.66", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.74", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.58", ["G"]="0.62", ["B"]="0.56", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.76", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.74", ["G"]="0.7",  ["B"]="0.66", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.74", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.72", ["G"]="0.68", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.72", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.76", ["B"]="0.72", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.78", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.66", ["B"]="0.62", ["A"]="1"},
      {["R"]="0.84", ["G"]="0.8",  ["B"]="0.76", ["A"]="1"},
      {["R"]="0.66", ["G"]="0.72", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.76", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.64", ["G"]="0.7",  ["B"]="0.72", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.74", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.78", ["B"]="0.8",  ["A"]="1"},
      {["R"]="0.74", ["G"]="0.8",  ["B"]="0.82", ["A"]="1"},
      {["R"]="0.62", ["G"]="0.68", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.76", ["G"]="0.82", ["B"]="0.84", ["A"]="1"},
      {["R"]="0.72", ["G"]="0.76", ["B"]="0.68", ["A"]="1"},
      {["R"]="0.76", ["G"]="0.8",  ["B"]="0.72", ["A"]="1"},
      {["R"]="0.7",  ["G"]="0.74", ["B"]="0.66", ["A"]="1"},
      {["R"]="0.74", ["G"]="0.78", ["B"]="0.7",  ["A"]="1"},
      {["R"]="0.78", ["G"]="0.82", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.84", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
      {["R"]="0.82", ["G"]="0.86", ["B"]="0.78", ["A"]="1"},
      {["R"]="0.78", ["G"]="0.82", ["B"]="0.74", ["A"]="1"},
      {["R"]="0.8",  ["G"]="0.84", ["B"]="0.76", ["A"]="1"},
      {["R"]="0.68", ["G"]="0.72", ["B"]="0.64", ["A"]="1"},
    }
  }
}

function GetColours(COUNTER,R,G,B,A)
  return
[[
    <Property name="Colours" _index="]].. COUNTER ..[[">
      <Property name="R" value="]].. string.format("%0.6f",R) ..[[" />
      <Property name="G" value="]].. string.format("%0.6f",G) ..[[" />
      <Property name="B" value="]].. string.format("%0.6f",B) ..[[" />
      <Property name="A" value="]].. string.format("%0.6f",A) ..[[" />
    </Property>
]]
end

function CreateColoursProperty(PaletteColours)
  local PropertiesString = {}

  for j = 1, #PaletteColours do
      local COUNTER  = j-1
      local R = PaletteColours[j]["R"]
      local G = PaletteColours[j]["G"]
      local B = PaletteColours[j]["B"]
      local A = PaletteColours[j]["A"]
      table.insert(PropertiesString,GetColours(COUNTER,R,G,B,A))
  end
  local PropertyColoursString =
    [[      <Property name="Colours">
    ]]..table.concat(PropertiesString)..[[
  </Property>]]

  -- print(PropertyColoursString)
  return PropertyColoursString
end

local BaseColourPalettesTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][1]["MXML_CHANGE_TABLE"]
for i = 1, #BiomeDataTable do
  local Palette = BiomeDataTable[i]["PALETTE"]
  local PaletteColours = BiomeDataTable[i]["COLOURS"]
  -- local PaletteNumColours = BiomeDataTable[i]["NUMCOLOURS"]

  BaseColourPalettesTable[#BaseColourPalettesTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData", "NumColours", "IGNORE"},
    ["PRECEDING_KEY_WORDS"] = {"Colours"},
    ["REMOVE"] = "SECTION"
  }

  BaseColourPalettesTable[#BaseColourPalettesTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData", "NumColours", "IGNORE"},
    ["ADD"] = CreateColoursProperty(PaletteColours)
  }

  BaseColourPalettesTable[#BaseColourPalettesTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData"},
    ["PRECEDING_KEY_WORDS"] = {"Colours"},
    ["EXML_FLAGS"] = "OVERWRITE",
  }
end

local BaseColourPalettesTable = NMS_MOD_DEFINITION_CONTAINER["MODIFICATIONS"][1]["MBIN_CHANGE_TABLE"][2]["MXML_CHANGE_TABLE"]
for i = 1, #BaseDataTable do
  local Palette = BaseDataTable[i]["PALETTE"]
  local PaletteColours = BaseDataTable[i]["COLOURS"]
  -- local PaletteNumColours = BaseDataTable[i]["NUMCOLOURS"]

  BaseColourPalettesTable[#BaseColourPalettesTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData", "NumColours", "IGNORE"},
    ["PRECEDING_KEY_WORDS"] = {"Colours"},
    ["REMOVE"] = "SECTION"
  }

  BaseColourPalettesTable[#BaseColourPalettesTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData", "NumColours", "IGNORE"},
    ["ADD"] = CreateColoursProperty(PaletteColours)
  }

  BaseColourPalettesTable[#BaseColourPalettesTable +1] =
  {
    ["SPECIAL_KEY_WORDS"] = {Palette, "GcPaletteData"},
    ["PRECEDING_KEY_WORDS"] = {"Colours"},
    ["EXML_FLAGS"] = "OVERWRITE",
  }
end