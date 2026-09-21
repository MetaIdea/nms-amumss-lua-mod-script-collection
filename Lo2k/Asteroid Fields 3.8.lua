NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Asteroid Fields 3.8.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["LUA_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "7.03",
["MOD_DESCRIPTION"]			= "This mod improves asteroids fields",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CT"] 	= 
			{ 
			--[[	{
					["MBIN_FS"] 	= "GCENVIRONMENTGLOBALS.GLOBAL.MBIN",
					["MXML_CT"] 	= 
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
					["MXML_CT"] = 
					{					
						{
							["VCT"] = 
							{
								--{"Sparse Asteroid Spread", 0},	-- original -7 deprecated in Cosmos
								{"Asteroid Space Station Avoid Radius", 2000},	-- original 5000
								{"Asteroid Anomaly Avoid Radius", 2000},		-- original 5000
								--{"AsteroidWarpInAreaAvoidRadius", 5000},	-- original 5000, 4000 is not enough
								--{"Asteroids Enabled", "true"},

							},  			
						},
						{
							["REPLACE_TYPE"] = "ALL", 
							["PKW"] = {"Scale Variance"},
							["VCT"] = {{"X", 0.6}},  -- original 1.6		
						},
						{
							["PKW"] = {"Common Asteroid Data"},
							["VCT"] = 
							{
								--{"ClusterSpacing",	1100},  -- original 645, pushed to 3225 in Cosmos
								{"Noise Scale",	60000},   -- original 50000
							},
						},
						{
							["PKW"] = {"Common Asteroid Data", "Noise Range"},
							["VCT"] = 
							{
								{"X",	0.82},  -- original 0.78 (or -1 since cosmos)
								{"Y",	0.83},   -- original 0.92 (or -1 since cosmos)
							},
						},
						{
							["PKW"] = {"Fuel Asteroid Data"},
							["VCT"] = 
							{
								--{"ClusterSpacing",	1100},  -- original 4515 in Cosmos
								{"Noise Scale",	60000},   -- original 50000
							},
						},
						{
							["PKW"] = {"Fuel Asteroid Data", "Noise Range"},
							["VCT"] = 
							{
								{"X",	0.82},  -- original 0.78 (or -1 since cosmos)
								{"Y",	0.83},   -- original 0.92 (or -1 since cosmos)
							},
						},
						{
							["ITF"] = "FORCE",
							["PKW"] = {"Large Asteroid Data"},
							["VCT"] = 
							{
								{"Scale",	2.5},  -- original 2
								{"ClusterSpacing",	4000},  -- original 9000 --2000 or less makes large asteroids poping at last minute
								--{"FadeRange",	9000},  -- original 9000
								{"Noise Scale",	60000},   -- original 120000
								
							},
						},
						{
							["PKW"] = {"Large Asteroid Data", "Noise Range"},
							["VCT"] = 
							{
								{"X",	0.82},  -- original 0.3
								{"Y",	0.83},  -- original 0.6
							},
						},
						{
							["ITF"] = "FORCE",
							["PKW"] = {"Rare Asteroid Data"},
							["VCT"] = 
							{
								{"Scale",	1.4},  -- original 1.6
								--{"ClusterSpacing",	4000},  -- original 4250 in Cosmos
								--{"FadeRange",	9000},  -- original 9000
								{"Noise Scale",	60000},   -- original 50000
								
							},
						},
						{
							["PKW"] = {"Rare Asteroid Data", "Noise Range"},
							["VCT"] = 
							{
								{"X",	0.83},  -- original 0.86
								{"Y",	0.84},  -- original 0.90
							},
						},
						--[[
						{
							["PKW"]  = {"RareAsteroidNoiseRangeSomeRares"},
							["VCT"] 	= 
							{
								{"X",	SomeMin},  	-- original 0.518
								{"Y",	SomeMax},	-- original 0.52
							},
						},
						{
							["PKW"]  = {"RareAsteroidNoiseRangeLotsOfRares"},
							["VCT"] 	= 
							{
								{"X",	LotsMin},	-- original 0.516
								{"Y",	LotsMax},	-- original 0.52
							},
						},				
						]]--		
					}
				}
			}
		}
	}	
}