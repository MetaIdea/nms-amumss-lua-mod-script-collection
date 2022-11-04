
-- You can edit modified values here :
--------------------------------------
--------------------------------------

--Resources_Mult = 10				-- Vanilla 1 // Mod Default 3 // Prefer integer here, multiplies the resources gathered from asteroids by this amount
--Anomaly_Detectors_Mult = 1		-- Vanilla 1 // Mod Default 3 // Multiplies the chance to get anomaly detectors from rare asteroids by this amount

--------------------------------------
--------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "X-No Speed Lines cleaner Space.pak", 
	["MOD_AUTHOR"]		= "Personal",
	["NMS_VERSION"]		= "3.99",	-- NMS version when first scripted
	["MOD_DESCRIPTION"]	= "No Speed Lines cleaner Space",
	["MODIFICATIONS"]	=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\ANIMATEDDUST\ANIMATEDDUST.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- no more space dust
							["SPECIAL_KEY_WORDS"] = {"Name", "AnimatedSmokeMat"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Class", ""},
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = "MODELS\EFFECTS\SPACE\PLASMA\PLASMA.MATERIAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- no more pulsating plasma in space
							["SPECIAL_KEY_WORDS"] = {"Name", "AnimatedSmokeMat"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Class", ""},
							},

						},
					},
				},
				{
					["MBIN_FILE_SOURCE"] = 
					{
						"MODELS\EFFECTS\LINES\SPEEDLINEMATERIAL.MATERIAL.MBIN",
						"MODELS\EFFECTS\LINES\SPEEDLINE2MATERIAL.MATERIAL.MBIN",
						"MODELS\EFFECTS\LINES\SPEEDLINE3MATERIAL.MATERIAL.MBIN",
					},
					["EXML_CHANGE_TABLE"] = 
					{
						{
							-- no more speed lines
							["SPECIAL_KEY_WORDS"] = {"Name", "Line"},
							["REPLACE_TYPE"] = "ALL",
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Class", ""},
							},

						},
					},
				},				
			},	
		}
	}	
}
--{
					-- ["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					-- ["EXML_CHANGE_TABLE"] = 
					-- {
                    	--Ships Spawn
						-- {
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"CivilianTraderSpaceshipsCacheCount", "10"},--Default 20 			
							-- },
						-- },
						-- {
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipSpawnFreqMultipliers"},
							-- ["REPLACE_TYPE"]		= "ALL",
							-- ["VALUE_CHANGE_TABLE"] 	= 
							-- {
								-- {"0.5", "5.0"},--Default 0.5 			
								-- --{"2", "5"},--Default 2 			
								-- {"5",   "0.5"},--Default 5 			
							-- },
						-- },						
						-- {--Gek
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings", "CivilianClassWeightings"},
							-- ["REPLACE_TYPE"] = "ALL",
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"Dropship",    "100"},	--Default 100
								-- {"Fighter",     "100"},	--Default 50
								-- {"Scientific",  "100"},	--Default 50
								-- {"Shuttle",     "0"},	--Default 100
								-- {"Royal",       "2"},	--Default 1
								-- --{"Alien",     "0"},	--Default 0
							-- },
						-- },
						-- {--Vykeen
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings", "CivilianClassWeightings", "CivilianClassWeightings"},                            
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"Dropship",    "100"},	--Default 50
								-- {"Fighter",     "100"},	--Default 100
								-- {"Scientific",  "100"},	--Default 50
								-- {"Shuttle",     "0"},	--Default 100
								-- {"Royal",       "2"},	--Default 1
								-- --{"Alien",     "0"},	--Default 0
							-- },
						-- },
						-- {--Korvax
							-- ["PRECEDING_KEY_WORDS"] = {"SpaceshipWeightings", "CivilianClassWeightings", "CivilianClassWeightings", "CivilianClassWeightings"},
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {
								-- {"Dropship",    "100"},	--Default 50
								-- {"Fighter",     "100"},	--Default 50
								-- {"Scientific",  "100"},	--Default 100
								-- {"Shuttle",     "0"},	--Default 100
								-- {"Royal",       "2"},	--Default 1
								-- --{"Alien",     "0"},	--Default 0
							-- },
						-- },						
						
						--Asteroids resources
						-- {
							-- ["MATH_OPERATION"] = "*",
							-- ["VALUE_CHANGE_TABLE"] = 
							-- {		
								-- {"RareAsteroidMinResources", Resources_Mult},	-- Vanilla 5 // Mod default: x3 = 15
								-- {"RareAsteroidMaxResources", Resources_Mult},	-- Vanilla 10 // Mod default: x3 = 30

								-- {"CommonAsteroidMinResources", Resources_Mult},	-- Vanilla 3 // Mod default: x3 = 9 // Tritium = CommonAsteroidMinResources * 5 (CommonAsteroidResourceFuelMultiplier) = 15 (mod default 45)
								-- {"CommonAsteroidMaxResources", Resources_Mult},	-- Vanilla 5 // Mod default: x3 = 15 // Tritium = CommonAsteroidMaxResources * 5 (CommonAsteroidResourceFuelMultiplier) = 25 (mod default 75)

								-- --{"RareAsteroidDataProductOdds", Anomaly_Detectors_Mult},	-- Vanilla 0.005 // Mod default: x3 = 0.015
							-- },
						-- },

					-- }
				-- },