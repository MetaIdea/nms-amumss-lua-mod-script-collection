Author = "Step Modifications"
ModName = "ZZZZStepNoMansSky"
ModDescription = "These changes alter various gameplay elements."
FileSource01 = "GCGAMEPLAYGLOBALS.GLOBAL.MBIN"

--## Legend ##
-- The comments are laid out in the following format: -- ParameterDescription (if available) | DefaultValue | LineNumber

--##### Variables #####
-- Miscellaneous
SurveyScanMinSpeed = 2				--  | 0.75 | 273
SurveyScanMaxSpeed = 2				--  | 0.75 | 274
SurveyMaxDistance = 0.7				--  | 400 | 280
TerrainResourceScanRange = 1800		-- Rannge to scan for resources | 1200 | 405
TerrainResourceCompassRange = 180	--  | 120 | 406
WarpsBetweenBattles = 10			-- Number of warps since last space battle before next will occur | 5 | 616
HoursBetweenBattles = 6				-- Number of hours since last space battle before next will occur | 3 | 617
NewDiscoveryDisplayTime = 3			-- Time the new discovery message will display on the screen | 2 | 646
BuildingBeamDistance = 1600			-- Distance from player the beam for building will reach | 800 | 817
ResourceCommonReducer = 10			--  | 5 |  828
ShipInteractRadius = 500			-- Distance the player can be and still interact with ship | 50 | 841

-- Refiners
RefinerProductsMadeInTime = 20			-- Speed at which products are refined | 2 | 331
RefinerSubsMadeInTime = 2500			--  | 250 | 332
RefinerProductsMadeInTimeSurvival = 10	-- Speed at which products are refined for Survival Mode | 1 | 333
RefinerSubsMadeInTimeSurvival = 1000	--  | 100 | 334

-- Scanners
BinocTimeBeforeScan = 0.25			-- Delay time before a scan starts | 0.5 | 410
BinocMinScanTime = 1.3				-- Minimum time to scan | 3.9 | 411
BinocScanTime = 1.3					-- Time it takes to scan | 3.9 | 412
BinocCreatureScanTime = 1.3			-- Time it takes to scan creatures | 3.2 | 413
CreatureMinScanTime = 0.4			-- Minimum time to scan a creature | 0.8 | 644

ToolScanRange = 300					-- Range the default scanner will reach | 200 | 860
ToolScanCharge = 15					-- Time it takes for another scanner pulse to be ready | 30 | 863
ToolScanRangeHM = 200				-- Range the default scanner will reach in Survival | 150 | 867
ToolScanChargeHM = 45				-- Time it takes for another scanner pulse to be ready in Survival | 90 | 870
WaypointScanRange = 7500			-- Range the waypoint scanner will reach | 5000 | 874
WaypointScanCharge = 2				-- Time it takes for another scanner pulse to be ready | 4 | 877
BeaconScanRange = 7500				-- Range the beacon scanner will reach | 5000 | 881
BeaconScanTime = 4					-- Time it take to complete the scan | 8 | 882
BeaconScanCharge = 2				-- Time it takes for another scanner pulse to be ready | 4 | 884
RadioTowerScanRange = 150000		-- Range the tower scanner will reach | 100000 |  874
RadioTowerScanTime = 4				-- Time it take to complete the scan | 8 | 888
RadioTowerScanCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 891
ObservatoryScanRange = 150000		-- Range the tower scanner will reach | 100000 |  895
ObservatoryScanTime = 4				-- Time it take to complete the scan | 8 | 896
ObservatoryScanCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 898
DistressSignalScanRange = 150000	-- Range the tower scanner will reach | 100000 |  902
DistressSignalScanTime = 4			-- Time it take to complete the scan | 8 | 903
DistressSignalScanCharge = 2		-- Time it takes for another scanner pulse to be ready | 4 | 905
DebugScanPlanetRange = 150000		-- Range the tower scanner will reach | 100000 |  909
DebugScanPlanetTime = 4				-- Time it take to complete the scan | 8 | 910
DebugScanPlanetCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 912
DebugScanSpaceRange = 150000		-- Range the tower scanner will reach | 100000 |  916
DebugScanSpaceTime = 4				-- Time it take to complete the scan | 8 | 917
DebugScanSpaceCharge = 2			-- Time it takes for another scanner pulse to be ready | 4 | 919
ShipScanRange = 15000				-- Range the tower scanner will reach | 10000 |  923
ShipScanCharge = 2					-- Time it takes for another scanner pulse to be ready | 10 | 926
VisualScanTime = 4					-- Time it take to complete the scan | 8 | 931
VisualScanCharge = 1				-- Time it takes for another scanner pulse to be ready | 4 | 933

