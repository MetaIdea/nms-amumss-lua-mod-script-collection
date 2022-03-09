Author = "Gumsk"
ModName = "GShip Flight PC"
ModNameSub = "Cruise Only"
BaseDescription = "Flight modifications"
GameVersion = "321"
ModVersion = "a"
FileSource1 = "GCSPACESHIPGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..GameVersion..ModVersion.." "..ModNameSub..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = FileSource1,
["EXML_CHANGE_TABLE"] = {

	{["PRECEDING_KEY_WORDS"] = {"Control","SpaceEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},
	{["PRECEDING_KEY_WORDS"] = {"Control","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},
	{["PRECEDING_KEY_WORDS"] = {"Control","CombatEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},

	{["PRECEDING_KEY_WORDS"] = {"ControlLight","SpaceEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlLight","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlLight","CombatEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},

	{["PRECEDING_KEY_WORDS"] = {"ControlHeavy","SpaceEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlHeavy","PlanetEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},
	{["PRECEDING_KEY_WORDS"] = {"ControlHeavy","CombatEngine"},
	["VALUE_CHANGE_TABLE"] = {
		{"Falloff", 0},
		--{"BoostFalloff", 0},
		{"OverspeedBrake", 0},
		}},


}}}}}}