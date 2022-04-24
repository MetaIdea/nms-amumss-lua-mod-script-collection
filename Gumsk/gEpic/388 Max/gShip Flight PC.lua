Author = "Gumsk"
ModName = "gShip Flight PC"
ModNameSub = ""
BaseDescription = "Flight modifications"
GameVersion = "382"
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
						{"LandingMaxAngle", 45},					--45
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
						{"MiniWarpSpeed", 100000},					--30000
						{"MiniWarpTopSpeedTime", 0.1},				--0.1
						--{"MiniWarpHUDArrowAttractAngle", 3},		--10
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
						{"ThrustForce", 100},						--40
						{"MaxSpeed", 160},							--180
						{"MinSpeed", 0.01},							--1
						{"Falloff", 0.05},							--0.7
						{"BoostThrustForce", 400},					--500
						{"BoostMaxSpeed", 1000},					--1200
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 1.0},						--1
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 40},						--20
						{"MaxSpeed", 100},							--125
						{"MinSpeed", 0.01},							--20
						{"Falloff", 0.05},							--0.5
						{"BoostThrustForce", 140},					--100
						{"BoostMaxSpeed", 200},						--155
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 1.2},						--1
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 100},						--40
						{"MaxSpeed", 160},							--80
						{"MinSpeed", 0.01},							--50
						{"Falloff", 0.05},							--0.7
						{"BoostThrustForce", 400},					--500
						{"BoostMaxSpeed", 1000},					--1200
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 1.0},						--1.3
					}
				},

				{
					["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 150},						--80 (B 140)
						{"MaxSpeed", 240},							--180 (B 185)
						{"MinSpeed", 0.01},							--1
						{"Falloff", 0.05},							--0.7
						{"BoostThrustForce", 600},					--500
						{"BoostMaxSpeed", 1500},					--1300 (B 1305)
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 1.5},						--1.1 (B 1.2)
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 60},						--40
						{"MaxSpeed", 150},							--125
						{"MinSpeed", 0.01},							--20
						{"Falloff", 0.05},							--0.5
						{"BoostThrustForce", 210},					--200
						{"BoostMaxSpeed", 300},						--150
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 1.8},						--1.65
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 150},						--80
						{"MaxSpeed", 240},							--80
						{"MinSpeed", 0.01},							--50
						{"Falloff", 0.05},							--0.7
						{"BoostThrustForce", 600},					--500
						{"BoostMaxSpeed", 1500},					--1300
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 1.5},						--1.5
					}
				},

				{
					["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 50},						--40
						{"MaxSpeed", 80},							--180
						{"MinSpeed", 0.01},							--1
						{"Falloff", 0.05},							--0.7
						{"BoostThrustForce", 200},					--500
						{"BoostMaxSpeed", 500},						--1100
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 0.5},						--0.6
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 20},						--20
						{"MaxSpeed", 50},							--130
						{"MinSpeed", 0.01},							--20
						{"Falloff", 0.05},							--0.5
						{"BoostThrustForce", 70},					--20
						{"BoostMaxSpeed", 100},						--185
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 0.6},						--0.7
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForce", 50},						--40
						{"MaxSpeed", 80},							--80
						{"MinSpeed", 0.01},							--50
						{"Falloff", 0.05},							--0.7
						{"BoostThrustForce", 200},					--500
						{"BoostMaxSpeed", 500},						--1100
						{"BoostFalloff", 0.05},						--0.7
						{"TurnStrength", 0.5},						--1
					}
				},

				{
					["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForceMax", 0},						--30
						{"ThrustForceMin", -10},					--(-5)
						{"MaxSpeedMax", -10},						--(-5)
						{"MaxSpeedMin", -20},							--5
						{"BoostMaxSpeedMax", -15},					--5
						{"BoostMaxSpeedMin", -30},					--(-5)
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
						{"ThrustForceMax", 0},						--60
						{"ThrustForceMin", 0},						--20
						{"MaxSpeedMax", 0},							--5
						{"MaxSpeedMin", 0},							--0
						{"BoostMaxSpeedMax", 0},					--5
						{"BoostMaxSpeedMin", 0},					--0
						{"BoostingTurnDampMax", 0},					--0.05
						{"BoostingTurnDampMin", 0},					--(-0.05)
						{"DirectionBrakeMin", 0},					--0.2
						{"DirectionBrakeMax", 0},					--(-0.2)
						{"TurnStrengthMax", 0},						--0.1
						{"TurnStrengthMin", 0},						--0
					}
				},
				{
					["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"ThrustForceMax", 100},					--100
						{"ThrustForceMin", 50},						--50
						{"MaxSpeedMax", 30},						--20
						{"MaxSpeedMin", 10},						--3
						{"BoostMaxSpeedMax", 10},					--10
						{"BoostMaxSpeedMin", 5},					--5
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
						{"MaxSpeedMax", 50},						--30
						{"MaxSpeedMin", 30},						--15
						{"BoostMaxSpeedMax", 15},					--15
						{"BoostMaxSpeedMin", 10},					--5
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
}}