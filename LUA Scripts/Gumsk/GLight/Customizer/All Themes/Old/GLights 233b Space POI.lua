LightFOV = 360
LightFalloff = "linear"					--"quadratic" ; use linear if your lights are dim, quadratic if they are really bright
LightMultiplier = 0.5						--1
LightRedOf1 = 1.0
LightGreenOf1 = 1.0
LightBlueOf1 = 1.0

NMS_MOD_DEFINITION_CONTAINER = {
["MOD_FILENAME"]		= "GLight 234a Space POI.pak",
["MOD_DESCRIPTION"]		= "Space POI Light modifications",
["MOD_AUTHOR"]			= "Gumsk",
["NMS_VERSION"]			= "2.3.4",
["MODIFICATIONS"]		= {{ ["MBIN_CHANGE_TABLE"] = {{ ["MBIN_FILE_SOURCE"] = {
		
--Space POI
		"MODELS\SPACE\POI\8PRONGEDSPINNER.SCENE.MBIN",
		"MODELS\SPACE\POI\ASTEROID_BEACON.SCENE.MBIN",
		"MODELS\SPACE\POI\ATLASBEACON.SCENE.MBIN",
		"MODELS\SPACE\POI\ATLAS_BEACON.SCENE.MBIN",
		"MODELS\SPACE\POI\CHARGEBAR.SCENE.MBIN",
		"MODELS\SPACE\POI\CRYSTAL.SCENE.MBIN",
		"MODELS\SPACE\POI\CUBE_POI.SCENE.MBIN",
		"MODELS\SPACE\POI\EYE.SCENE.MBIN",
		"MODELS\SPACE\POI\GATE_POI.SCENE.MBIN",
		"MODELS\SPACE\POI\GEK_HEAD.SCENE.MBIN",
		"MODELS\SPACE\POI\PILLARPOI.SCENE.MBIN",
		"MODELS\SPACE\POI\SKULL.SCENE.MBIN",
		"MODELS\SPACE\POI\SPACECLOCK.SCENE.MBIN",
		"MODELS\SPACE\POI\SPACEEGG.SCENE.MBIN",
		"MODELS\SPACE\POI\SPACEGRABBY.SCENE.MBIN",
		"MODELS\SPACE\POI\SPACEGYROSCOPE.SCENE.MBIN",
		"MODELS\SPACE\POI\SPACE_PRISON.SCENE.MBIN"
		},
		
["EXML_CHANGE_TABLE"] = {
	-- {["SPECIAL_KEY_WORDS"]		= {"Name","FOV"},
		-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightFOV}}},
	{["SPECIAL_KEY_WORDS"] 		= {"Name","FALLOFF"},
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"Value", LightFalloff}}},
	{["SPECIAL_KEY_WORDS"] 		= {"Name","INTENSITY","Value","IGNORE"},
		["MATH_OPERATION"]		= "*",
		["REPLACE_TYPE"] 		= "ALL",
		["VALUE_CHANGE_TABLE"]	= {
			{"IGNORE", LightMultiplier}}},
	-- {["SPECIAL_KEY_WORDS"] = {"Name","COL_R"},
		-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightRedOf1}}},
	-- {["SPECIAL_KEY_WORDS"] = {"Name","COL_G"},
		-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightGreenOf1}}},
	-- {["SPECIAL_KEY_WORDS"] = {"Name","COL_B"},	
	-- ["REPLACE_TYPE"] 		= "ALL",
		-- ["VALUE_CHANGE_TABLE"]	= {
			-- {"Value", LightBlueOf1}}}
}}}}}}