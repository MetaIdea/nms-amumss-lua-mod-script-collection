Author = "Gumsk"
ModName = "gShip Flight PC"
ModNameSub = "ThrottleJockey"
BaseDescription = "Flight modifications"
GameVersion = "422"
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
								{"LandingMaxSpeed", 80},					--80
								{"LandingMaxAngle", 45},					--45
								{"LandingMargin", 1.4},						--1.4 - Lower blocks landing more often
								{"LandingObstacleMinHeight", 2},			--2 - Lower blocks landing more often
								{"LandingTooManyLowPointsFraction", 0.3},	--0.3 - Lower blocks landing more often
								{"DefaultTrailMinForwardSpeed", 45},		--45
								{"EngineJetLightIntensityMultiplier", 0.5},	--0.5
								{"EngineEffectsThrustContribution", 0.3},	--0.3
								{"HoverTakeoffHeight", 90},					--90
								{"LandingPushNoseUpFactor", 0.15},			--0.15
								{"TurnRudderStrength", 0.4},				--0.4
								{"DriftSpring", 0},							--0
								{"MiniWarpChargeTime", 0.1},				--2
								{"MiniWarpSpeed", 90000},					--30000
								{"MiniWarpTopSpeedTime", 0.1},				--0.1
								{"MiniWarpHUDArrowAttractAngle", 10},		--10
								{"MiniWarpFlashIntensity", 0.9},			--0.9
								{"MiniWarpFlashDuration", 0.9},				--0.9
								{"MiniWarpLinesNum", 4},					--4
								{"LandSlopeMax", 22},						--22
								{"ResetTargetLockAngle", 90},				--90
								{"TargetLockRange", 10000},					--10000
								{"TargetLockNearestAngle", 10},				--10
								{"RemotePlayerLockTimeAfterShot", 30},		--30
								{"LaunchThrustersRegenTimePeriod", 1440},	--1440 - Lower is faster. Seconds to recharge from empty?
								{"LootAttractDistance",120}					--120
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 360},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2400},					--1200
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 20},						--20
								{"MaxSpeed", 250},							--125
								{"MinSpeed", 0.01},							--20
								{"Falloff", 0.5},							--0.5
								{"BoostThrustForce", 100},					--100
								{"BoostMaxSpeed", 310},						--155
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2400},					--1200
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.3},						--1.3
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"Control","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 100},					--100
								{"BoostMaxSpeed", 310},						--155
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.3},						--1.3
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 80},						--80
								{"MaxSpeed", 360},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2600},					--1300
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.1},						--1.1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 250},							--125
								{"MinSpeed", 0.01},							--20
								{"Falloff", 0.5},							--0.5
								{"BoostThrustForce", 200},					--200
								{"BoostMaxSpeed", 300},						--150
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.65},						--1.65
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 80},						--80
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2600},					--1300
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.5},						--1.5
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlLight","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 80},						--80
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 100},					--100
								{"BoostMaxSpeed", 310},						--155
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.5},						--1.5
							}
						},
						
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 360},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2200},					--1100
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 0.6},						--0.6
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 20},						--20
								{"MaxSpeed", 260},							--130
								{"MinSpeed", 0.01},							--20
								{"Falloff", 0.5},							--0.5
								{"BoostThrustForce", 20},					--20
								{"BoostMaxSpeed", 370},						--185
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 0.7},						--0.7
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2200},					--1100
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHeavy","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 50},					--50
								{"BoostMaxSpeed", 240},						--120
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},

						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","SpaceEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 360},							--180
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2200},						--1100
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 0.6},						--0.6
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","PlanetEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 20},						--20
								{"MaxSpeed", 260},							--130
								{"MinSpeed", 0.01},							--1
								{"Falloff", 0.5},							--0.5
								{"BoostThrustForce", 400},					--400
								{"BoostMaxSpeed", 370},						--185
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.05},						--1.05
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","CombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--50
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 500},					--500
								{"BoostMaxSpeed", 2200},					--1100
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ControlHover","AtmosCombatEngine"},
							["INTEGER_TO_FLOAT"] = "FORCE",
							["VALUE_CHANGE_TABLE"] = {
								{"ThrustForce", 40},						--40
								{"MaxSpeed", 160},							--80
								{"MinSpeed", 0.01},							--10
								{"Falloff", 0.7},							--0.7
								{"BoostThrustForce", 50},					--50
								{"BoostMaxSpeed", 240},						--120
								{"BoostFalloff", 0.7},						--0.7
								{"TurnStrength", 1.0},						--1
							}
						},
						
					}
				}	
			}
		}
	}
}