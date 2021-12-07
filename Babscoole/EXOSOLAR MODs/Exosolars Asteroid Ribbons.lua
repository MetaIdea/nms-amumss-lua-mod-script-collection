Author = "Exosolar"
ModName = "Asteroid Ribbons"
ModNameSub = ""
BaseDescription = ""
GameVersion = "353"
ModVersion = "a"
FileSource1 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]	= ModName.." "..ModNameSub.." "..GameVersion..ModVersion..".pak",
["MOD_DESCRIPTION"]	= BaseDescription,
["MOD_AUTHOR"]		= Author,
["NMS_VERSION"]		= GameVersion,
["MODIFICATIONS"]	= {{
	["MBIN_CHANGE_TABLE"] = {{
		["MBIN_FILE_SOURCE"] = FileSource1,
		["EXML_CHANGE_TABLE"] = {
			{
				["VALUE_CHANGE_TABLE"] = {
					{"AsteroidNoiseScale",180000},
					{"AsteroidDetailNoiseScale",140},
					{"AsteroidNoiseMinCutoff",-0.3},
					{"AsteroidNoiseMaxCutoff",0.3},
					{"AsteroidRotateMin",-0.2},
					{"AsteroidRotateMax",0.2},
					{"AsteroidSomeRaresOdds",0.52},
					{"AsteroidFadeRangeMin",800},
					{"AsteroidFadeRangeMax",23000},
					{"AsteroidSpacing",1800},
					{"RareAsteroidScale",0.55},
					{"RareAsteroidMinResources",8},
					{"RareAsteroidMaxResources",20},
					{"CommonAsteroidScale",0.2},
					{"CommonAsteroidMinResources",7},
					{"CommonAsteroidMaxResources",16},
					{"CommonAsteroidResourceFuelMultiplier",3},
					{"CommonAsteroidResourceFuelOdds",0.75},
					{"RareAsteroidResourceFuelOdds",0.25},
					{"CommonAsteroidHealth",160},
					{"LargeAsteroidSpacing",16000},
					{"LargeAsteroidFadeTime",1.2},
					{"LargeAsteroidFadeRangeMin",22000},
					{"LargeAsteroidFadeRangeMax",22000},
					{"RingAsteroidScale",0.016},
					{"RingAsteroidSpacing",125},
					{"RingAsteroidFadeRangeMin",600},
					{"RingAsteroidFadeRangeMax",6000},
					{"AsteroidMaxNumGenerates",120000},
					{"AsteroidMaxNumGeneratesPulseJump",10000},
					{"AsteroidSpaceStationAvoidRadius",1500},
					{"AsteroidAnomalyAvoidRadius",1500},
					{"AsteroidWarpInAreaAvoidRadius",1500},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"AsteroidScaleVariance"},
				["VALUE_CHANGE_TABLE"] = {
					{"x",0.85},
					{"y",1.15},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"AsteroidNoiseRange"},
				["VALUE_CHANGE_TABLE"] = {
					{"x",0.499},
					{"y",0.501},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"LargeAsteroidNoiseRange"},
				["VALUE_CHANGE_TABLE"] = {
					{"x",0.498},
					{"y",0.502},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeFewRares"},
				["VALUE_CHANGE_TABLE"] = {
					{"x",0.512},
					{"y",0.51},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeSomeRares"},
				["VALUE_CHANGE_TABLE"] = {
					{"x",0.4975},
					{"y",0.5025},
				}
			},
			{
				["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeLotsOfRares"},
				["VALUE_CHANGE_TABLE"] = {
					{"x",0.4975},
					{"y",0.5025},
				}
			},
		}
}}}}}