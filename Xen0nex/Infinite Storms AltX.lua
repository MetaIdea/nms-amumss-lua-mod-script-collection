Author = "Exosolar"			--Edited by Xen0nex	
ModName = "gExos Challenge"
ModNameSub = "Infinite Storms AltX"
BaseDescription = "Makes storms permanent on extreme planets; edited to just make them more frequent and longer"
GameVersion = "393"
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
		{"StormWarningTime", "25"},							--25				X
		{"StormTransitionTime", "20"},						--20				X
		{"MinTimeBetweenStormsLow", "720"},					--900				X	12min
		{"MaxTimeBetweenStormsLow", "1800"},				--2400				X	30min
		{"MinStormLengthLow", "180"},						--120				X	3min
		{"MaxStormLengthLow", "360"},						--180				X	6min
		{"MinTimeBetweenStormsHigh", "60"},					--120	(1)			X	1min			(apparently something about changing the MinTimeBetween and MaxTimeBetween re-enables storms on certain extreme planets, but only a temporary fix and then needs to be changed again later to re-enable again? otherwise there were never any storms on them? I've increased these numbers several times as I come across extreme planets with no storms, and increasing it (or just changing the values at all?) seems to re-enabled storms
		{"MaxTimeBetweenStormsHigh", "180"},				--620	(2)			X	5min 20 sec		Seems to usually pick the Maximum length, or close to it...
		{"MinTimeBetweenStormsExtremeFallback", "15"},		--240	(1)			X	45sec			Unclear when the game chooses to use these 2 values...
		{"MaxTimeBetweenStormsExtremeFallback", "30"},		--620	(2)			X	2min			
		{"MinStormLengthHigh", "480"},						--150	(9999999)	X	8min			Seems to usually pick the Minimum length, or close to it...
		{"MaxStormLengthHigh", "780"},						--320	(9999999)	X	12min
		{"NoAtmosphereFogStrength", "0"},					--0.3	(0.03)
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