-- Binocular Zooms
ZoomNoneMaxDistance = 15	-- Max distance able to scan without zoom | 10 | 947
ZoomFarMaxDistance = 33		-- Max distance able to scan | 25 | 956
ZoomMidFOV = 50				-- FOV of mid zoom | 40 | 963
ZoomMidMinDistance = 2		-- Minimum distance able to scan | 5 | 964
ZoomMidMaxDistance = 100	-- Max distance able to scan | 70 | 965
ZoomCloseFOV = 30			-- FOV of mid zoom | 20 | 972
ZoomCloseMinDistance = 5	-- Minimum distance able to scan | 20 | 973
ZoomCloseMaxDistance = 750	-- Max distance able to scan | 500 | 974

-- Torch/Flashlight
TorchFoV = 100				-- FOV/angle at which the torch/flashlight will illuminate | 120 | 1663
TorchStrength = 3			-- instensity of the torch/flashlight light | 3.5 | 1664
UndergroundTorchFoV = 90	-- FOV/angle at which the torch/flashlight will illuminate while underground | 70 | 1670
TorchOffsetY = 2			-- torch/flashlight Y offset from player | -0.5 | 1675
TorchOffsetZ = -1			-- torch/flashlight Z offset from player | -0.75 | 1676


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
						{"TorchStrength", TorchStrength}, 
						{"UndergroundTorchFoV", UndergroundTorchFoV}, 
						{"TorchOffsetY", TorchOffsetY}, 
						{"TorchOffsetZ", TorchOffsetZ}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToolScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanRange}, {"ChargeTime", ToolScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ToolScanHardMode",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ToolScanRangeHM}, {"ChargeTime", ToolScanChargeHM}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"WaypointScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", WaypointScanRange}, {"ChargeTime", WaypointScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"BeaconScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", BeaconScanRange}, {"PulseTime", BeaconScanTime}, {"ChargeTime", BeaconScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"RadioTowerScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", RadioTowerScanRange}, {"PulseTime", RadioTowerScanTime}, {"ChargeTime", RadioTowerScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ObservatoryScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ObservatoryScanRange}, {"PulseTime", ObservatoryScanTime}, {"ChargeTime", ObservatoryScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DistressSignalScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DistressSignalScanRange}, {"PulseTime", DistressSignalScanTime}, {"ChargeTime", DistressSignalScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DebugScanPlanet",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DebugScanPlanetRange}, {"PulseTime", DebugScanPlanetTime}, {"ChargeTime", DebugScanPlanetCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"DebugScanSpace",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", DebugScanSpaceRange}, {"PulseTime", DebugScanSpaceTime}, {"ChargeTime", DebugScanSpaceCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"ShipScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseRange", ShipScanRange}, {"ChargeTime", ShipScanCharge}, 
					}
				},
				{["PRECEDING_KEY_WORDS"] = {"VisualScan",},
					["VALUE_CHANGE_TABLE"] = {
						{"PulseTime", VisualScanTime}, {"ChargeTime", VisualScanCharge}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "None",},
					["VALUE_CHANGE_TABLE"] = {
						{"MaxScanDistance", ZoomNoneMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Far",},
					["VALUE_CHANGE_TABLE"] = {
						{"MaxScanDistance", ZoomFarMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Mid",},
					["VALUE_CHANGE_TABLE"] = {
						{"FoV", ZoomMidFOV}, {"MinScanDistance", ZoomMidMinDistance}, {"MaxScanDistance", ZoomMidMaxDistance}, 
					}
				},
				{["SPECIAL_KEY_WORDS"] = {"ZoomType", "Close",},
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