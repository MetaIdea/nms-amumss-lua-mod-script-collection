NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "ChristianWidjaya_RealisticSpace_GameplayGlobal_Addon.pak",
["MOD_DESCRIPTION"]		= "Few quality changes",
["MOD_AUTHOR"]			= "ChristianWidjaya",
["NMS_VERSION"]			= "3.87+",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {

	{["MBIN_FILE_SOURCE"]	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]	= {		
		{ --Removes cooldown from freighter encounter
		["VALUE_CHANGE_TABLE"] = {
			{"HoursBetweenBattles","0"},
			{"FreighterStartPecent","100"}, --yes, that's typo by the dev...
			}},
		{ --QualityChanges
		["VALUE_CHANGE_TABLE"] = {
			{"DeathMoneyPenalty","0"},
			{"ShipInteractRadius","250"},
			{"MissileMaxTurnAngle","90"}}},
	}},
}}}}