Author = "Step Modifications"
ModName = "___StepNoMansSky"
ModDescription = "These changes alter various gameplay elements."
FileSource01 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
-- Miscellaneous
SurveyScanMinSpeed = 2				--  | 0.75 | 287
SurveyScanMaxSpeed = 2				--  | 0.75 | 288
SurveyMaxDistance = 700				--  | 400 | 294 
TerrainResourceScanRange = 1800		-- Range to scan for resources | 1200 | 425
TerrainResourceCompassRange = 180	--  | 120 | 426
WarpsBetweenBattles = 10			-- Number of warps since last space battle before next will occur | 5 | 658
HoursBetweenBattles = 6				-- Number of hours since last space battle before next will occur | 3 | 659
NewDiscoveryDisplayTime = 3			-- Time the new discovery message will display on the screen | 2 | 688
BuildingBeamDistance = 1600			-- Distance from player the beam for building will reach | 800 | 908
ResourceCommonReducer = 10			--  | 5 |  919
ShipInteractRadius = 500			-- Distance the player can be and still interact with ship | 50 | 932

-- Refiners
RefinerProductsMadeInTime = 20			-- Speed at which products are refined | 2 | 348
RefinerSubsMadeInTime = 2500			--  | 250 | 349
RefinerProductsMadeInTimeSurvival = 10	-- Speed at which products are refined for Survival Mode | 1 | 350
RefinerSubsMadeInTimeSurvival = 1000	--  | 100 | 351

-- Scanners
BinocTimeBeforeScan = 0.25			-- Delay time before a scan starts | 0.5 | 430
BinocMinScanTime = 1.3				-- Minimum time to scan | 3.9 | 431
BinocScanTime = 1.3					-- Time it takes to scan | 3.9 | 432
BinocCreatureScanTime = 1.3			-- Time it takes to scan creatures | 3.2 | 433
CreatureMinScanTime = 0.4			-- Minimum time to scan a creature | 0.8 | 686

ToolScanRange = 300					-- Range the default scanner will reach | 200 | 951
ToolScanCharge = 15					-- Time it takes for another scanner pulse to be ready | 30 |
ToolScanRangeHM = 200				-- Range the default scanner will reach in Survival | 150 | 958
ToolScanChargeHM = 45				-- Time it takes for another scanner pulse to be ready in Survival | 90 |
WaypointScanRange = 7500			-- Range the waypoint scanner will reach | 5000 | 965
WaypointScanCharge = 2				-- Time it takes for another scanner pulse to be ready | 4 | 
BeaconScanRange = 7500				-- Range the beacon scanner will reach | 5000 | 972
BeaconScanTime = 4					-- Time it take to complete the scan | 8 | 
BeaconScanCharge = 2				-- Time it takes for another scanner pulse to be ready | 4 |
RadioTowerScanRange = 150000		-- Range the tower scanner will reach | 100000 |  979
RadioTowerScanTime = 4				-- Time it take to complete the scan | 8 |
RadioTowerScanCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 |
ObservatoryScanRange = 150000		-- Range the tower scanner will reach | 100000 |  986
ObservatoryScanTime = 4				-- Time it take to complete the scan | 8 |
ObservatoryScanCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 |
DistressSignalScanRange = 150000	-- Range the tower scanner will reach | 100000 |  993
DistressSignalScanTime = 4			-- Time it take to complete the scan | 8 |
DistressSignalScanCharge = 2		-- Time it takes for another scanner pulse to be ready | 4 |
DebugScanPlanetRange = 1500000		-- Range the tower scanner will reach | 1000000 |  1000
DebugScanPlanetTime = 4				-- Time it take to complete the scan | 5 |
DebugScanPlanetCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 |
DebugScanSpaceRange = 1500000		-- Range the tower scanner will reach | 1000000 |  1007
DebugScanSpaceTime = 4				-- Time it take to complete the scan | 5 |
DebugScanSpaceCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 
ShipScanRange = 15000				-- Range the tower scanner will reach | 10000 |  1014
ShipScanCharge = 2					-- Time it takes for another scanner pulse to be ready | 10 |
VisualScanTime = 4					-- Time it take to complete the scan | 8 | 1022
VisualScanCharge = 1				-- Time it takes for another scanner pulse to be ready | 4 | 

-- Binocular Zooms
ZoomNoneMaxDistance = 15	-- Max distance able to scan without zoom | 10 | 1038
ZoomFarMaxDistance = 33		-- Max distance able to scan | 25 | 1047
ZoomMidFOV = 50				-- FOV of mid zoom | 40 | 1054
ZoomMidMinDistance = 2		-- Minimum distance able to scan | 5 | 1055
ZoomMidMaxDistance = 100	-- Max distance able to scan | 70 | 1056
ZoomCloseFOV = 30			-- FOV of mid zoom | 20 | 1063
ZoomCloseMinDistance = 5	-- Minimum distance able to scan | 20 | 1064
ZoomCloseMaxDistance = 750	-- Max distance able to scan | 500 | 1065

-- Torch/Flashlight
TorchFoV = 100				-- FOV/angle at which the torch/flashlight will illuminate | 120 | 1755
InteractionTorchFoV = 100	-- FOV/angle at which the torch/flashlight will illuminate using interaction | 120 | 1760
UndergroundTorchFoV = 90	-- FOV/angle at which the torch/flashlight will illuminate while underground | 70 | 1762
TorchOffsetY = 2			-- torch/flashlight Y offset from player | -0.5 | 1767
TorchOffsetZ = -1			-- torch/flashlight Z offset from player | -0.75 | 1768


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
						{"BinocCreatureScanTime", BinocCreatureScanTime}, 
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
				{["PRECEDING_KEY_WORDS"] = {"ToolScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanRange}, {"ChargeTime", ToolScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToolScanHardMode",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanRangeHM}, {"ChargeTime", ToolScanChargeHM}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"WaypointScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", WaypointScanRange}, {"ChargeTime", WaypointScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"BeaconScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", BeaconScanRange}, {"PulseTime", BeaconScanTime}, {"ChargeTime", BeaconScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RadioTowerScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", RadioTowerScanRange}, {"PulseTime", RadioTowerScanTime}, {"ChargeTime", RadioTowerScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ObservatoryScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ObservatoryScanRange}, {"PulseTime", ObservatoryScanTime}, {"ChargeTime", ObservatoryScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DistressSignalScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DistressSignalScanRange}, {"PulseTime", DistressSignalScanTime}, {"ChargeTime", DistressSignalScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DebugScanPlanet",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DebugScanPlanetRange}, {"PulseTime", DebugScanPlanetTime}, {"ChargeTime", DebugScanPlanetCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DebugScanSpace",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DebugScanSpaceRange}, {"PulseTime", DebugScanSpaceTime}, {"ChargeTime", DebugScanSpaceCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ShipScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ShipScanRange}, {"ChargeTime", ShipScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"VisualScan",},
					["INTEGER_TO_FLOAT"] = "FORCE",
					["VALUE_CHANGE_TABLE"] = {
						{"PulseTime", VisualScanTime}, {"ChargeTime", VisualScanCharge}, 
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