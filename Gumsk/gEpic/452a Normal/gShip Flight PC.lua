Author = "Gumsk"
ModName = "gShip Flight PC"
ModNameSub = ""
BaseDescription = "Flight modifications"
GameVersion = "452"
ModVersion = "a"
FileSource1 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
	["MOD_DESCRIPTION"]	= BaseDescription,
	["MOD_AUTHOR"]		= Author,
	["NMS_VERSION"]		= GameVersion,
	["MODIFICATIONS"]	= {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = FileSource1,
					["EXML_CHANGE_TABLE"] = {
						{
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"LandingMaxSpeed", 200},					--80
								{"LandingMaxAngle", 60},					--45
								{"LandingMargin", 2.5},						--1.4 - Lower blocks landing more often
								{"LandingObstacleMinHeight", 3},			--2 - Lower blocks landing more often
								{"LandingTooManyLowPointsFraction", 1},		--0.3 - Lower blocks landing more often
								{"DefaultTrailMinForwardSpeed", 45},		--45
								{"EngineJetLightIntensityMultiplier", 0.5},	--0.5
								{"EngineEffectsThrustContribution", 0.3},	--0.3
								{"HoverTakeoffHeight", 90},					--90
								{"LandingPushNoseUpFactor", -0.1},			--0.15
								{"TurnRudderStrength", 0.6},				--0.4
								{"DriftSpring", 0},							--0
								{"MiniWarpChargeTime", 0.5},				--2
								{"MiniWarpSpeed", 100000},					--30000
								{"MiniWarpTopSpeedTime", 0.1},				--0.1
								{"MiniWarpHUDArrowAttractAngle", 10},		--10
								{"MiniWarpFlashIntensity", 0},				--0.9
								{"MiniWarpFlashDuration", 0},				--0.9
								{"MiniWarpLinesNum", 0},					--
								{"LandSlopeMax", 35},						--22
								{"ResetTargetLockAngle", 90},				--90
								{"TargetLockRange", 10000},					--10000
								{"TargetLockNearestAngle", 10},				--10
								{"RemotePlayerLockTimeAfterShot", 30},		--30
								{"LaunchThrustersRegenTimePeriod", 600},	--1440 - Lower is faster. Seconds to recharge from empty?
								{"LootAttractDistance",500}					--120
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 70},						--40
								{"MaxSpeed", 220},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 400},					--500
								{"BoostMaxSpeed", 1800},					--1200
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--20
								{"MaxSpeed", 170},							--125
								{"MinSpeed", 0.01},							--20
								{"Falloff", 0.05},							--0.5
								{"BoostThrustForce", 140},					--100
								{"BoostMaxSpeed", 200},						--155
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 70},						--40
								{"MaxSpeed", 220},							--115
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 400},					--500
								{"BoostMaxSpeed", 1800},					--1200
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.3},						--1.3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 170},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 140},					--100
								{"BoostMaxSpeed", 200},						--155
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.3},						--1.3
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 130},						--80
								{"MaxSpeed", 270},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 600},					--500
								{"BoostMaxSpeed", 2300},					--1300
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.5},						--1.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 60},						--40
								{"MaxSpeed", 210},							--125
								{"MinSpeed", 0.01},							--20
								{"Falloff", 0.05},							--0.5
								{"BoostThrustForce", 220},					--200
								{"BoostMaxSpeed", 300},						--150
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.8},						--1.65
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 130},						--80
								{"MaxSpeed", 270},							--130
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 600},					--500
								{"BoostMaxSpeed", 2300},					--1300
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.5},						--1.5
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 60},						--80
								{"MaxSpeed", 210},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 220},					--100
								{"BoostMaxSpeed", 300},						--155
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.8},						--1.5
							}
						},
						
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 50},						--40
								{"MaxSpeed", 150},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 400},					--500
								{"BoostMaxSpeed", 1400},					--1100
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 0.6},						--0.6
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 20},						--20
								{"MaxSpeed", 120},							--130
								{"MinSpeed", 0.01},							--20
								{"Falloff", 0.05},							--0.5
								{"BoostThrustForce", 30},					--20
								{"BoostMaxSpeed", 170},						--185
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 0.7},						--0.7
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 50},						--40
								{"MaxSpeed", 150},							--100
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 400},					--500
								{"BoostMaxSpeed", 1400},					--1100
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 0.6},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 20},						--40
								{"MaxSpeed", 120},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 30},					--50
								{"BoostMaxSpeed", 170},						--120
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 0.7},						--1
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 50},						--40
								{"MaxSpeed", 150},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 400},					--500
								{"BoostMaxSpeed", 1400},					--1100
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 0.8},						--0.6
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 20},						--20
								{"MaxSpeed", 120},							--130
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.05},							--0.5
								{"BoostThrustForce", 40},					--400
								{"BoostMaxSpeed", 170},						--185
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.05},						--1.05
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 50},						--40
								{"MaxSpeed", 150},							--130
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 400},					--500
								{"BoostMaxSpeed", 1400},					--1100
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 0.8},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 20},						--40
								{"MaxSpeed", 120},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.05},							--0.7
								{"BoostThrustForce", 40},					--50
								{"BoostMaxSpeed", 170},						--120
								{"BoostFalloff", 0.05},						--0.7
								{"TurnStrength", 1.05},						--1
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 0},						--30
								{"ThrustForceMin", -10},					--(-5)
								{"MaxSpeedMax", -20},						--(-5)
								{"MaxSpeedMin", -30},						--5
								{"BoostMaxSpeedMax", -40},					--5
								{"BoostMaxSpeedMin", -60},					--(-5)
								{"BoostingTurnDampMax", 0},					--0
								{"BoostingTurnDampMin", 0},					--0
								{"DirectionBrakeMin", -0.25},				--(-0.25)
								{"DirectionBrakeMax", 0.2},					--0.2
								{"TurnStrengthMax", -0.1},					--(-0.05)
								{"TurnStrengthMin", -0.3},					--0.05
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 30},						--60
								{"ThrustForceMin", 10},						--20
								{"MaxSpeedMax", 0},							--5
								{"MaxSpeedMin", 0},							--0
								{"BoostMaxSpeedMax", 0},					--5
								{"BoostMaxSpeedMin", 0},					--0
								{"BoostingTurnDampMax", 0},					--0.05
								{"BoostingTurnDampMin", 0},					--(-0.05)
								{"DirectionBrakeMin", 0},					--0.2
								{"DirectionBrakeMax", 0},					--(-0.2)
								{"TurnStrengthMax", 0.1},					--0.1
								{"TurnStrengthMin", 0},						--0
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 100},					--100
								{"ThrustForceMin", 50},						--50
								{"MaxSpeedMax", 40},						--20
								{"MaxSpeedMin", 20},						--3
								{"BoostMaxSpeedMax", 200},					--10
								{"BoostMaxSpeedMin", 100},					--5
								{"BoostingTurnDampMax", 0.05},				--0.05
								{"BoostingTurnDampMin", -0.05},				--(-0.05)
								{"DirectionBrakeMin", 0.2},					--0.2
								{"DirectionBrakeMax", -0.2},				--(-0.2)
								{"TurnStrengthMax", 0.3},					--0.15
								{"TurnStrengthMin", 0.1},					--0
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForceMax", 250},					--250
								{"ThrustForceMin", 100},					--50
								{"MaxSpeedMax", 100},						--30
								{"MaxSpeedMin", 50},						--15
								{"BoostMaxSpeedMax", 400},					--15
								{"BoostMaxSpeedMin", 200},					--5
								{"BoostingTurnDampMax", 0.1},				--0.1
								{"BoostingTurnDampMin", 0},					--0
								{"DirectionBrakeMin", 0.2},					--0.2
								{"DirectionBrakeMax", -0.1},				--(-0.1)
								{"TurnStrengthMax", 0.5},					--0.25
								{"TurnStrengthMin", 0.3},					--0.1
							}
						},
					}
				}	
			}
		}
	}
}