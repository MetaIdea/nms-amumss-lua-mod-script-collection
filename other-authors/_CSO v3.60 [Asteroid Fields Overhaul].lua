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
	["MOD_FILENAME"]	= "_CSO v3.60 [Asteroid Fields Overhaul].pak", 
	["MOD_AUTHOR"]		= "NeptuneX3",
	["NMS_VERSION"]		= "3.02",	-- NMS version when first scripted
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

						-- Asteroid fields shape
						{
							["PRECEDING_KEY_WORDS"] = {"AsteroidNoiseRange"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0.485"},		-- Vanilla "0.4" // Mod default "0.485" // It seems the more x and y are close to 0.5 the more the shape is flat. If x = y = 0.5 -> no noise, no field at all (Perlin Noise ?)
								{"y", "0.515"},		-- Vanilla "0.55" // Mod default "0.515" /// Vanilla "thickness" = 0.15 // Mod "thickness" = 0.03
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"LargeAsteroidNoiseRange"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0.47"},		-- Vanilla "0.3" // Mod default "0.47"
								{"y", "0.53"},		-- Vanilla "0.6" // Mod default "0.53" /// Vanilla "thickness" = 0.3 // Mod "thickness" = 0.06
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeFewRares"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0.4992"},	-- Vanilla "0.512" // Mod default "0.4992"
								{"y", "0.5008"},	-- Vanilla "0.52" // Mod default "0.5008" /// Vanilla "thickness" = 0.008 // Mod "thickness" = 0.0016
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeSomeRares"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0.4985"},	-- Vanilla "0.505" // Mod default "0.4985"
								{"y", "0.5015"},	-- Vanilla "0.52" // Mod default "0.5015" /// Vanilla "thickness" = 0.015 // Mod "thickness" = 0.003
							},
						},
						{
							["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeLotsOfRares"},
							["VALUE_CHANGE_TABLE"] = 
							{
								{"x", "0.493"}, 	-- Vanilla "0.45" // Mod default "0.493"
								{"y", "0.507"},		-- Vanilla "0.52" // Mod default "0.507" /// Vanilla "thickness" = 0.07 // Mod "thickness" = 0.014
							},
						},
						
						-- Asteroids repartition and draw distance
						{
							["VALUE_CHANGE_TABLE"] = 
							{
								{"PlanetInvalidAsteroidZone", "30000"},	-- Vanilla 10000 // Mod default 30000 // No asteroid zone around planets
								{"AsteroidNoiseScale", "330000"},		-- Vanilla 30000 // Mod default 330000 // The bigger it is, the greater the distance between fields is, but the closer asteroids are inside fields
							
								{"AsteroidFadeRangeMin", "6000"},		-- Vanilla 1000 // Mod default 6000	// Weird: 0 here makes asteroids appear from greater distances (v3.02). Didn't make it in case it changes.
								{"AsteroidFadeRangeMax", "12000"},		-- Vanilla 2000 // Mod default 12000
								{"AsteroidSpacing",	"6000"},			-- Vanilla 1000 // Mod default 6000 // distance between asteroids, also affect the drawing distance of asteroids
								
								{"LargeAsteroidSpacing", "12000"},		-- vanilla 3000 // Mod default 12000
								{"LargeAsteroidFadeRangeMin", "12000"},	-- Vanilla 4000 // Mod default 12000 // 0 messes up things here...
								{"LargeAsteroidFadeRangeMax", "16000"},	-- Vanilla 4000 // Mod default 16000
								
								{"RingAsteroidSpacing","1800"},			-- Vanilla 300 // Mod default 1800
								{"RingAsteroidFadeRangeMin", "6000"}, 	-- Vanilla 500 // Mod default 6000
								{"RingAsteroidFadeRangeMax", "12000"},	-- Vanilla 2000 // Mod default 12000
							},
						},
						
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