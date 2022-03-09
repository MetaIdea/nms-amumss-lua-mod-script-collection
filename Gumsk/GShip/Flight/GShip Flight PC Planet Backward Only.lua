Author = "Gumsk"
ModName = "GShip Flight PC"
ModNameSub = "Planet Backward Only"
BaseDescription = "Flight modifications"
GameVersion = "382"
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


	{["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 40},
		-- {"MaxSpeed", 160},
		{"MinSpeed", -100},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 80},
		-- {"BoostMaxSpeed", 320},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 1.25},
		}},

	{["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 60},
		-- {"MaxSpeed", 240},
		{"MinSpeed", -100},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 120},
		-- {"BoostMaxSpeed", 480},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 2.5},
		}},

	{["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		-- {"ThrustForce", 20},
		-- {"MaxSpeed", 80},
		{"MinSpeed", -100},
		-- {"Falloff", 0.05},
		-- {"BoostThrustForce", 40},
		-- {"BoostMaxSpeed", 160},
		-- {"BoostFalloff", 0.05},
		-- {"TurnStrength", 0.4},
		}},

}}}}}}