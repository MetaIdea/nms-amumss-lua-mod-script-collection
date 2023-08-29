Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various gameplay elements."
FileSource01 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
-- Miscellaneous
SurveyScanMinSpeed = 2				--  | 0.75 | 4647
SurveyScanMaxSpeed = 2				--  | 0.75 | 4648
SurveyMaxDistance = 700				--  | 400 | 4654
TerrainResourceScanRange = 1800		-- Range to scan for resources | 1200 | 4770
TerrainResourceCompassRange = 180	--  | 120 | 4771
WarpsBetweenBattles = 10			-- Number of warps since last space battle before next will occur | 5 | 5003
HoursBetweenBattles = 6				-- Number of hours since last space battle before next will occur | 3 | 5004
NewDiscoveryDisplayTime = 3			-- Time the new discovery message will display on the screen | 2 | 5033
BuildingBeamDistance = 1600			-- Distance from player the beam for building will reach | 800 | 5204
ResourceCommonReducer = 10			--  | 5 |  5215
ShipInteractRadius = 500			-- Distance the player can be and still interact with ship | 50 | 5228

-- Refiners
RefinerProductsMadeInTime = 20			-- Speed at which products are refined | 2 | 4693
RefinerSubsMadeInTime = 2500			--  | 250 | 4694
RefinerProductsMadeInTimeSurvival = 10	-- Speed at which products are refined for Survival Mode | 1 | 4695
RefinerSubsMadeInTimeSurvival = 1000	--  | 100 | 4696

-- Scanners
BinocTimeBeforeScan = 0.25			-- Delay time before a scan starts | 0.5 | 4775
BinocMinScanTime = 1.1				-- Minimum time to scan | 2.2 | 4776
BinocScanTime = 1.1					-- Time it takes to scan | 2.2 | 4777
CreatureMinScanTime = 0.4			-- Minimum time to scan a creature | 0.8 | 5031

-- Binocular Zooms
ZoomNoneMaxDistance = 15	-- Max distance able to scan without zoom | 10 | 5334
ZoomFarMaxDistance = 33		-- Max distance able to scan | 25 | 5343
ZoomMidFOV = 50				-- FOV of mid zoom | 40 | 5350
ZoomMidMinDistance = 2		-- Minimum distance able to scan | 5 | 5351
ZoomMidMaxDistance = 100	-- Max distance able to scan | 70 | 5352
ZoomCloseFOV = 30			-- FOV of mid zoom | 20 | 5359
ZoomCloseMinDistance = 5	-- Minimum distance able to scan | 20 | 5360
ZoomCloseMaxDistance = 750	-- Max distance able to scan | 500 | 5361

-- Torch/Flashlight
TorchFoV = 100				-- FOV/angle at which the torch/flashlight will illuminate | 120 | 6051
InteractionTorchFoV = 100	-- FOV/angle at which the torch/flashlight will illuminate using interaction | 120 | 6056
UndergroundTorchFoV = 90	-- FOV/angle at which the torch/flashlight will illuminate while underground | 70 | 6058
TorchOffsetY = 2			-- torch/flashlight Y offset from player | -0.5 | 6063
TorchOffsetZ = -1			-- torch/flashlight Z offset from player | -0.75 | 6064


NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 		= ModName..".pak",
["MOD_AUTHOR"]			= Author,
["MOD_DESCRIPTION"]		= ModDescription,
["MODIFICATIONS"] 		= 
	{{ ["MBIN_CHANGE_TABLE"] = 
		{{ ["MBIN_FILE_SOURCE"] = FileSource01,
			["EXML_CHANGE_TABLE"] = {
				{ 	["PRECEDING_KEY_WORDS"] = "",
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"SurveyScanMinSpeed", SurveyScanMinSpeed}, 
						{"SurveyScanMaxSpeed", SurveyScanMaxSpeed}, 
						{"SurveyMaxDistance", SurveyMaxDistance}, 
						{"RefinerProductsMadeInTime", RefinerProductsMadeInTime}, 
						{"RefinerSubsMadeInTime", RefinerSubsMadeInTime}, 
						{"RefinerProductsMadeInTimeSurvival", RefinerProductsMadeInTimeSurvival}, 
						{"RefinerSubsMadeInTimeSurvival", RefinerSubsMadeInTimeSurvival}, 
						{"TerrainResourceScanRange", TerrainResourceScanRange}, 
						{"TerrainResourceCompassRange", TerrainResourceCompassRange}, 
						{"BinocTimeBeforeScan", BinocTimeBeforeScan}, 
						{"BinocMinScanTime", BinocMinScanTime}, 
						{"BinocScanTime", BinocScanTime}, 
						{"WarpsBetweenBattles", WarpsBetweenBattles}, 
						{"HoursBetweenBattles", HoursBetweenBattles}, 
						{"CreatureMinScanTime", CreatureMinScanTime}, 
						{"NewDiscoveryDisplayTime", NewDiscoveryDisplayTime}, 
						{"BuildingBeamDistance", BuildingBeamDistance}, 
						{"ResourceCommonReducer", ResourceCommonReducer}, 
						{"ShipInteractRadius", ShipInteractRadius}, 
						{"TorchFoV", TorchFoV}, 
						{"InteractionTorchFoV", InteractionTorchFoV}, 
						{"UndergroundTorchFoV", UndergroundTorchFoV}, 
						{"TorchOffsetY", TorchOffsetY}, 
						{"TorchOffsetZ", TorchOffsetZ}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "None",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"MaxScanDistance", ZoomNoneMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Far",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"MaxScanDistance", ZoomFarMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Mid",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"FoV", ZoomMidFOV}, {"MinScanDistance", ZoomMidMinDistance}, {"MaxScanDistance", ZoomMidMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Close",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"FoV", ZoomCloseFOV}, {"MinScanDistance", ZoomCloseMinDistance}, {"MaxScanDistance", ZoomCloseMaxDistance}, 
					}
				},
			}
		}}
	}}
}
--NOTE: ANYTHING DOWN HERE IS IGNORED
--ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE