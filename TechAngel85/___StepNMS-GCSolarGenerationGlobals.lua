Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various settings dealing with Space."
FileSource01 = "GCSOLARGENERATIONGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
--## Step ##
PlanetInvalidAsteroidZone = 30000	-- No asteroid zone around planets | vanilla=10000 // CSO=30000 | 39

CommonAsteroidSpacing = 1500 		-- Distance between normal asteroids // affects the drawing distance of asteroids too | vanilla=1000 // CSO=6000 | 51
CommonAsteroidFadeRange = 16000		-- The max range that normal asteroids will end fading out; beyond here there are no asteroids displayed | vanilla=2000 // CSO=12000 | 56
RingAsteroidSpacing = 1000			-- Distance between ring asteroids | vanilla=200 // CSO=1800 | 66
RingAsteroidFadeRange = 12000		--  | vanilla=3000 // CSO=12000 | 71
LargeAsteroidFadeRange = 20000		--  | vanilla=4000 // CSO=16000 | 86
RareAsteroidSpacing = 1200			-- Distance between rare asteroids | vanilla=850 | 96
RareAsteroidFadeRange = 14000		--  | vanilla=9000 | 101


--## Clean Space Origins ##
Resources_Mult = 3					-- Prefer integer here, multiplies the resources gathered from asteroids by this amount | 1 | 
Anomaly_Detectors_Mult = 3			-- Multiplies the chance to get anomaly detectors from rare asteroids by this amount | 1 | 


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
					["VALUE_CHANGE_TABLE"] = {
--## Step ##
-- Asteroids repartition and draw distance
						{"PlanetInvalidAsteroidZone", PlanetInvalidAsteroidZone}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"CommonAsteroidData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Spacing", CommonAsteroidSpacing}, 
						{"FadeRange", CommonAsteroidFadeRange}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RingAsteroidData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Spacing", RingAsteroidSpacing}, 
						{"FadeRange", RingAsteroidFadeRange}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"LargeAsteroidData",},
					["VALUE_CHANGE_TABLE"] = {
						{"FadeRange", LargeAsteroidFadeRange}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidData",},
					["VALUE_CHANGE_TABLE"] = {
						{"Spacing", RareAsteroidSpacing}, 
						{"FadeRange", RareAsteroidFadeRange}, 
					}
				},
--
--##### Everything after here is from Clean Space Origins mod #####
--
-- Asteroid fields shape
--				{["PRECEDING_KEY_WORDS"] = {"AsteroidNoiseRange",}, 
--					["VALUE_CHANGE_TABLE"] = {
--						{"x", "0.485"}, {"y", "0.515"}, 
--					}
--				},
--				{["PRECEDING_KEY_WORDS"] = {"LargeAsteroidNoiseRange",}, 
--					["VALUE_CHANGE_TABLE"] = {
--						{"x", "0.47"}, {"y", "0.53"}, 
--					}
--				},
--				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeFewRares",}, 
--					["VALUE_CHANGE_TABLE"] = {
--						{"x", "0.4992"}, {"y", "0.5008"}, 
--					}
--				},
--				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeSomeRares",}, 
--					["VALUE_CHANGE_TABLE"] = {
--						{"x", "0.4985"}, {"y", "0.5015"}, 
--					}
--				},
--				{["PRECEDING_KEY_WORDS"] = {"RareAsteroidNoiseRangeLotsOfRares",}, 
--					["VALUE_CHANGE_TABLE"] = {
--						{"x", "0.493"}, {"y", "0.507"}, 
--					}
--				},
-- Asteroids resources
				{["PRECEDING_KEY_WORDS"] = "", 
					["MATH_OPERATION"] = "*",
					["VALUE_CHANGE_TABLE"] = {
						{"RareAsteroidMinResources", Resources_Mult},				--  | Vanilla=5 // Mod=15 |
						{"RareAsteroidMaxResources", Resources_Mult},				--  | Vanilla=10 // Mod=30 |
						{"CommonAsteroidMinResources", Resources_Mult},				--  | Vanilla=3 // Mod=9 // Tritium = CommonAsteroidMinResources * 5 (CommonAsteroidResourceFuelMultiplier) = 15 (mod default 45) | 
						{"CommonAsteroidMaxResources", Resources_Mult},				--  | Vanilla=5 // Mod=15 // Tritium = CommonAsteroidMaxResources * 5 (CommonAsteroidResourceFuelMultiplier) = 25 (mod default 75) | 
						{"RareAsteroidDataProductOdds", Anomaly_Detectors_Mult},	--  | Vanilla=0.005 // Mod=0.015 | 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE