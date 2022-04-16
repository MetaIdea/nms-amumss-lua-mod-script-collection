Author = "Exosolar"
ModName = "gExos Challenge"
ModNameSub = "Infinite Storms"
BaseDescription = "Makes storms permanent on extreme planets"
GameVersion = "370"
ModVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
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
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"FogMax", "0.5"},
		}},
	{["PRECEDING_KEY_WORDS"] = {"PlanetExtremeFog"},
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"FogMax", "0.67"},
		}},
	{["PRECEDING_KEY_WORDS"] = {"PlanetStormFog"},
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"FogMax", "0.67"},
		}},
	{["PRECEDING_KEY_WORDS"] = {"PlanetFlightFog"},
	["INTEGER_TO_FLOAT"] = "FORCE",
	["VALUE_CHANGE_TABLE"] = {
		{"FogStrength", "0.07"},
		{"FogMax", "0.67"},
		}},	

	
}}}}}}