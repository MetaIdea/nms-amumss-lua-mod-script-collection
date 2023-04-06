NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Asteroid Fields 3.2.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "4.20.1",
["MOD_DESCRIPTION"]			= "This mod improves asteroids fields",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CT"] 	= 
			{ 
			--[[	{
					["MBIN_FS"] 	= "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["EXML_CT"] 	= 
					{
						{
							["REPLACE_TYPE"] = "ALL", 
							["VCT"] 	= 
							{
								{"AsteroidCountMultiplier", "3"},  -- original 1, 2, 3, 4 (low, med, high, ultra)
								{"MaxAsteroidGenerationPerFrame", "5000"},  -- original 5k, 5k, 7.5k, 10k (low, med, high, ultra)
								{"MaxAsteroidGenerationPerFramePulseJump", "5000"},  -- original 1k, 1k, 2k, 4k (low, med, high, ultra)
							},
						},					
					}
				}, ]]--
				{
					["MBIN_FS"] = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN",
					["EXML_CT"] = 
					{					
						{
							["VCT"] = 
							{
								{"SparseAsteroidSpread", 0},	-- original -7
								{"AsteroidSpaceStationAvoidRadius", 2000},	-- original 5000
								{"AsteroidAnomalyAvoidRadius", 2000},		-- original 5000
								{"AsteroidWarpInAreaAvoidRadius", 5000},	-- original 5000, 4000 is not enough
							},  			
						},
						{
							["REPLACE_TYPE"] = "ALL", 
							["PKW"] = {"ScaleVariance"},
							["VCT"] = {{"x", 0.6}},  -- original 0.25		
						},
						{
							["PKW"] = {"CommonAsteroidData"},
							["VCT"] = 
							{
								{"Spacing",	1100},  -- original 645
								{"NoiseScale",	60000},   -- original 50000
							},
						},
						{
							["PKW"] = {"CommonAsteroidData", "NoiseRange"},
							["VCT"] = 
							{
								{"x",	0.82},  -- original 0.78
								{"y",	0.88},   -- original 0.92
							},
						},
						{
							["ITF"] = "FORCE",
							["PKW"] = {"LargeAsteroidData"},
							["VCT"] = 
							{
								{"Scale",	2.5},  -- original 2
								{"Spacing",	4000},  -- original 9000 --2000 or less makes large asteroids poping at last minute
								{"FadeRange",	9000},  -- original 9000
								{"NoiseScale",	60000},   -- original 120000
								
							},
						},
						{
							["PKW"] = {"LargeAsteroidData", "NoiseRange"},
							["VCT"] = 
							{
								{"x",	0.83},  -- original 0.3
								{"y",	0.87},  -- original 0.6
							},
						},
						--[[
						{
							["PKW"] = {"RareAsteroidData", "NoiseRange"},
							["VCT"] = 
							{
								{"x",	FewMin},	-- original 0.83
								{"y",	FewMax},		-- original 0.87
							},
						},
						{
							["PKW"]  = {"RareAsteroidNoiseRangeSomeRares"},
							["VCT"] 	= 
							{
								{"x",	SomeMin},  	-- original 0.518
								{"y",	SomeMax},	-- original 0.52
							},
						},
						{
							["PKW"]  = {"RareAsteroidNoiseRangeLotsOfRares"},
							["VCT"] 	= 
							{
								{"x",	LotsMin},	-- original 0.516
								{"y",	LotsMax},	-- original 0.52
							},
						},				
						]]--		
					}
				}
			}
		}
	}	
}