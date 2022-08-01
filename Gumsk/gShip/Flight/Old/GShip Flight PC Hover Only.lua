Author = "Gumsk"
ModName = "GShip Flight PC Hover Only"
ModNameSub = ""
BaseDescription = "Flight modifications"
GameVersion = "353"
ModVersion = "a"
FileSource1 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {

	{["VALUE_CHANGE_TABLE"] = {
		-- {"LandingMaxSpeed", 200},					--80
		-- {"LandingMaxAngle", 45},					--45
		-- {"LandingMargin", 2.5},						--1.4 - Lower blocks landing more often
		-- {"LandingObstacleMinHeight", 3},			--2 - Lower blocks landing more often
		-- {"LandingTooManyLowPointsFraction", 1},		--0.3 - Lower blocks landing more often
		-- {"DefaultTrailMinForwardSpeed", 45},		--45
		-- {"EngineJetLightIntensityMultiplier", 0.5},	--0.5
		-- {"EngineEffectsThrustContribution", 0.3},	--0.3
		-- {"HoverTakeoffHeight", 90},					--90
		-- {"LandingPushNoseUpFactor", -0.1},			--0.15
		-- {"TurnRudderStrength", 0.6},				--0.4
		-- {"DriftSpring", 0},							--0
		-- {"MiniWarpSpeed", 100000},					--30000
		-- {"MiniWarpTopSpeedTime", 0.1},				--0.1
		-- {"MiniWarpHUDArrowAttractAngle", 3},		--10
		-- {"MiniWarpFlashIntensity", 0},				--0.9
		-- {"MiniWarpFlashDuration", 0},				--0.9
		-- {"LandSlopeMax", 35},						--22
		-- {"ResetTargetLockAngle", 90},				--90
		-- {"TargetLockRange", 10000},					--10000
		-- {"TargetLockNearestAngle", 10},				--10
		-- {"RemotePlayerLockTimeAfterShot", 30},		--30
		-- {"LaunchThrustersRegenTimePeriod", 600},	--1440 - Lower is faster. Seconds to recharge from empty?
		-- {"LootAttractDistance",500}					--120
		}},

	{["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 60},
		-- {"MaxSpeed", 240},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 600},
		-- {"BoostMaxSpeed", 1800},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 1},
		}},
	{["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 40},
		-- {"MaxSpeed", 160},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 80},
		-- {"BoostMaxSpeed", 320},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 1.25},
		}},
	{["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 60},
		-- {"MaxSpeed", 240},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 600},
		-- {"BoostMaxSpeed", 1800},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 1.5},
		}},

	{["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 90},
		-- {"MaxSpeed", 360},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 1350},
		-- {"BoostMaxSpeed", 4050},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 2},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 60},
		-- {"MaxSpeed", 240},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 120},
		-- {"BoostMaxSpeed", 480},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 2.5},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 90},
		-- {"MaxSpeed", 360},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 1350},
		-- {"BoostMaxSpeed", 4050},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 3},
		}},

	{["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 30},
		-- {"MaxSpeed", 120},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 450},
		-- {"BoostMaxSpeed", 1350},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 0.3},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 20},
		-- {"MaxSpeed", 80},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 40},
		-- {"BoostMaxSpeed", 160},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 0.4},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 30},
		-- {"MaxSpeed", 120},
		{"MinSpeed", 0.01},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 450},
		-- {"BoostMaxSpeed", 1350},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 0.5},
		}},

	-- {["PRECEDING_KEY_WORDS"] = {"ControlBonusC"},
	-- ["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForceMax", 30},			--30
		-- {"ThrustForceMin", -5},			--(-5)
		-- {"MaxSpeedMax", -5},				--(-5)
		-- {"MaxSpeedMin", 5},				--5
		-- {"BoostMaxSpeedMax", 5},			--5
		-- {"BoostMaxSpeedMin", -5},		--(-5)
		-- {"BoostingTurnDampMax", 0},		--0
		-- {"BoostingTurnDampMin", 0},		--0
		-- {"DirectionBrakeMin", -0.25},	--(-0.25)
		-- {"DirectionBrakeMax", 0.2},		--0.2
		-- {"TurnStrengthMax", -0.05},		--(-0.05)
		-- {"TurnStrengthMin", 0.05},		--0.05
		-- }},
	-- {["PRECEDING_KEY_WORDS"] = {"ControlBonusB"},
	-- ["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForceMax", 60},			--60
		-- {"ThrustForceMin", 20},			--20
		-- {"MaxSpeedMax", 5},				--5
		-- {"MaxSpeedMin", 0},				--0
		-- {"BoostMaxSpeedMax", 5},		--5
		-- {"BoostMaxSpeedMin", 0},		--0
		-- {"BoostingTurnDampMax", 0.05},	--0.05
		-- {"BoostingTurnDampMin", -0.05},	--(-0.05)
		-- {"DirectionBrakeMin", 0.2},		--0.2
		-- {"DirectionBrakeMax", -0.2},	--(-0.2)
		-- {"TurnStrengthMax", 0.1},		--0.1
		-- {"TurnStrengthMin", 0},			--0
		-- }},
	-- {["PRECEDING_KEY_WORDS"] = {"ControlBonusA"},
	-- ["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForceMax", 100},		--100
		-- {"ThrustForceMin", 50},			--50
		-- {"MaxSpeedMax", 20},			--20
		-- {"MaxSpeedMin", 3},				--3
		-- {"BoostMaxSpeedMax", 10},		--10
		-- {"BoostMaxSpeedMin", 5},		--5
		-- {"BoostingTurnDampMax", 0.05},	--0.05
		-- {"BoostingTurnDampMin", -0.05},	--(-0.05)
		-- {"DirectionBrakeMin", 0.2},		--0.2
		-- {"DirectionBrakeMax", -0.2},	--(-0.2)
		-- {"TurnStrengthMax", 0.15},		--0.15
		-- {"TurnStrengthMin", 0},			--0
		-- }},
	-- {["PRECEDING_KEY_WORDS"] = {"ControlBonusS"},
	-- ["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForceMax", 250},		--250
		-- {"ThrustForceMin", 50},			--50
		-- {"MaxSpeedMax", 30},			--30
		-- {"MaxSpeedMin", 15},			--15
		-- {"BoostMaxSpeedMax", 15},		--15
		-- {"BoostMaxSpeedMin", 5},		--5
		-- {"BoostingTurnDampMax", 0.1},	--0.1
		-- {"BoostingTurnDampMin", 0},		--0
		-- {"DirectionBrakeMin", 0.2},		--0.2
		-- {"DirectionBrakeMax", -0.1},	--(-0.1)
		-- {"TurnStrengthMax", 0.25},		--0.25
		-- {"TurnStrengthMin", 0.1},		--0.1
		-- }},

}}}}}}