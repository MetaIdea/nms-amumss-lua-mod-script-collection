Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with Space."
FileSource01 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"
-- Credits: some credits go to Clean Space Origin
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##
LocatorScatterChanceOfPirates = 10	--	| 20 | 38

PlanetInvalidAsteroidZone = 30000	-- No asteroid zone around planets | vanilla=10000 // CSO=30000 | 39
SparseAsteroidSpread = -21			-- How sparse the random floating asteroids not connected to a field are | -7 | 41		

CommonAsteroidScale = 0.54			-- Initial size of the asteroid | 0.28 | 45
CommonAsteroidSpacing = 4500 		-- Distance between normal asteroids // affects the drawing distance of asteroids too | vanilla=1000 // CSO=6000 | 51
CommonAsteroidFadeRange = 18000		-- The max range that normal asteroids will end fading out; beyond here there are no asteroids displayed | vanilla=2000 // CSO=12000 | 56
CommonAsteroidNoiseScale = 60000	-- The size of the asteroid field | 50000 | 57

RingAsteroidScale = 0.21			-- | 0.15 | 60
RingAsteroidSpacing = 1500			-- | vanilla=200 // CSO=1800 | 66
RingAsteroidFadeRange = 15000		-- | vanilla=3000 // CSO=12000 | 71
RingAsteroidNoiseScale = 33000		-- | 120000 | 72

LargeAsteroidSpacing = 7000			-- | 9000 | 81
LargeAsteroidFadeRange = 24000		-- | vanilla=4000 // CSO=16000 | 86
LargeAsteroidNoiseScale = 60000		-- | 120000 | 87

RareAsteroidSpacing = 3000			-- | vanilla=850 | 96
RareAsteroidFadeRange = 18000		-- | vanilla=9000 | 101
RareAsteroidNoiseScale = 39000		-- | 50000 | 

LargeAsteroidFadeTime = 0.3			-- The time it takes the large asteroids to fade | 0.1 | 143

Resources_Mult = 3					-- Multiplies the resources gathered from asteroids by this amount (integer preferred)
LowProbability_Mult  = 3			-- Multiplies settings with low odds/probability by this number (integer preferred)


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ ["PRECEDING_KEY_WORDS"] = "",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"LocatorScatterChanceOfPirates", LocatorScatterChanceOfPirates}, 
						{"PlanetInvalidAsteroidZone", PlanetInvalidAsteroidZone},
						{"SparseAsteroidSpread", SparseAsteroidSpread}, 
						{"LargeAsteroidFadeTime", LargeAsteroidFadeTime}, 
					}
				},
-- Individual (type) asteroid settings
				{["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Scale", CommonAsteroidScale}, 
						{"Spacing", CommonAsteroidSpacing}, 
						{"FadeRange", CommonAsteroidFadeRange}, 
						{"NoiseScale", CommonAsteroidNoiseScale}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RingAsteroidData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Scale", RingAsteroidScale}, 
						{"Spacing", RingAsteroidSpacing}, 
						{"FadeRange", RingAsteroidFadeRange}, 
						{"NoiseScale", RingAsteroidNoiseScale}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LargeAsteroidData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Spacing", LargeAsteroidSpacing}, 
						{"FadeRange", LargeAsteroidFadeRange}, 
						{"NoiseScale", LargeAsteroidNoiseScale}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidData",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"Spacing", RareAsteroidSpacing}, 
						{"FadeRange", RareAsteroidFadeRange}, 
						{"NoiseScale", RareAsteroidNoiseScale}, 
					}
				},
-- Asteroid fields shapes
				{["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData", "NoiseRange",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", "0.49"}, {"y", "0.60"},		-- | vanilla=0.78,0.92 CSO=0.485,0.515 | 53 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LargeAsteroidData", "NoiseRange",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", "0.546"}, {"y", "0.63"},		-- | vanilla=0.3,0.6 CSO=0.47,0.53 | 83
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidData", "NoiseRange",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", "0.531"}, {"y", "0.581"},		-- | vanilla=0.86,0.9 CSO=0.4992,0.5008 | 98
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeSomeRares",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", "0.54"}, {"y", "0.57"},		-- | vanilla=0.518,0.52 CSO=0.4985,0.5015 | 107
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeLotsOfRares",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"x", "0.555"}, {"y", "0.561"},		-- | vanilla=0.516,0.52 CSO=0.493,0.507 | 107
					}
				},
-- Asteroids resources multipliers
-- Tritium = CommonAsteroidMinResources * 5 (CommonAsteroidResourceFuelMultiplier) = 15 (Step = 45)
-- Tritium = CommonAsteroidMaxResources * 5 (CommonAsteroidResourceFuelMultiplier) = 25 (Step = 75)
				{["PRECEDING_KEY_WORDS"] = "", 
					["MATH_OPERATION"] = "*",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"RareAsteroidMinResources", Resources_Mult},					--  | Vanilla=5  Step=15 |
						{"RareAsteroidMaxResources", Resources_Mult},					--  | Vanilla=10  Step=30 |
						{"CommonAsteroidMinResources", Resources_Mult},					--  | Vanilla=3  Step=9 | 
						{"CommonAsteroidMaxResources", Resources_Mult},					--  | Vanilla=5  Step=15 | 
						{"RareAsteroidDataProductOdds", LowProbability_Mult},			--  | Vanilla=0.005  Step=0.015 | 
						{"AsteroidCreatureRichSystemProbability", LowProbability_Mult},	--  | Vanilla=0.005  Step=0.015 |
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE