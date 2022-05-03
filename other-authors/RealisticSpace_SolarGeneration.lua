NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "___ChristianWidjaya_RealisticSpace_SolarGeneration_Addon.pak",
["MOD_DESCRIPTION"]		= "Realistic Space Combat, NPC and players deal same damage, integrated cruise mode",
["MOD_AUTHOR"]			= "ChristianWidjaya","1800PETMEDS",
["NMS_VERSION"]			= "261",
["MODIFICATIONS"]		= {{
["MBIN_CHANGE_TABLE"]	= {
	{["MBIN_FILE_SOURCE"]	= "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
	["EXML_CHANGE_TABLE"]	= {
		--[[	DEPRECATED	
		{ --traders distribution
		["PRECEDING_KEY_WORDS"] = {"Traders"},
		["VALUE_CHANGE_TABLE"] = {
			{"Dropship","100"},
			{"Fighter","30"},
			{"Scientific","0"},
			{"Shuttle","0"},
			{"Royal","10"},
			{"Alien","1"}}},
		{ --warrior distribution
		["PRECEDING_KEY_WORDS"] = {"Warriors"},
		["VALUE_CHANGE_TABLE"] = {
			{"Dropship","30"},
			{"Fighter","100"},
			{"Scientific","0"},
			{"Shuttle","0"},
			{"Royal","10"},
			{"Alien","1"}}},
		{ --explorers distribution
		["PRECEDING_KEY_WORDS"] = {"Explorers"},
		["VALUE_CHANGE_TABLE"] = {
			{"Dropship","0"},
			{"Fighter","0"},
			{"Scientific","100"},
			{"Shuttle","30"},
			{"Royal","10"},
			{"Alien","1"}}},
		{ --Diplomats distribution
		["PRECEDING_KEY_WORDS"] = {"Diplomats"},
		["VALUE_CHANGE_TABLE"] = {
			{"Dropship","0"},
			{"Fighter","0"},
			{"Scientific","0"},
			{"Shuttle","0"},
			{"Royal","100"},
			{"Alien","1"}}},
		--]]
		{ --Less Empty Worlds
		["PRECEDING_KEY_WORDS"] = {"EmptySystemProbability"},
			["VALUE_CHANGE_TABLE"] = {
				{"Yellow","0"},
				{"Green","0.1"},
				{"Blue","0.1"},
				{"Red","0.1"}}},
		{ --Changes asteroids
		["VALUE_CHANGE_TABLE"] = {
			{"AsteroidFadeRangeMin","4000"},
			{"AsteroidFadeRangeMax","5000"},
			{"LargeAsteroidFadeRangeMin","4000"},
			{"LargeAsteroidFadeRangeMax","5000"},
			{"RingAsteroidFadeRangeMin","4000"},
			{"RingAsteroidFadeRangeMax","5000"},
			{"RareAsteroidScale","1.25"},
			{"CommonAsteroidScale","0.2"},
			{"RareAsteroidDataProductOdds","0.01"},
			{"LargeAsteroidFadeTime","0"},
			{"LargeAsteroidMoveFadeTime","0"},
			{"AsteroidMaxNumGeneratesPulseJump","0"},
			{"CommonAsteroidHealth","15000"},
			{"RareAsteroidHealth","30000"},
			{"RareAsteroidMinResources","30"},
			{"RareAsteroidMaxResources","50"},
			{"CommonAsteroidMinResources","30"},
			{"CommonAsteroidMaxResources","50"},
			{"AsteroidMaxNumGenerates","3500"}}},
	}}
}}}}