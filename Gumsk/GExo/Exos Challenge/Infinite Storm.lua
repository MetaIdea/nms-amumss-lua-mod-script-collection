NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= "GExos Challenge Exos Infinite Storms 322a.pak",
["MOD_DESCRIPTION"]	= "LUA Adaptation of Exosolar's Infinite Storms",
["MOD_AUTHOR"]		= "Exosolar",
["NMS_VERSION"]		= "322",
["MODIFICATIONS"]	= {{
["MBIN_CHANGE_TABLE"] = {{
["MBIN_FILE_SOURCE"] = "GCSKYGLOBALS.GLOBALS.MBIN",
["EXML_CHANGE_TABLE"] = {

	{["VALUE_CHANGE_TABLE"] = {
		{"RainbowAlpha", "0.15"},
		{"RainbowStormAlpha", "0.3"},
		{"SafeSkyMaxIndex", "15416"},
		{"FrozenSkyMaxIndex", "440"},
		{"MinTimeBetweenStormsHigh", "1"},
		{"MaxTimeBetweenStormsHigh", "2"},
		{"MinTimeBetweenStormsExtremeFallback", "1"},
		{"MaxTimeBetweenStormsExtremeFallback", "2"},
		{"MinStormLengthHigh", "9999999"},
		{"MaxStormLengthHigh", "9999999"},
		{"NoAtmosphereFogStrength", "0.03"},
		}},
	{["PRECEDING_KEY_WORDS"] = {"PlanetFog"},
	["VALUE_CHANGE_TABLE"] = {
		{"FogMax", "0.5"},
		}},
	{["PRECEDING_KEY_WORDS"] = {"PlanetExtremeFog"},
	["VALUE_CHANGE_TABLE"] = {
		{"FogMax", "0.67"},
		}},
	{["PRECEDING_KEY_WORDS"] = {"PlanetStormFog"},
	["VALUE_CHANGE_TABLE"] = {
		{"FogMax", "0.67"},
		}},
	{["PRECEDING_KEY_WORDS"] = {"PlanetFlightFog"},
	["VALUE_CHANGE_TABLE"] = {
		{"FogStrength", "0.07"},
		{"FogMax", "0.67"},
		}},	

	
}}}}}}