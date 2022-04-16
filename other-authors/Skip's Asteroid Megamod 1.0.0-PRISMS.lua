NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Skip's Asteroid Megamod 1.0.0-PRISMS.pak", 
["MOD_AUTHOR"]				= "Skip",
["NMS_VERSION"]				= "3.53",
["MOD_DESCRIPTION"]			= "This mod vastly improves asteroid draw distance, spreads them out over larger distances, overhauls their resource drops to be more interesting and varied, and lets them spawn closer to space stations.",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= {"GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"},
					["EXML_CHANGE_TABLE"] 	= 																-- ====|///\\\|====		NOISE RANGES (HELPS FINE-TUNE DISTRIBUTION)		====|///\\\|====
					{
						{
							["PRECEDING_KEY_WORDS"]  = {"AsteroidNoiseRange"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0.1"},																-- Default: 0.4
								{"y", "0.2"},																-- Default: 0.55
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"LargeAsteroidNoiseRange"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0.1"},																-- Default: 0.3
								{"y", "0.3"},																-- Default: 0.6
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"RareAsteroidNoiseRangeFewRares"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0.15"},															-- Default: 0.512
								{"y", "0.25"},															-- Default: 0.52
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"RareAsteroidNoiseRangeSomeRares"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0.10"},															-- Default: 0.505
								{"y", "0.25"},															-- Default: 0.52
							},
						},
						{
							["PRECEDING_KEY_WORDS"]  = {"RareAsteroidNoiseRangeLotsOfRares"},
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"x", "0.05"},															-- Default: 0.45
								{"y", "0.25"},															-- Default: 0.52
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 														-- ====|///\\\|====						 FADE RANGES					====|///\\\|====
							{
								{"AsteroidFadeRangeMin", "0"},											-- Default: 1000
								{"AsteroidFadeRangeMax", "5000"},										-- Default: 2000
								{"LargeAsteroidFadeRangeMin", "0"},										-- Default: 4000
								{"LargeAsteroidFadeRangeMax", "20000"},									-- Default: 4000
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 														-- ====|///\\\|====						   SPACING						====|///\\\|====
							{
								{"AsteroidSpacing", "10000"},												-- Default: 1000
								{"LargeAsteroidSpacing", "60000"},											-- Default: 3000
								{"AsteroidMaxNumGenerates", "3500"},										-- Default: 50000
							},
						},	
						{
							["VALUE_CHANGE_TABLE"] 	= 														-- ====|///\\\|====						 SAFEZONES						====|///\\\|====
							{
								{"AsteroidSpaceStationAvoidRadius", "1000"},								-- Default: 5000
								{"AsteroidAnomalyAvoidRadius", "10000"},									-- Default: 5000
								{"AsteroidWarpInAreaAvoidRadius", "1000"},									-- Default: 5000 
								{"PlanetInvalidAsteroidZone","50000"},										-- Default: 10000	
							},
						},	
						{
							["VALUE_CHANGE_TABLE"] 	= 														-- ====|///\\\|====					   HEALTH & SIZE					====|///\\\|====
							{
								{"CommonAsteroidHealth", "2000"},											-- Default: 400
								{"RareAsteroidHealth", "5000"},												-- Default: 1000
								{"CommonAsteroidScale", "0.4"},												-- Default: 0.3
								{"RareAsteroidScale", "2.0"},												-- Default: 1.6
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 														-- ====|///\\\|====					 	LOOT TABLES						====|///\\\|====
							{
								{"CommonAsteroidResourceMain", "SAND1"},									-- Default: ASTEROID1
								{"CommonAsteroidResourceSecondary", "ROCKETSUB"},							-- Default: ASTEROID2
								{"CommonAsteroidResourceFuel", "LAND1"},									-- Default: ROCKETSUB
								{"CommonAsteroidResourceProduct", "GEODE_LAND"},							-- Default: GEODE_ASTEROID
								{"RareAsteroidResource", "GEODE_SPACE"},									-- Default: ASTEROID3
								{"RareAsteroidResourceFuel", "GEODE_CRYSTAL"},								-- Default: GEODE_SPACE
								{"RareAsteroidDataProduct", "GEODE_RARE"},									-- Default: POI_LOCATOR
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 														-- ====|///\\\|====					CHANCES & MULTIPLIERS				====|///\\\|====
							{
								{"CommonAsteroidResourceFuelOdds", "0.2"},									-- Default: 0.5
								{"CommonAsteroidResourceFuelMultiplier", "3"},								-- Default: 5
								{"CommonAsteroidResourceProductOdds", "0.1"},								-- Default: 0.2
								{"CommonAsteroidResourceSecondaryOdds", "0.5"},								-- Default: 0.2
								{"RareAsteroidResourceFuelOdds", "0.2"},									-- Default: 0.2
								{"RareAsteroidDataProductOdds", ".05"},										-- Default: 0.005
							},
						},
						{
							["VALUE_CHANGE_TABLE"] 	= 														-- ====|///\\\|====						DROP RANGES						====|///\\\|====
							{
								{"CommonAsteroidMinResources", "20"},										-- Default: 3
								{"CommonAsteroidMaxResources", "75"},										-- Default: 5
								{"RareAsteroidMinResources", "1"},											-- Default: 5
								{"RareAsteroidMaxResources", "3"},											-- Default: 10
							},
						},
					}
				}
			}
		}
	}	
}