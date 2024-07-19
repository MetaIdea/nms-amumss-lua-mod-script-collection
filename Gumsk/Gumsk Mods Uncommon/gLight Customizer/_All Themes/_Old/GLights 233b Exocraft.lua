LightFOV = 360
LightFalloff = "linear"					--"quadratic" ; use linear if your lights are dim, quadratic if they are really bright
LightMultiplier = 0.5						--1
LightRedOf1 = 1.0
LightGreenOf1 = 1.0
LightBlueOf1 = 1.0

NMS_MOD_DEFINITION_CONTAINER = {
MOD_FILENAME		= "GLight 234a Exocraft.pak",
MOD_DESCRIPTION		= "Exocraft light modifications",
MOD_AUTHOR			= "Gumsk",
NMS_VERSION			= "2.3.4",
MODIFICATIONS		= {{ MBIN_CHANGE_TABLE = {{ MBIN_FILE_SOURCE = {

--Exocraft
		"MODELS\COMMON\VEHICLES\BIKE\BIKEPRES.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\BUGGY\BUGGYCOCKPIT.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\BUGGY\BUGGYPRES.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\HOVER\HOVERCRAFT.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\ROVER\ROVERCOCKPIT.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\ROVER\ROVERPRES.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\SUBMARINE\SUBMARINEPRES.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\SHARED\INTERIOR\COCKPITCHAIRSUB.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\WHEELEDBIKE\WHEELEDBIKECOCKPIT.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\WHEELEDBIKE\WHEELEDBIKEPRES.SCENE.MBIN",
		"MODELS\COMMON\VEHICLES\SHARED\INTERIOR\COCKPITCHAIR.SCENE.MBIN"
		},
		
EXML_CHANGE_TABLE = {
	-- {SPECIAL_KEY_WORDS		= {"Name","FOV"},
		-- REPLACE_TYPE 		= "ALL",
		-- VALUE_CHANGE_TABLE	= {
			-- {"Value", LightFOV}}},
	{SPECIAL_KEY_WORDS 		= {"Name","FALLOFF"},
		REPLACE_TYPE 		= "ALL",
		VALUE_CHANGE_TABLE	= {
			{"Value", LightFalloff}}},
	{SPECIAL_KEY_WORDS 		= {"Name","INTENSITY","Value","IGNORE"},
		["MATH_OPERATION"]		= "*",
		REPLACE_TYPE 		= "ALL",
		VALUE_CHANGE_TABLE	= {
			{"IGNORE", LightMultiplier}}},
	-- {SPECIAL_KEY_WORDS = {"Name","COL_R"},
		-- REPLACE_TYPE 		= "ALL",
		-- VALUE_CHANGE_TABLE	= {
			-- {"Value", LightRedOf1}}},
	-- {SPECIAL_KEY_WORDS = {"Name","COL_G"},
		-- REPLACE_TYPE 		= "ALL",
		-- VALUE_CHANGE_TABLE	= {
			-- {"Value", LightGreenOf1}}},
	-- {SPECIAL_KEY_WORDS = {"Name","COL_B"},	
	-- REPLACE_TYPE 		= "ALL",
		-- VALUE_CHANGE_TABLE	= {
			-- {"Value", LightBlueOf1}}}
}}}}}}