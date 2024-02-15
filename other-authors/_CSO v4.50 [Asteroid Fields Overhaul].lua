-- Clean Space Origins [Asteroid Fields Overhaul] --


-- You can edit modified values here :
--------------------------------------
--------------------------------------

Resources_Mult = 3				-- Vanilla 1 // Mod Default 3 // Prefer integer here, multiplies the resources gathered from asteroids by this amount
Anomaly_Detectors_Mult = 3		-- Vanilla 1 // Mod Default 3 // Multiplies the chance to get anomaly detectors from rare asteroids by this amount

--------------------------------------
--------------------------------------


NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"]	= "_CSO v4.50 [Asteroid Fields Overhaul].pak", 
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "3.02",	-- NMS version when first scripted
	["GLOBAL_INTEGER_TO_FLOAT"] = "FORCE",
	["MOD_DESCRIPTION"]	= "Asteroid Repartition Overhaul",
	["MODIFICATIONS"]	= 
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{

						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PlanetInvalidAsteroidZone", "30000"},	-- Vanilla 10000 // Mod default 30000 // No asteroid zone around planets
							},
						},
						
						
						------------- Common -------------
						{
							["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Scale", 0.56},			--Vanilla 0.28 // x2 // scales the size of asteroids
								{"Spacing",3870},			--Vanilla 645 // x6 // distance between asteroids in fields, also affect the drawing distance of asteroids
								{"FadeRange",54000},		--Vanilla 9000 // x6 // asteroids start to fade in/out at this range (?)
								{"NoiseScale",300000},		--Vanilla 50000 // x6 // The bigger it is, the greater the distance between fields is, but the closer asteroids are inside fields
							},
						},
						--[[
						{
							["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData", "NoiseRange"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x",0.78},		-- Vanilla 0.78 // 
								{"y",0.92},		-- Vanilla 0.92 //
							},
						},
						]]--
						------------- Ring -------------
						{
							["PRECEDING_KEY_WORDS"] = {"RingAsteroidData"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Scale", 0.3},				--Vanilla 0.15 // x2 
								{"Spacing",600},			--Vanilla 200 // x3
								{"FadeRange",9000},			--Vanilla 3000 // x3
								{"NoiseScale",360000},	--Vanilla 120000 //x3
							},
						},
						--[[
						{
							["PRECEDING_KEY_WORDS"] = {"RingAsteroidData", "NoiseRange"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x",-1},		-- Vanilla -1 // 
								{"y",-1},		-- Vanilla -1 //
							},
						},
						]]--
						------------- Large -------------
						{
							["PRECEDING_KEY_WORDS"] = {"LargeAsteroidData"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Scale", 4},				--Vanilla 2 // x2 
								{"Spacing",27000},			--Vanilla 9000 // x3
								{"FadeRange",27000},		--Vanilla 9000 // x3
								{"NoiseScale",360000},		--Vanilla 120000 // x3
							},
						},
						--[[
						{
							["PRECEDING_KEY_WORDS"] = {"LargeAsteroidData", "NoiseRange"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x",0.3},		-- Vanilla 0.3 // 
								{"y",0.6},		-- Vanilla 0.6 //
							},
						},
						]]--
						------------- Rare -------------
						{
							["PRECEDING_KEY_WORDS"] = {"RareAsteroidData"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"Scale", 3.2},				--Vanilla 1.6 // x2 
								{"Spacing",2550},			--Vanilla 850 // x3
								{"FadeRange",27000},		--Vanilla 9000 // x3
								{"NoiseScale",150000},		--Vanilla 50000 // x3
							},
						},
						--[[
						{
							["PRECEDING_KEY_WORDS"] = {"RareAsteroidData", "NoiseRange"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x",0.86},		-- Vanilla 0.86 // 
								{"y",0.9},		-- Vanilla 0.9 //
							},
						},
						]]--
						
						
						-- Asteroids resources
						{
							["MATH_OPERATION"] = "*",
							["VALUE_CHANGE_TABLE"] = 
							{		
								{"RareAsteroidMinResources", Resources_Mult},	-- Vanilla 5 // Mod default: x3 = 15
								{"RareAsteroidMaxResources", Resources_Mult},	-- Vanilla 10 // Mod default: x3 = 30

								{"CommonAsteroidMinResources", Resources_Mult},	-- Vanilla 3 // Mod default: x3 = 9 // Tritium = CommonAsteroidMinResources * 5 (CommonAsteroidResourceFuelMultiplier) = 15 (mod default 45)
								{"CommonAsteroidMaxResources", Resources_Mult},	-- Vanilla 5 // Mod default: x3 = 15 // Tritium = CommonAsteroidMaxResources * 5 (CommonAsteroidResourceFuelMultiplier) = 25 (mod default 75)

								{"RareAsteroidDataProductOdds", Anomaly_Detectors_Mult},	-- Vanilla 0.005 // Mod default: x3 = 0.015
							},
						},


					},
				},
			},
		},
	},	
}