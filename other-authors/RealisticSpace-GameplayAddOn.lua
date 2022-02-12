NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "___ChristianWidjaya_RealisticSpace_GameplayGlobal_Addon.pak",
["MOD_DESCRIPTION"]		= "Edit spawns and a few quality changes",
["MOD_AUTHOR"]			= "ChristianWidjaya",
["NMS_VERSION"]			= "261",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {

	{["MBIN_FILE_SOURCE"]	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]	= {		
		{ --Removes cooldown from freighter encounter
		["VALUE_CHANGE_TABLE"] = {
			{"HoursBetweenBattles","0"},
			{"FreighterStartPecent","100"}, --yes, that's typo by the dev...
			}},
		{ --PirateTimers High
		["PRECEDING_KEY_WORDS"] = {"PirateTimers","High"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","60"},
				{"y","120"}}},
		{ --PirateTimers Normal
		["PRECEDING_KEY_WORDS"] = {"PirateTimers","Normal"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","120"},
				{"y","180"}}},
		{ --PirateTimers Low
		["PRECEDING_KEY_WORDS"] = {"PirateTimers","Low"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","180"},
				{"y","240"}}},
		{ --HardPirateTimers High
		["PRECEDING_KEY_WORDS"] = {"HardPirateTimers","High"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","60"},
				{"y","90"}}},
		{ --HardPirateTimers Normal
		["PRECEDING_KEY_WORDS"] = {"HardPirateTimers","Normal"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","90"},
				{"y","120"}}},
		{ --HardPirateTimers Low
		["PRECEDING_KEY_WORDS"] = {"HardPirateTimers","Low"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","120"},
				{"y","180"}}},
		{ --FlybyTimers High
		["PRECEDING_KEY_WORDS"] = {"FlybyTimers","High"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","15"},
				{"y","30"}}},
		{ --FlybyTimers Normal
		["PRECEDING_KEY_WORDS"] = {"FlybyTimers","Normal"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","30"},
				{"y","60"}}},
		{ --FlybyTimers Low
		["PRECEDING_KEY_WORDS"] = {"FlybyTimers","Low"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","60"},
				{"y","90"}}},
		{ --SpaceFlybyTimers High
		["PRECEDING_KEY_WORDS"] = {"SpaceFlybyTimers","High"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","15"},
				{"y","30"}}},
		{ --SpaceFlybyTimers Normal
		["PRECEDING_KEY_WORDS"] = {"SpaceFlybyTimers","Normal"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","30"},
				{"y","60"}}},
		{ --SpaceFlybyTimers Low
		["PRECEDING_KEY_WORDS"] = {"SpaceFlybyTimers","Low"},
			["VALUE_CHANGE_TABLE"] = {
				{"x","60"},
				{"y","90"}}},
		{ --QualityChanges
		["VALUE_CHANGE_TABLE"] = {
			{"DeathMoneyPenalty","0"},
			{"DeathMoneyPenalty","0"},
			{"ShipInteractRadius","150"},
			{"MissileMaxTurnAngle","90"}}},
	}},
}}}}